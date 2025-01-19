#include "locate/navigate_data_reader/navigate_data_reader.h"
#include <iostream>
#include <string>
#include <vector>
#include <sstream>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <cstring>
#include <cerrno>
#include <iomanip>

namespace LOCATE {

namespace NAVIGATE_DATA_READER {

using ll2xy         = LOCATE::UTILS::ll2xy;
using NAVIGATE_DATA_ = locate::navigate_and_imu_data_<std::allocator<void>>;


navigate_and_imu_reader::navigate_and_imu_reader(std::string serial_number) : serial_number(serial_number) {

}

// 实现 ReadLine 函数
std::string navigate_and_imu_reader::ReadLine(int serial_port) {
    
    std::string line;
    char ch;
    while (read(serial_port, &ch, 1) > 0 && ch != '\n') {
        line.push_back(ch);
    }
    return line;
}

// 实现 Split 函数
std::vector<std::string> navigate_and_imu_reader::Split(const std::string &str, char delimiter) {
    
    std::vector<std::string> tokens;
    std::string token;
    std::istringstream tokenStream(str);
    while (std::getline(tokenStream, token, delimiter)) {
        tokens.push_back(token);
    }
    return tokens;
}


int navigate_and_imu_reader::open_serial_port() {
    
    const char* serial_number = get_serial_number();
    // 打开串口
    int serial_port = open(serial_number, O_RDWR);

    if (serial_port < 0) {
        std::cerr << "Error " << errno << " opening " << "/dev/ttyUSB2" << ": " << strerror(errno) << std::endl;
        return 1;
    }

    // 配置串口
    struct termios tty;
    memset(&tty, 0, sizeof tty);
    if (tcgetattr(serial_port, &tty) != 0) {
        std::cerr << "Error " << errno << " from tcgetattr: " << strerror(errno) << std::endl;
        return 1;
    }

    cfsetospeed(&tty, B460800);
    cfsetispeed(&tty, B460800);

    tty.c_cflag |= (CLOCAL | CREAD);    // 忽略调制解调器线路状态
    tty.c_cflag &= ~CSIZE;              // 清除数据位设置
    tty.c_cflag |= CS8;                 // 8位数据
    tty.c_cflag &= ~PARENB;             // 无奇偶校验位
    tty.c_cflag &= ~CSTOPB;             // 1停止位
    tty.c_cflag &= ~CRTSCTS;            // 无硬件流控制

    tty.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);  // 非规范模式

    tty.c_iflag &= ~(IXON | IXOFF | IXANY);         // 关闭软件流控制
    tty.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL);

    tty.c_oflag &= ~OPOST;                          // 防止特殊字符处理

    tty.c_cc[VTIME] = 10;                           // 设置超时为1秒
    tty.c_cc[VMIN] = 0;

    if (tcsetattr(serial_port, TCSANOW, &tty) != 0) {
        std::cerr << "Error " << errno << " from tcsetattr: " << strerror(errno) << std::endl;
        return 1;
    }

    
    
    return serial_port;
}

// 实现 getImuData 函数
NAVIGATE_DATA_ navigate_and_imu_reader::getImuData(int serial_port, ll2xy lltoxy) {

    // 读取的时候，先清空一下缓冲区，然后再读一条出来
    resetInputBuffer(serial_port);
    ReadLine(serial_port);

    std::string line = ReadLine(serial_port);

    std::cout << "+++++++++++++++" << std::endl;

    std::cout << "line = " << line << std::endl;
    std::cout << "***************" << std::endl;
    std::vector<std::string> data = Split(line, ',');
    
    // 读取到的数据，按照顺序排序，应该是：GPSWeek,GPSTime,Heading,Pitch,Roll,gyro_x,gyro_y,gyro_z,acc_x,acc_y,acc_z,Latitude,Longitude,Altitude,Ve,Vn,Vu,V,NSV1,NSV2,Status,Age,Warning
    NAVIGATE_DATA_ imu;
    if (data.size() == 24) {

        // 转换数据并赋值
        imu.GPSWeek = std::stoi(data[1]);
        imu.GPSTime = std::stod(data[2]);
        imu.Heading_Angle = std::stod(data[3]);
        imu.Latitude = std::stod(data[12]);
        imu.Longitude = std::stod(data[13]);
        imu.Altitude = std::stod(data[14]);
        imu.Speed = std::stod(data[18]);
        imu.Status = std::stoi(data[21]);
        imu.Satellite_num = std::stoi(data[19]);
        imu.Warning = data[23];
        // 处理 imu 数据
        double x,y;
        lltoxy.llTransToxy(imu.Latitude, imu.Longitude, x, y);
        std::cout << "x = " << std::fixed << std::setprecision(8)  << x << " y = " << std::fixed << std::setprecision(8)  << y << std::endl;
        imu.UTM_x = x;
        imu.UTM_y = y;

    // 处理 imu 数据...
    } else {
        std::cerr << "读取imu数据出现错误" << std::endl;
    }

    // std::cout << "赋值完成的数据是:" ;
    // imu.print();
    // cout << imu << std::endl;
    std::cout << std::endl;
    // 打印分割后的数据
    for (const auto& str : data) {
        std::cout << str << " ";
    }

    std::cout << "------------------" << std::endl;
    
    return imu;
    
}

void navigate_and_imu_reader::close_serial_port(int serial_port) {
    
    close(serial_port);
}

void navigate_and_imu_reader::resetInputBuffer(int serial_port) {
    
    if (tcflush(serial_port, TCIFLUSH) == -1) {
        std::cerr << "Error flushing the input buffer: " << strerror(errno) << std::endl;
    }

}

void navigate_and_imu_reader::testTopic() {

    std::cout << "测试 ros 通信 " << std::endl;
    std::cout << "okkk!!!!"      << std::endl;
}

const char* navigate_and_imu_reader::get_serial_number() {
    return serial_number.data();
}

}
}
#include "locate/utils/using_csv.h"

namespace LOCATE {

namespace UTILS {

using NAVIGATE_DATA_ = locate::navigate_and_imu_data_<std::allocator<void>>;


std::vector<std::string> UsingCSV::Split(const std::string &str, char delimiter) {
    std::vector<std::string> tokens;
    std::string token;
    std::istringstream tokenStream(str);
    while (std::getline(tokenStream, token, delimiter)) {
        tokens.push_back(token);
    }
    return tokens;
}

void UsingCSV::writeCSVHead(const std::string& filename) {
    // 以追加模式打开文件，不覆盖之前写的数据
    std::ofstream file(filename, std::ios::app);

    // 写入标题行
    file << "GPSWeek,GPSTime,Heading_Angle,Latitude,Longitude,Altitude,Speed,Status,Satellite_num,UTM_x,UTM_y,Warning,\n";
}

void UsingCSV::writeCSVHeadError(const std::string& filename) {
    // 以追加模式打开文件，不覆盖之前写的数据
    std::ofstream file(filename, std::ios::app);

    file << "横向误差,纵向误差,\n";
}

void UsingCSV::writeCSV(const std::string& filename, const ImuData& d) {
    
    std::ofstream file(filename, std::ios::app);
  
    std::cout << "数据写入的时候:" << std::endl;
    d.print(); 
    // 这个地方先做一个处理，warning先pass掉，因为有太多的换行符
    file << d.GPSWeek << "," << std::fixed << std::setprecision(8) << d.GPSTime << "," << std::fixed << std::setprecision(8) << d.Heading_Angle << "," <<
    std::fixed << std::setprecision(8) <<  d.Latitude << "," << std::fixed << std::setprecision(8) <<  d.Longitude << "," << std::fixed << std::setprecision(8) <<  d.Altitude  << "," <<
    std::fixed << std::setprecision(8) <<  d.Speed << "," << d.Status << "," << d.Satellite_num << "," << 
    std::fixed << std::setprecision(8) <<  d.UTM_x << ","<< std::fixed << std::setprecision(8) << d.UTM_y << "," << "\n";
    
    std::cout << "数据写入完成" << std::endl;
    std::cout << "d.utmx == " << d.UTM_x << std::endl;
    std::cout << "d.utmy == " << d.UTM_y << std::endl;

}

void UsingCSV::writeErrorCSV(const std::string& filename,double LateralError, double HeadingError) {
    
    std::ofstream file(filename, std::ios::app);
    std::cout << "开始记录误差" << std::endl;
    file << std::fixed << std::setprecision(8) <<  LateralError << "," << std::fixed << std::setprecision(8) << HeadingError << "," << "\n";
}

std::vector<NAVIGATE_DATA_> UsingCSV::readCSV(const std::string& filename) {
    
    std::vector<NAVIGATE_DATA_> data;
    std::ifstream file(filename);
    std::string line;

    // 跳过标题行
    std::getline(file, line);

    while (std::getline(file, line)) {
        std::stringstream lineStream(line);
        std::string cell;
        NAVIGATE_DATA_ d;

        std::getline(lineStream, cell, ',');
        d.GPSWeek = std::stoi(cell);

        std::getline(lineStream, cell, ',');
        d.GPSTime = std::stod(cell);

        std::getline(lineStream, cell, ',');
        d.Heading_Angle = std::stod(cell);

        std::getline(lineStream, cell, ',');
        d.Latitude = std::stod(cell);

        std::getline(lineStream, cell, ',');
        d.Longitude = std::stod(cell);

        std::getline(lineStream, cell, ',');
        d.Altitude = std::stod(cell);

        std::getline(lineStream, cell, ',');
        d.Speed = std::stod(cell);

        std::getline(lineStream, cell, ',');
        d.Status = std::stoi(cell);

        std::getline(lineStream, cell, ',');
        d.Satellite_num = std::stoi(cell);

       
        std::getline(lineStream, cell, ',');
        d.UTM_x = std::stod(cell);

        std::getline(lineStream, cell, ',');
        d.UTM_y = std::stod(cell);


        data.push_back(d);
    }

    return data;
}

void UsingCSV::writeANgleRecordHead(const std::string& filename) {
    std::ofstream file(filename, std::ios::app);

    file << "当前实时记录角度,目标角度,\n";
}

void UsingCSV::writeAngleRecord(const std::string& filename,double current_angle, double target_angle) {
    
    std::ofstream file(filename, std::ios::app);

    std::cout << "开始记录角度误差" << std::endl;

    file << std::fixed << std::setprecision(6) <<  current_angle << "," << std::fixed << std::setprecision(6) << target_angle << "," << "\n";

}

void UsingCSV::writeRunningRecordHead(const std::string& filename) {
     
    std::ofstream file(filename, std::ios::app);

    file << "Latitude,Longitude,counts,\n";
}

void UsingCSV::writeRunningRecord(const std::string& filename, double Latitude, double Longitude, int counts) {
    
    std::ofstream file(filename, std::ios::app);

    std::cout << "开始记录追踪次数" << std::endl;

    file << std::fixed << std::setprecision(8) <<  Latitude << "," << std::fixed << std::setprecision(8) << Longitude << "," <<  counts << "," << "\n";
}

void UsingCSV::writeRunningEqualRecordHead(const std::string& filename) {
    std::ofstream file(filename, std::ios::app);

    file << "当前Lat,当前Longe,待追踪Lat,待Longe,追踪次数counts,当前航向角,横向误差,待追踪点航向角,实际utm_x,实际utm_y,待追踪utm_x,待追踪utm_y,角度,角度控制结果\n";
}

void UsingCSV::writeRunningEqualRecord(const std::string& filename, double nowlat, double nowlone, double prelat, double prelone, int counts, double angle1, double e, double preangle, double utm_x1,double utm_y1, double utm_x2, double utm_y2, double angle, int angleResult) {

    std::ofstream file(filename, std::ios::app);

    file << std::fixed << std::setprecision(8) <<  nowlat << "," << std::fixed 
    << std::setprecision(8) << nowlone << "," <<  std::fixed << std::setprecision(8) << prelat << "," << std::fixed << std::setprecision(8) << prelone << "," << counts << "," <<  std::fixed << std::setprecision(8) << angle1  << "," <<  std::fixed << std::setprecision(8) << e  << "," <<
      std::fixed << std::setprecision(8) << preangle 
       << "," <<  std::fixed << std::setprecision(8) << utm_x1
       << "," <<  std::fixed << std::setprecision(8) << utm_y1
       << "," <<  std::fixed << std::setprecision(8) << utm_x2
       << "," <<  std::fixed << std::setprecision(8) << utm_y2
      << "," <<  std::fixed << std::setprecision(8) << angle << "," << angleResult << ","<< "\n";

}

}

}
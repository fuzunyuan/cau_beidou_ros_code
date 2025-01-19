#ifndef NAVIGATE_DATA_READER_H
#define NAVIGATE_DATA_READER_H

#include <string>
#include <vector>
#include "locate/common/navigate_data.h"
#include "locate/utils/ll2xy.h"
#include "locate/navigate_and_imu_data.h"

namespace LOCATE {

namespace NAVIGATE_DATA_READER{
    class navigate_and_imu_reader {
        using NAVIGATE_DATA_ = locate::navigate_and_imu_data_<std::allocator<void>>;
        using ll2xy          = LOCATE::UTILS::ll2xy;
        
        public:

            navigate_and_imu_reader(std::string serial_number);            

            std::string ReadLine(int serial_port);
            std::vector<std::string> Split(const std::string &str, char delimiter);
            
            /**
             * @description: 打开串口
             * @return {*}
             */
            int open_serial_port();

            /**
             * @description: 获取组合导航数据
             * @return {*}
             */
            // TODO: 把Imu 这个关键字 更换为 navigate，但是后续有很多地方应用到这一块
            // TODO: 所以现在先保留
            NAVIGATE_DATA_ getImuData(int serial_port, ll2xy lltoxy);

            /**
             * @description: 关闭串口数据
             * @param {int} serial_port
             * @return {*}
             */
            void close_serial_port(int serial_port);

            
            /**
             * @description: 清空缓冲区的数据
             * @param {int} serial_port
             * @return {*}
             */
            void resetInputBuffer(int serial_port);

            void testTopic();

            const char* get_serial_number();
        private:
            std::string serial_number;
};
}
}
#endif
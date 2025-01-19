#ifndef USINGCSV_H
#define USINGCSV_H

#include <vector>
#include "locate/navigate_and_imu_data.h"
#include <fstream>
#include <sstream>
#include <string>
#include <iostream>
#include <iomanip>

namespace LOCATE {

namespace UTILS {

    class UsingCSV {
        
        using NAVIGATE_DATA_ = locate::navigate_and_imu_data_<std::allocator<void>>;
 
        public :
            
            /**
             * @description: 按照逗号分隔字符串
             * @param {string} &str
             * @param {char} delimiter
             * @return {*}
             */
            std::vector<std::string> Split(const std::string &str, char delimiter);

            /**
             * @description: 为CSV添加文件头
             * @param {string&} filename
             * @return {*}
             */
            void writeCSVHead(const std::string& filename);

            /**
             * @description: 记录误差的文件
             * @param {string&} filename
             * @return {*}
             */
            void writeCSVHeadError(const std::string& filename);

            /**
             * @description: 往CSV文件里面写入数据
             * @param {string&} filename
             * @param {ImuData&} d
             * @return {*}
             */
            void writeCSV(const std::string& filename, const NAVIGATE_DATA_& d);

            void writeErrorCSV(const std::string& filename, double LateralError, double HeadingError);


            /**
             * @description: 读取CSV文件里面的数据
             * @param {string&} filename
             * @return {*}
             */
            std::vector<NAVIGATE_DATA_> readCSV(const std::string& filename);

            void writeANgleRecordHead(const std::string& filename);

            void writeAngleRecord(const std::string& filename, double current_angle, double target_angle);

            void writeRunningRecordHead(const std::string& filename);

            void writeRunningRecord(const std::string& filename, double lat, double line, int counts);

            void writeRunningEqualRecordHead(const std::string& filename);

            void writeRunningEqualRecord(const std::string& filename, double nowlat, double nowlone, double prelat, double prelone, int counts, double angle1, double e, double preangle, double utm_x1,double utm_y1, double utm_x2, double utm_y2, double angle, int angleResult);

};
}
}

#endif
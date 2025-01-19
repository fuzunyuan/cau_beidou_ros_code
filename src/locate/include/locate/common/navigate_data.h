#ifndef NAVIGATE_DATA_H
#define NAVIGATE_DATA_H

#include <iostream>
#include <string>
#include <sstream>

namespace LOCATE{

namespace COMMON {

struct navigate_data {
    int GPSWeek;
    double GPSTime;
    double Heading_Angle;
    double Latitude;
    double Longitude;
    double Altitude;
    double Speed;
    int Status;
    int Satellite_num;
    std::string Warning;
    double UTM_x;
    double UTM_y;  

    void print() const {
    std::cout << "GPSWeek: " << GPSWeek << " "
                << "GPSTime: " << GPSTime << " "
                << "Heading_Angleing: " << Heading_Angle << " "
                << "Latitude: " << Latitude << " "
                << "Longitude: " << Longitude << " "
                << "Altitude: " << Altitude << " "
                << "Speed: " << Speed << " "
                << "Status: " << Status << " "
                << "Satellite_num: " << Satellite_num << " "
                << "Warning: " << Warning << " "
                << "UTM_x: " << UTM_x << " "
                << "UTM_y: " << UTM_y << std::endl;
    }

    std::string toString() const {
        std::ostringstream oss;
        oss << "GPSWeek: " << GPSWeek << " "
            << "GPSTime: " << GPSTime << " "
            << "Heading_Angle: " << Heading_Angle << " "
            << "Latitude: " << Latitude << " "
            << "Longitude: " << Longitude << " "
            << "Altitude: " << Altitude << " "
            << "Speed: " << Speed << " "
            << "Status: " << Status << " "
            << "Satellite_num: " << Satellite_num << " "
            << "Warning: " << Warning << " "
            << "UTM_x: " << UTM_x << " "
            << "UTM_y: " << UTM_y;
        return oss.str();
    }
};

}
}

#endif
#ifndef LL2XY_H
#define LL2XY_H

#include <iostream>
#include <proj.h>

namespace LOCATE {

namespace UTILS {

class ll2xy {
    public :
        const char* WGS84 = "+proj=longlat +datum=WGS84 +no_defs";
        // 如果是邹平，就选择50
        const char* UTM50N = "+proj=utm +zone=50 +datum=WGS84 +units=m +no_defs";
        // 烟台就选择51，注意下面的代码中也要做相应的转换
        // const char* UTM51N = "+proj=utm +zone=51 +datum=WGS84 +units=m +no_defs";


        /**
         * @description: 地理坐标转化为平面坐标
         * @param {double} lat
         * @param {double} lon
         * @param {double} &x
         * @param {double} &y
         * @return {*}
         */
        void llTransToxy(double lat, double lon, double &x, double &y);

        /**
         * @description: 平面坐标转换为地理坐标
         * @param {double} x
         * @param {double} y
         * @param {double} &lat
         * @param {double} &lon
         * @return {*}
         */
        void xyTransToll(double x, double y, double &lat, double &lon);
};
}
}
#endif
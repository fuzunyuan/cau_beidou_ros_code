#include "locate/utils/ll2xy.h"

namespace LOCATE {

namespace UTILS {

void ll2xy::llTransToxy(double lat, double lon, double &x, double &y) {
    
    PJ_CONTEXT *C = proj_context_create();
    
    PJ *P = proj_create_crs_to_crs(C, WGS84, UTM50N, NULL);
    PJ *P_for_GIS = proj_normalize_for_visualization(C, P);
    
    if (P_for_GIS == nullptr) {
        std::cerr << "Error: " << proj_errno_string(proj_errno(P)) << std::endl;
        return;
    }
    
    PJ_COORD a = proj_coord(lon, lat, 0, 0);
    PJ_COORD b = proj_trans(P_for_GIS, PJ_FWD, a);
    
    x = b.enu.e;
    y = b.enu.n;
    
    proj_destroy(P);
    proj_destroy(P_for_GIS);
    proj_context_destroy(C);

};

void ll2xy::xyTransToll(double x, double y, double &lat, double &lon) {

    PJ_CONTEXT *C = proj_context_create();
    
    PJ *P = proj_create_crs_to_crs(C, UTM50N, WGS84, NULL);
    PJ *P_for_GIS = proj_normalize_for_visualization(C, P);
    
    if (P_for_GIS == nullptr) {
        std::cerr << "Error: " << proj_errno_string(proj_errno(P)) << std::endl;
        return;
    }
    
    PJ_COORD a = proj_coord(x, y, 0, 0);
    PJ_COORD b = proj_trans(P_for_GIS, PJ_INV, a);
    
    lat = b.lp.phi;
    lon = b.lp.lam;
    
    proj_destroy(P);
    proj_destroy(P_for_GIS);
    
    proj_context_destroy(C);

};

}
}
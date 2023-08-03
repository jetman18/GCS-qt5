#ifndef MESSAGEPROCES_H
#define MESSAGEPROCES_H

#include <QObject>
#include "source/cpp/MAVLink/common/mavlink.h"

class messageProces
{
public:
    messageProces();
    ~messageProces();
    /* COMMON */
    void processMsg(const char *buffe,uint16_t len);

    /*GPS */
    double gps_get_latitude();
    double gps_get_longitude();
    int gps_get_altitude();

    /*attitude */
    float attitude_get_roll();
    float attitude_get_pitch();
    float attitude_get_yaw();

    /*mavlink msg*/
    uint8_t get_sys_id();
    uint8_t get_payload_len();
    uint8_t get_seq();
    uint8_t get_msg_id();
    uint8_t get_magic();
    uint8_t get_comp_id();

    /*mavlink status */
    //uint8_t get_sys_id();





private:
    void getGps(const mavlink_message_t *l);
    void  getAttitude(const mavlink_message_t *l);
    mavlink_gps_global_origin_t gps;
    mavlink_attitude_t attitude;
    mavlink_message_t msg;
    mavlink_status_t status;

};

#endif // MESSAGEPROCES_H

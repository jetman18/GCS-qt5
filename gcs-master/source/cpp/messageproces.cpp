#include "messageproces.h"
#include <QDebug>
messageProces::messageProces()
{
     // do something
}
messageProces::~messageProces(){}
/*********** process message*****************/

void messageProces::processMsg(const char *buffer,uint16_t len){
    if (len > 0)
    {
        for (int i = 0; i < len; ++i)
        {
            if (mavlink_parse_char(MAVLINK_COMM_0,static_cast<uint8_t>(buffer[i]),&msg, &status))
            {
                // Packet received
                switch (msg.msgid)
                {
                case MAVLINK_MSG_ID_ATTITUDE:
                    getAttitude(&msg);
                    //qDebug()<<"roll :"<<attitude_get_roll()<<"pitch :"<<attitude_get_pitch()<<"yaw :"<<attitude_get_yaw();
                    break;
                case MAVLINK_MSG_ID_GPS_GLOBAL_ORIGIN:
                    getGps(&msg);
                    //qDebug()<<"latitude :"<<QString::number(gps_get_latitude(), 'f', 7)<<"longitude :"<<QString::number(gps_get_longitude(), 'f', 7);;
                    break;
                }

            }

        }
        if(status.packet_rx_success_count == 0){
            /* receive error */
        }
    }


}

/* mavlink message*/
uint8_t messageProces::get_sys_id()
{
    return msg.sysid;
}

uint8_t messageProces::get_payload_len()
{
    return msg.len;
}

uint8_t messageProces::get_seq()
{
    return msg.seq;
}

uint8_t messageProces::get_magic()
{
    return msg.magic;
}

uint8_t messageProces::get_comp_id()
{
    return msg.compid;
}

uint8_t messageProces::get_msg_id()
{
    return msg.msgid;
}


/*GPS parse data*/
void messageProces::getGps(const mavlink_message_t *ms)
{
    mavlink_msg_gps_global_origin_decode(ms,&gps);
}


double messageProces::gps_get_latitude()
{
    return  (gps.latitude)/10000000.0;
}


double messageProces::gps_get_longitude()
{
    return  (gps.longitude)/10000000.0;
}


int messageProces::gps_get_altitude()
{
    return  (gps.altitude);  // meter
}


/// \brief giai ma goi attitude
/// \param msg
void messageProces::getAttitude(const mavlink_message_t *ms)
{
    mavlink_msg_attitude_decode(ms,&attitude);
}


float messageProces::attitude_get_yaw()
{
    return attitude.yaw;
}


float messageProces::attitude_get_roll()
{
    return attitude.roll;
}


float messageProces::attitude_get_pitch()
{
    return attitude.pitch;
}


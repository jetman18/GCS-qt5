#include "udp_link.h"
#include <QDebug>
/*--------------------------------------*/
udplink::udplink()
{
    
    newsoc = new QUdpSocket(this);
    newsoc->bind(QHostAddress::LocalHost,port);
    connect(newsoc, &QUdpSocket::readyRead, this, &udplink::readPendingDatagram);
}
udplink::~udplink()
{
    delete newsoc;
}
void udplink::readPendingDatagram()
{

    QByteArray buffer;
    buffer.resize(static_cast<int>(newsoc->pendingDatagramSize()));

    newsoc->readDatagram(buffer.data(), buffer.size(),&senderAdress, &senderPort);

    //qDebug() << "Message from: " << senderAdress.toString();
    //qDebug() << "Message port: " << senderPort;
    //qDebug() << "Message : " << buffer;

    msgProce.processMsg(buffer.data(),static_cast<uint16_t>(buffer.size()));
    /*
    qDebug() << "SYS ID: " << msgProce.get_sys_id();
    qDebug() << "len   : " << msgProce.get_payload_len();
    qDebug() << "seq   : " << msgProce.get_seq();
    qDebug() << "msg id: " << msgProce.get_msg_id();
    */
    emit rollchange(msgProce.attitude_get_roll());
    emit pitchchange(msgProce.attitude_get_pitch());
    emit yawchange(msgProce.attitude_get_yaw());
    emit newPositions(msgProce.gps_get_longitude(),msgProce.gps_get_latitude(),msgProce.gps_get_altitude());
}
void udplink::print(double a)
{

qDebug()<<a;

}

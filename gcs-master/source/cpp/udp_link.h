#ifndef UDP_LINK_H
#define UDP_LINK_H
#include <QUdpSocket>
#include <QObject>
#include "messageproces.h"

class udplink:public QObject
{
    Q_OBJECT
    //Q_PROPERTY(float roll NOTIFY rollchange)
public:
    udplink();
    ~udplink();
public slots:
    void readPendingDatagram();
    void print(double a);


signals:
    void rollchange(float rolll);
    void pitchchange(float pitchh);
    void yawchange(float yaww);
    void newPositions(double longitude,double latitude,int altitude);

private:
    void parsePack();

    QUdpSocket *newsoc;
    uint16_t port=8500;
    uint16_t senderPort;
    QHostAddress senderAdress;
    messageProces msgProce;
};

#endif // UDP_LINK_H

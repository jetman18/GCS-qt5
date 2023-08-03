import QtQuick 2.0
import QtQuick.Controls 2.2
import "../control"
Rectangle{
    id: onWindow
    anchors.bottom: parent.bottomm
    visible: true
    width: parent.width
    height: 35
    color: "#232831"
    MouseArea{}

    Buttonn{
        y:9
        x:5
        radius: 0
        text:"mission"
        anchors{
            verticalCenter: parent.verticalCenter
        }
        onClicked:{
            mapmenu.visible ^=true
            map.mapArea ^= true
            if(map.mapArea !==0){
                mapmenu.buttonSlpoint = "white"
            }
            //console.log(h.state)
        }
    }

}

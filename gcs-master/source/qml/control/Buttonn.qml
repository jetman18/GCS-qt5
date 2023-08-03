import QtQuick 2.0
import QtQuick.Controls 2.2

Rectangle{
    id:rec
    width: 80
    height: 30
    radius: 5
    property alias color: rec.color
    property alias text: textt.text
    signal clicked()
    Text {
        id:textt
        //text: qsTr("text")
        anchors.fill: parent
        fontSizeMode: Text.Fit
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                //color =""
                rec.clicked()


            }
        }

}

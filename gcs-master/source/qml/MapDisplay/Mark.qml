import QtQuick 2.0
import QtLocation 5.11

MapQuickItem {
    id: marker
    property alias text: txt.text
    //signal clicked()
    sourceItem: Rectangle {
        width: 20
        height: 20
        color: "transparent"  //xoa phong
        Image {
            anchors.fill: parent
            source: "qrc:/source/qml/icon/ellipse.svg"
            sourceSize: Qt.size(parent.width, parent.height)

        }
        Text {
            id: txt
            color: "white"
            anchors.centerIn: parent
           // horizontalAlignment:Text.AlignHCenter
          //  verticalAlignment:Text.AlignHCenter
            //x:6
            //y:5
        }
    }
    opacity: 1.0
    anchorPoint: Qt.point(sourceItem.width/2, sourceItem.height/2)
}

import QtQuick 2.0
import QtQuick.Controls 2.2

Rectangle{
    id:checkbox
    width: 20
    height: 20
    radius: 2
    color: "#A0A0A0"
    property alias color: checkbox.color
    property  alias imageVisible: img.visible
    property bool state: false
    signal click()

    MouseArea{
        anchors.fill: parent
        onClicked:{
            click()
            checkbox.state ^=true
            if(checkbox.state){
                img.visible = true
            }
            else{
                img.visible = false
            }
        }
    }
    Image {
        id: img
        height: 15
        width: 15
        x:3
        y:3
        visible: false
        source: "qrc:/source/qml/icon/check.svg"
        //anchors.fill: parent
    }


}

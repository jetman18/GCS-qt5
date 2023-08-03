import QtQuick 2.0
import "qrc:/source/qml/control"

Rectangle{
    id:waypointt
    property  alias numpointt:numPoint.text

    MouseArea{
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
    }

    property int indexx:0
    y: 2
    width: 200
    height: 200
    color: "#e1ebe1"
    radius: 10
    border.color: "#120f0f"

    Text {
        id: altitudeText
        x: 15
        y: 29
        width: 47
        height: 25
        text: qsTr("Altitude (m)")
        font.pixelSize: 12
    }

    Rectangle {
        focus:false
        id: rectangle
        x: 84
        y: 29
        width: 81
        height: 20
        color: "#ffffff"
        radius: 3

        TextInput {
            id: textInput
            x: 30
            y: 4
            width: 80
            height: 12
            text: qsTr("100")
            font.pixelSize: 12
//            Keys.onPressed:{
//                if (event.key === (Qt.Key_Enter-1)) {
//                    console.log(indexx)
//                    addAltitude(indexx,parseInt(textInput.text))

//                }

//            }

        }
    }

    Text {
        id: element
        x: 28
        y: 65
        text: qsTr("Take off")
        font.pixelSize: 12
    }
    Checkbox{
        id:takeoff
        x:120
        y: 63
        onClick:{
            waypoint.state = false
            waypoint.color="#A0A0A0"
            waypoint.imageVisible = false

            landing.state  = false
            landing.color="#A0A0A0"
            landing.imageVisible = false

        }
    }

    Text {
        id: element2
        x: 28
        y: 91
        text: qsTr("Waypoint")
        font.pixelSize: 12
    }
    Checkbox{
        id:waypoint
        x:120
        y:91
        onClick:{

            takeoff.state = false
            takeoff.color="#A0A0A0"
            takeoff.imageVisible = false

            landing.state  = false
            landing.color="#A0A0A0"
            landing.imageVisible = false
        }
    }

    Text {
        id: element3
        x: 28
        y: 120
        text: qsTr("Landing")
        font.pixelSize: 12
    }
    Checkbox{
        id:landing
        x:120
        y:120
        onClick:{
            takeoff.state = false
            takeoff.color="#A0A0A0"
            takeoff.imageVisible = false

            waypoint.state  = false
            waypoint.color="#A0A0A0"
            waypoint.imageVisible = false
        }
    }

    Rectangle {
        id: rec_left
        x: 21
        y: 158
        width: 50
        height: 25
        color: "#cbb57d"
        radius: 6

        Image {
            id: image
            height:20
            width: 20
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
            source: "qrc:/source/qml/icon/angle-left.svg"
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                if(indexx > 0){
                    addAltitude(indexx,parseInt(textInput.text))
                    indexx -=1

                }
            }

        }
    }

    Rectangle {
        id: rec_right
        x: 131
        y: 158
        width: 50
        height: 25
        color: "#cbb57d"
        radius: 6

        Image {
            id: image1
            height:20
            width: 20
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
            source: "qrc:/source/qml/icon/angle-right.svg"
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                if(indexx<couttt-1){
                    addAltitude(indexx,parseInt(textInput.text))
                    indexx +=1
                }
            }

        }
    }
    Text {
        id: textEdit
        x: 94
        y: 172
        width: 39
        height: 20
        text: (indexx+1).toString()
        font.pixelSize: 12
    }
    Text {
        id: numPoint
        x: 94
        y: 157
        text: '1'
        width: 39
        height: 20
        font.pixelSize: 12
    }

    Rectangle {
        id: hire
        x: 175
        y: 5
        width: 20
        height: 20
        color: "#c9d2e5"
        radius: 10
        border.width: 1

        Image {
            id: b
            width: 10
            height: 10
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
            source: "qrc:/source/qml/icon/cross.svg"
        }
        MouseArea{
        anchors.fill: parent
        onClicked: {
            waypointt.visible = false
            addAltitude(indexx,parseInt(textInput.text))
        }

        }
    }



}

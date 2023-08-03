import QtQuick 2.0

Rectangle{
    id: rectangle10
    color: "#2A323C"
    radius: 0
    border.color: "#00000000"
    x: 886
    y:35
    border.width: 1
    width: 300
    height: 950
    MouseArea{
        height: 600
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 53
        anchors.bottomMargin: -76
        anchors.fill: parent
    }


    Connections{
        id:udp
        target: Udplink
        onRollchange:{
            roll.text =(rolll.toFixed(1)).toString()
            blue.rotation = rolll.toFixed(1)
        }
        onPitchchange:{
            pitch.text =(pitchh.toFixed(1)).toString()
            blue.y = pitchh.toFixed(0)*2 -114
        }
        onYawchange:{
            //rotateCompass.angle = (yaww+90).toFixed(0)
            setCompass(yaww.toFixed(0))
            heading.text = (yaww.toFixed(1)).toString()
        }
        onNewPositions:{
            latitude_show.text = (latitude.toFixed(7)).toString()
            longitude_show.text = (longitude.toFixed(7)).toString()
            altitudee.text =altitude
            altitude_show.text =altitude
        }
    }

    Rectangle {

        id: rectangle
        visible: true
        x: 0
        y: 0
        width: 300
        height: 242
        color: "#ffffff"
        clip: true

        Image {
            rotation: 0
            id: blue
            x: -160
            y: -114
            width: 580
            height: 475
            opacity: 0.9
            source: "qrc:/source/qml/icon/eadi_adi_back.png"
        }
        Rectangle {
            id: rectangle2
            width: 300
            height: 23
            color: "#69626f"
            border.color: "#00000000"
        }

        Image {
            id: male
            width: 200
            height: 30
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
            source: "qrc:/source/qml/icon/unknown_mark.svg"
        }
        Image {
            id:  mark
            width: 15
            height:20
            y:40
            anchors{
                horizontalCenter: parent.horizontalCenter
            }
            source: "qrc:/source/qml/icon/compassMark.svg"
        }

        Image {
            id: compassmale
            source: "qrc:/source/qml/icon/malecompasswhite.svg"
            x:-275   //default on south
            width: 800
            height:40
        }
        Image {
            id: mm
            source: "qrc:/source/qml/icon/group.svg"
            x:42
            y: 85   //default on south
            width: 217
            height:40
        }

        Image {
            id: image3
            x: 0
            y: 221
            width: 29
            height: 19
            source: "qrc:/source/qml/icon/battery.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: element19
            x: 27
            y: 223
            color: "#ffffff"
            text: qsTr("100%")
            font.pixelSize: 16
        }

        Text {
            id: element20
            x: 206
            y: 221
            color: "#ffffff"
            text: qsTr("C")
            font.pixelSize: 16
        }

        Text {
            id: element21
            x: 222
            y: 221
            color: "#ffffff"
            text: qsTr("2500 Mah")
            font.pixelSize: 16
        }


    }

    Text {
        id: element
        x: 10
        y: 330
        width: 24
        height: 22
        color: "#ffffff"
        text: qsTr("Velocity (m/s)")
        scale: 1
        font.pixelSize: 13
    }

    Text {
        id: element1
        x: 117
        y: 330
        width: 44
        height: 28
        color: "#ffffff"
        text: qsTr("Altitude (m)")
        font.pixelSize: 13
    }

    Text {
        id: element4
        x: 22
        y: 412
        width: 24
        height: 22
        color: "#ffffff"
        text: qsTr("Bat vol (v)")
        font.pixelSize: 13
    }

    Text {
        id: element5
        x: 117
        y: 412
        width: 24
        height: 22
        color: "#ffffff"
        text: qsTr("Current (A)")
        font.pixelSize: 13
    }

    Text {
        id: elemen
        x: 38
        y: 253
        width: 24
        height: 22
        color: "#ffffff"
        text: qsTr("Roll")
        scale: 1
        font.pixelSize: 13
    }

    Text {
        id: element7
        x: 137
        y: 253
        width: 24
        height: 22
        color: "#ffffff"
        text: qsTr("Pitch")
        scale: 1
        font.pixelSize: 13
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 243
        width: 300
        height: 281
        color: "#00000000"
        border.color: "#767697"
        border.width: 1

        Rectangle {
            id: rectangle15
            x: 100
            y: 204
            width: 101
            height: 56
            color: "#00000000"
            border.color: "#00000000"

            Text {
                id: cunrrent
                x: 14
                y: 10
                color: "#78f238"
                text: qsTr("0.0")
                anchors.centerIn:parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle16
            x: 0
            y: 28
            width: 101
            height: 56
            color: "#00000000"
            border.color: "#00000000"
            Text {
                id: roll
                x: 14
                y: 10
                color: "#28e43e"
                text: qsTr("0.0")
                anchors.centerIn: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle17
            x: 0
            y: 106
            width: 101
            height: 56
            color: "#00000000"
            border.color: "#00000000"
            Text {
                id: velocity
                x: 14
                y: 10
                color: "#150df6"
                text: qsTr("0.0")
                anchors.centerIn: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle18
            x: 0
            y: 204
            width: 101
            height: 56
            color: "#00000000"
            border.color: "#00000000"
            Text {
                id: batvol
                x: 14
                y: 10
                color: "#cd1c13"
                text: qsTr("0.0")
                anchors.centerIn: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle19
            x: 199
            y: 204
            width: 101
            height: 56
            color: "#00000000"
            border.color: "#00000000"
            Text {
                id: home
                x: 14
                y: 10
                color: "#17f4bb"
                text: qsTr("0")
                anchors.centerIn: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle20
            x: 100
            y: 106
            width: 101
            height: 56
            color: "#00000000"
            border.color: "#00000000"
            Text {
                id: altitude
                x: 14
                y: 10
                color: "#ffffff"
                text: qsTr("0")
                anchors.centerIn: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle21
            x: 199
            y: 106
            width: 101
            height: 56
            color: "#00000000"
            border.color: "#00000000"
            Text {
                id: climb
                x: 14
                y: 10
                color: "#cd1c13"
                text: qsTr("0.0")
                anchors.centerIn: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle22
            x: 199
            y: 28
            width: 101
            height: 56
            color: "#00000000"
            border.color: "#00000000"
            Text {
                id: yaw
                x: 14
                y: 10
                color: "#f5f24a"
                text: qsTr("0.0")
                anchors.centerIn: parent
                font.pixelSize: 30
            }
        }

        Rectangle {
            id: rectangle23
            x: 100
            y: 28
            width: 101
            height: 56
            color: "#00000000"
            border.color: "#00000000"
            Text {
                id: pitch
                x: 14
                y: 10
                color: "#8aafed"
                text: qsTr("0.0")
                anchors.centerIn: parent
                font.pixelSize: 30
            }
        }
    }

    Rectangle {
        id: rectangle3
        x: 0
        y: 523
        width: 120
        height: 427
        color: "#00000000"
        border.color: "#767697"

        Rectangle {
            id: gps_box
            x: 19
            y: 14
            width: 78
            height: 23
            color: "#aa3636"
            //color: "#000000"
            //color: ""
            border.color: "#00000000"

            Text {
                id: element2
                x: 27
                y: 4
                color: "#ffffff"
                text: qsTr("GPS")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle5
            x: 19
            y: 43
            width: 78
            height: 23
            color: "#0c7c2b"
            border.color: "#00000000"

            Text {
                id: element3
                x: 12
                y: 4
                color: "#ffffff"
                text: qsTr("JOYSTICK")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle7
            x: 19
            y: 101
            width: 78
            height: 23
            color: "#0c7c2b"
            border.color: "#00000000"

            Text {
                id: element8
                x: 14
                y: 4
                color: "#ffffff"
                text: qsTr("CONNECT")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle8
            x: 19
            y: 130
            width: 78
            height: 23
            color: "#0c7c2b"
            border.color: "#00000000"

            Text {
                id: element9
                x: 22
                y: 4
                color: "#ffffff"
                text: qsTr("UART")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle6
            x: 19
            y: 72
            width: 78
            height: 23
            color: "#0c7c2b"
            border.color: "#00000000"

            Text {
                id: element6
                x: 27
                y: 4
                color: "#ffffff"
                text: qsTr("BAT")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle12
            x: 19
            y: 159
            width: 78
            height: 23
            color: "#0c7c2b"
            border.color: "#00000000"
            Text {
                id: element12
                x: 16
                y: 4
                color: "#ffffff"
                text: qsTr("SENSOR")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle13
            x: 19
            y: 188
            width: 78
            height: 23
            color: "#0c7c2b"
            border.color: "#00000000"
            Text {
                id: element17
                x: 22
                y: 4
                color: "#ffffff"
                text: qsTr("TEMP")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle14
            x: 19
            y: 217
            width: 78
            height: 23
            color: "#0c7c2b"
            border.color: "#00000000"
            Text {
                id: element18
                x: 22
                y: 4
                color: "#ffffff"
                text: qsTr("HOME")
                font.pixelSize: 12
            }
        }
    }


    Rectangle {
        id: rectangle11
        x: 10
        y: 780
        width: 100
        height: 100
        color: "#c6eef9"
        radius: 50
        border.color: "#1f07dd"
        border.width: 1

        Rectangle {
            id: heading_
            x: 25
            y: 25
            width: 50
            height: 50
            color: "#00000000"
            radius: 25
            rotation: 0
            border.color: "#100f0f"

            Image {
                id: image
                x: 11
                y: -22
                width: 28
                height: 19
                fillMode: Image.PreserveAspectFit
                source: "qrc:/source/qml/icon/home.svg"
            }
        }

        Image {
            id: image1
            x: 35
            y: 20
            width: 30
            height: 55
            fillMode: Image.PreserveAspectFit
            source: "qrc:/source/qml/icon/unknown_mark.svg"
        }
    }
    /*
    Timer{
        id:mytimer
        interval:  500;  running:  true;  repeat:  true
        onTriggered:{
            rectangle10.rotation +=10
        }
    }
   */

    Rectangle {
        id: latlonboxx
        x: 119
        y: 523
        width: 181
        height: 364
        color: "#00000000"
        border.width: 1
        border.color: "#767697"

        Text {
            x: 8
            y: 11
            width: 23
            height: 16
            color: "#ffffff"
            text: qsTr("Lat:")
            font.pixelSize: 13
        }

        Text {
            x: 8
            y: 33
            color: "#ffffff"
            text: qsTr("Lon:")
            font.pixelSize: 13
        }

        Text {
            id: longitude_show
            x: 45
            y: 11
            color: "#ffffff"
            text: qsTr("123.545")
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 13
        }

        Text {
            id: latitude_show
            x: 45
            y: 33
            color: "#ffffff"
            text: qsTr("12.54545")
            font.pixelSize: 13
        }

        Text {
            x: 9
            y: 55
            color: "#ffffff"
            text: qsTr("Alti:")
            font.pixelSize: 13
        }

        Text {
            id: altitude_show
            x: 45
            y: 55
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 13
        }

        Text {
            x: 8
            y: 86
            color: "#ffffff"
            text: qsTr("Temp engine:")
            font.pixelSize: 13
        }

        Text {
            x: 9
            y: 108
            color: "#ffffff"
            text: qsTr("Temp bat:")
            font.pixelSize: 13
        }

        Text {
            x: 8
            y: 130
            color: "#ffffff"
            text: qsTr("Temp esc:")
            font.pixelSize: 13
        }

        Text {
            x: 8
            y: 152
            color: "#ffffff"
            text: qsTr("Tpm engine:")
            font.pixelSize: 13
        }

        Text {
            x: 9
            y: 315
            width: 22
            height: 34
            color: "#ffffff"
            text: qsTr("vcc fc:")
            font.pixelSize: 13
        }

        Text {
            id: altitude_show1
            x: 116
            y: 86
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 13
        }

        Text {
            id: altitude_show2
            x: 116
            y: 108
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 13
        }

        Text {
            id: altitude_show3
            x: 116
            y: 130
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 13
        }

        Text {
            id: altitude_show4
            x: 116
            y: 152
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 13
        }

        Text {
            id: altitude_show5
            x: 59
            y: 315
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 13
        }

        Text {
            x: 8
            y: 192
            color: "#ffffff"
            text: qsTr("ch1:")
            font.pixelSize: 13
        }

        Text {
            x: 8
            y: 214
            color: "#ffffff"
            text: qsTr("ch2:")
            font.pixelSize: 13
        }

        Text {
            x: 8
            y: 236
            color: "#ffffff"
            text: qsTr("ch3:")
            font.pixelSize: 13
        }

        Text {
            x: 96
            y: 192
            color: "#ffffff"
            text: qsTr("ch6:")
            font.pixelSize: 13
        }

        Text {
            x: 96
            y: 214
            color: "#ffffff"
            text: qsTr("ch7:")
            font.pixelSize: 13
        }

        Text {
            x: 96
            y: 236
            color: "#ffffff"
            text: qsTr("ch8:")
            font.pixelSize: 13
        }

        Text {
            id: altitude_show6
            x: 39
            y: 192
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("1000")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }

        Text {
            id: altitude_show7
            x: 39
            y: 214
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("1000")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }

        Text {
            id: altitude_show8
            x: 39
            y: 236
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("1000")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }

        Text {
            id: altitude_show9
            x: 127
            y: 192
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("1000")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }

        Text {
            id: altitude_show10
            x: 127
            y: 214
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("1000")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }

        Text {
            id: altitude_show11
            x: 127
            y: 236
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("1000")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }

        Rectangle {
            id: rectangle9
            x: 0
            y: 180
            width: 181
            height: 184
            color: "#00000000"
            border.color: "#767697"
        }

        Text {
            x: 7
            y: 258
            color: "#ffffff"
            text: qsTr("ch4:")
            font.pixelSize: 13
        }

        Text {
            id: altitude_show12
            x: 38
            y: 258
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("1000")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }

        Text {
            x: 7
            y: 280
            color: "#ffffff"
            text: qsTr("ch5:")
            font.pixelSize: 13
        }

        Text {
            id: altitude_show13
            x: 38
            y: 280
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("1000")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 13
        }

        Text {
            id: altitude_show14
            x: 153
            y: 55
            width: 28
            height: 16
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 13
        }

        Rectangle {
            id: rectangle4
            x: 0
            y: 0
            width: 181
            height: 83
            color: "#00000000"
            border.color: "#767697"

            Text {
                x: 119
                y: 56
                color: "#ffffff"
                text: qsTr("Sat:")
                font.pixelSize: 13
            }
        }
    }

    Text {
        id: element14
        x: 215
        y: 330
        width: 24
        height: 22
        color: "#ffffff"
        text: qsTr("Climb m/s")
        font.pixelSize: 13
    }

    Text {
        id: element10
        x: 230
        y: 253
        width: 24
        height: 22
        color: "#ffffff"
        text: qsTr("Yaw")
        font.pixelSize: 13
        scale: 1
    }

    Text {
        id: element11
        x: 230
        y: 412
        width: 24
        height: 22
        color: "#ffffff"
        text: qsTr("Home")
        font.pixelSize: 13
    }

    Image {
        id: image2
        x: 244
        y: 596
        width: 25
        height: 44
        rotation: 30
        source: "qrc:/source/qml/icon/sat1.svg"
        fillMode: Image.PreserveAspectFit
    }




    function setCompass(degre){
        compassmale.x = degre*2.2 - 275
    }

}


















/*##^##
Designer {
    D{i:13;anchors_x:140;anchors_y:365}D{i:15;anchors_x:140;anchors_y:365}
}
##^##*/

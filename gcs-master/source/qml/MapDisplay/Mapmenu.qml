import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Window 2.11
import "../control"


Rectangle{
    property  alias buttonSlpoint: addpoint.color
    property  alias buttonDlpoint: deletepoin.color
    width: 300
    height: 500
    color: "#2A323C"
    MouseArea{
        anchors.rightMargin: -1
        anchors.bottomMargin: 0
        anchors.leftMargin: 1
        anchors.topMargin: 0
        anchors.fill: parent
        onClicked:text_focuss =false
    }

    Text {
        id:totalDistance
        x:8
        y:349
        text: qsTr("Total distance:")
        font.pointSize:9
        color: "white"
    }

    Text {
        id:d3map
        x:20
        y:10
        text: qsTr("3D Map")
        font.pointSize:9
        color: "white"
    }
    Text {
        id:maprotation
        x:144
        y:10
        text: qsTr("Map rotation")
        color: "white"
        font.pointSize:9
    }
    Text {
        id:pointadd
        x:20
        y:85
        text: qsTr("Mission")
        font.pointSize:9
        color: "white"
    }
    Checkbox {
        id:checkbox1
        x:95
        anchors.verticalCenterOffset: 1
        anchors.verticalCenter: d3map.verticalCenter
        onClick:{
            if(checkbox1.state ===true){
                map.tilt = 0
            }
            else{
                map.tilt = 60
            }
        }
    }
    Checkbox {
        id:checkbox2
        x:250
        anchors.verticalCenterOffset: 1
        anchors.verticalCenter:maprotation.verticalCenter
    }
    Buttonn{
        id:addpoint
        y:83
        x:85
        text:"+"
        width:40
        height:20
        radius: width/2
        color : "white"
        property bool val: false
        onClicked:{
            circlemode.color ="white"
            val ^=true
            if(val == true){
                color = "#A0E2BA"
                map.mapAreaMolde=1
            }
            else{
                color = "white"
                map.mapAreaMolde=0
            }
        }
    }
    Buttonn{
        id:deletepoin
        x:140
        y:83
        //text: "-"
        width:20
        height:20
        Image {
            height:15
            width: 15
            id: deletee
            source: "qrc:/source/qml/icon/trash.svg"
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
        }

        onClicked:{
            map.deleteall()
            recgrid.rmGrid()

        }

    }

    Buttonn {
        id: circlemode
        x: 85
        y: 43
        width: 40
        height: 20
        color: "white"
        radius: width/2
        text: "+"
        property bool vl: false
        onClicked:{
            addpoint.color ="white"
            vl ^=true
            if(vl ==true){
                color = "#A0E2BA"
                mapcircle.visible =true
                map.mapAreaMolde=2

            }
            else{
                color = "white"
                mapcircle.visible =false
                map.mapAreaMolde=0

            }
        }
    }

    Buttonn {
        id: deletcircle
        x: 140
        y: 43
        width: 20
        height: 20
        Image {
            id: deletee1
            width: 15
            height: 15
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/source/qml/icon/trash.svg"
        }
        onClicked:{

        }
    }
    Button{
        anchors.horizontalCenter: parent.horizontalCenter
        text: "load"
        anchors.horizontalCenterOffset: -12
        width:100
        height:20
        y:383
        onClicked:{
            /*
            try {
                for(var i=0;i<=getCount();i++){
                    //console.log(getLatitude(i)+'  '+getLongitude(i)+'  '+getAltitude(i))
                    cPP.writeCordinate2cpp(getLatitude(i),getLongitude(i),getAltitude(i))
                }
            }
            catch(erro){
                console.log(erro+'')
            }

        }*/
            Udplink.print(12.3453);

    }
   }

    Text {
        id: element
        x: 114
        y: 353
        width: 74
        height: 14
        color: "#ffffff"
        text: String( " "+(map.disTance/1000).toFixed(2)) + " km"
        clip: false
        font.pixelSize: 13
    }
    function indexx(){
        return
    }

    Rectangle{
        property  alias gridModel: view.model
        property  alias c: view.model
        id:recgrid
        x: 5
        height:200
        y:136
        radius: 20
        width: 290
        color: "white"
        GridView {
            id: view
            topMargin: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 8
            anchors.topMargin: 5
            anchors.fill: parent
            model: map.countt +1
            cellWidth: 35
            cellHeight: 35
            clip: true


            delegate:Rectangle {
                width: 30
                height: 30
                color: "#71D3DE"
                radius: width/2
                Text {
                    id: textt
                    text: index+1
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        g.visible = true
                        g.indexx  = index
                        //console.log(index)
                    }

                }

            }
        }
        function rmGrid(){
            map.countt=0
        }
    }

    Text {
        id: circleMode
        x: 21
        y: 43
        color: "#ffffff"
        text: qsTr("Circle")
        font.pointSize: 9
    }

    property alias textinput: textInput.text

    Text {
        x: 180
        y: 47
        color: "#ffffff"
        text: qsTr("R(m):")
        font.pointSize: 9


    }
    property alias text_focuss:textInput.focus

    Rectangle {
        id: rectangle
        x: 230
        y: 43
        width: 60
        height: 25
        color: "#ffffff"
        radius: 2

        TextInput {

            focus:false
            id: textInput
            x: 0
            y: 3
            width: 80
            height: 20
            color: "black"
            text: qsTr("100")
            horizontalAlignment: Text.AlignHCenter
            //selectByMouse: true
            cursorVisible: true
            font.pixelSize: 14
            anchors.centerIn: parent
            Keys.onPressed:{
                    if (event.key === (Qt.Key_Enter-1)) {
                        map.circleradius = text
                        console.log("ffd")
                    }
            }
        }
        MouseArea{
            onClicked:textInput.focus =true
        }
    }

    Rectangle {
        id: rectangle1
        width: 300
        height: 130
        color: "#00000000"
        border.color: "#ffffff"
    }

    Rectangle {
        id: rectangle2
        width: 300
        height: 500
        color: "#00000000"
        border.color: "#ffffff"
    }

}

import QtQuick 2.11
import QtQuick.Window 2.11
import QtLocation 5.11
import QtPositioning 5.8
import QtQuick.Controls 2.1
import "qrc:/source/qml/Helper/Helperr.js" as Helper
Rectangle {
    //root map init
    id: mapview
    visible: true
    width: 640
    height: 480
/////////////////////////////

 //ToolBal
/**************************************/
    ToolBal{
        id:topBal
        z:6
    }

    //mapmenu
/**************************************/
    Mapmenu{
        visible: true
        id:mapmenu
        anchors.top:topBal.bottom
        z:10
    }

    Waypoinparam{

        id:g
        visible: false
        x:250
        y:200
        z:11
    }
    //list store
/**************************************/
    ListModel{
        id:pre_dis
    }
    ListModel{
        id:waypoint

    }
    function getLatitude(index){
        return parseFloat(waypoint.get(index).latitude.toFixed(8))
    }
    function getLongitude(index){
        return parseFloat(waypoint.get(index).longitude.toFixed(8))
    }
    function getCount(){
        return map.countt
    }
    ListModel{
        id:altitude
    }
    function getAltitude(index){
        return parseInt(altitude.get(index).altitude)
    }
    function addAltitude(index,value){
        altitude.set(index,{"altitude":value})
    }

    function log(index){
      console.log(altitude.get(index).altitude," ",waypoint.get(index).latitude ," ",waypoint.get(index).longitude)
    }
     property var couttt: 0
    Map {
        id: map
        property alias mapArea: mapMousearea.visible
        property alias disTance: mapMousearea.distance
        property alias countt: mapMousearea.count
        property alias mapAreaMolde: mapMousearea.statess
        height: parent.height
        width: root.width
        zoomLevel: 15

        plugin:Plugin {
            id: mapPlugin
            name: "mapboxgl"
        }
        center: QtPositioning.coordinate(20.980970053465253, 105.7991202983057)
        activeMapType:  map.supportedMapTypes[5];

        MapItemView{
            model: md
            delegate: Mark{
                text: title
                coordinate: QtPositioning.coordinate(coords.latitude, coords.longitude)
            }
        }
        /*
        Timer{
            id:mytimer
            interval:  500;  running:  true;  repeat:  true
            onTriggered:{
                rotateImagePhoto.angle +=10
            }

        }
         */
        MapQuickItem {
            id: transMarker
            coordinate:QtPositioning.coordinate(20.980970053465253, 105.7991202983057)
            sourceItem: Image {
                id: transImage
                width:90
                height:90
                x:-50
                y:-50
                source: "qrc:/source/qml/icon/fixed_wing_mark.svg"
                transform: Rotation{
                    id: rotateImagePhoto
                    origin.x: transImage.width/2
                    origin.y: transImage.height/2
                    angle:60
                }
            }
        }

        /**************************************/
        Line{
            id: li
        }


        ListModel{
            id: md
        }
        /**************************************/
        MouseArea{
            id:mapMousearea
            visible: true
            anchors.fill: parent
            property int count: 0
            property var p_lati:0
            property var p_longi:0
            property var distance:0
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            property var statess: 0

            onClicked: {
                var point = Qt.point(mouse.x, mouse.y)
                var coord = map.toCoordinate(point);
                mapmenu.text_focuss = false
                if(statess==1){
                    if(mapmenu.visible){

                        if(mouse.button & Qt.LeftButton) {
                            count = md.count;
                            var xx = Helper.codToMeter(coord.latitude,coord.longitude,p_lati,p_longi,count)
                            distance += xx
                            pre_dis.append({"value":xx})
                            md.append({"coords": coord,"title":(xx/1000).toFixed(2)})

                            transMarker.coordinate=coord

                            li.addCoordinate(coord)
                            p_lati =coord.latitude
                            p_longi =coord.longitude

                            waypoint.append({"latitude":coord.latitude,"longitude":coord.longitude})
                            altitude.append({"altitude":0})
                            //console.log(coord.get(count).coords.latitude)
                            couttt = altitude.count

                        }
                        // delete point
                        else if(mouse.button & Qt.RightButton){
                            if(mapMousearea.count>=0){
                                md.remove(count)
                                waypoint.remove(count)
                                altitude.remove(count)
                                li.removeCoordinate(count)
                                distance -= pre_dis.get(count).value
                                pre_dis.remove(count)
                                couttt = altitude.count
                                count -=1
                            }
                        }
                        g.numpointt = (count+1).toString()
                    }
                }
                else if(statess==2){
                        mapcircle.center = coord
                        mapcircle.radius = parseInt(mapmenu.textinput)

                }

            }

        }
        property alias circleradius: mapcircle.radius
        MapCircle {
            id:mapcircle
            visible: true
            color: "yellow"
            border.width:10
            opacity:0.2
            border.color: "black"
        }

        //function delete all point
        function deleteall(){
             couttt = 0
            if(mapMousearea.count<1)return
            for(var i=0;i<=mapMousearea.count;i++){
                md.remove(0)
                altitude.remove(0)
                waypoint.remove(0)
                li.removeCoordinate(0)
                g.numpointt ='1'

            }
            disTance=0
        }
        //////end function


    }
}



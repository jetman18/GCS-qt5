
import QtQuick 2.11
import QtQuick.Window 2.11
import QtLocation 5.11
import QtPositioning 5.8
import QtQuick.Controls 2.1
import "./source/qml/MapDisplay"
ApplicationWindow {
    id: root
    visible: true
    width:  1200
    height: 900
    minimumHeight: 900
    minimumWidth: 1200
    title: "GCS"
    Mapview{
        id:mapp
        anchors.fill: parent
    }

}

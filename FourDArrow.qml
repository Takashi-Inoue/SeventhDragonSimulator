import QtQuick
import QtQuick.Shapes 1.8
import QtQuick.Studio.Components

Item {
    id: root
    property color color: "#aaaaaa"
    property bool arrowLeft: true
    property bool arrowRight: true
    property bool arrowUp: true
    property bool arrowDown: true
    property bool crossLine: true
    width: 50
    height: 50

    TriangleItem {
        id: triUp
        visible: root.arrowUp
        width: 16
        height: 12
        radius: 1
        anchors.top: parent.top
        anchors.topMargin: 0
        strokeStyle: 0
        anchors.horizontalCenter: parent.horizontalCenter
        fillColor: root.color
    }

    TriangleItem {
        id: triDown
        visible: root.arrowDown
        width: 16
        height: 12
        radius: 1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        rotation: 180
        anchors.horizontalCenter: parent.horizontalCenter
        fillColor: root.color
        strokeWidth: -1
    }

    TriangleItem {
        id: triLeft
        visible: root.arrowLeft
        width: 16
        height: 12
        radius: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: -2
        rotation: -90
        fillColor: root.color
        strokeWidth: -1
    }

    TriangleItem {
        id: triRight
        visible: root.arrowRight
        width: 16
        height: 12
        radius: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: -2
        strokeStyle: 0
        rotation: 90
        fillColor: root.color
    }

    Shape {
        visible: root.arrowUp || root.arrowDown
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.horizontalCenter: triUp.horizontalCenter
        ShapePath {
            strokeWidth: 2
            strokeColor: root.color
            startX: 1
            startY: root.arrowUp ? 8 : (root.crossLine ? 0 : root.height / 2)
            PathLine {
                x: 1
                y: root.arrowDown ? root.height - 8 : (root.crossLine ? root.height : root.height / 2)
            }
        }
    }

    Shape {
        visible: root.arrowLeft || root.arrowRight
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.verticalCenter: triLeft.verticalCenter
        ShapePath {
            strokeWidth: 2
            strokeColor: root.color
            startX: root.arrowLeft ? 8 : (root.crossLine ? 0 : root.width / 2)
            startY: 1
            PathLine {
                x: root.arrowRight ? root.width - 8 : (root.crossLine ? root.width : root.width / 2)
                y: 1
            }
        }
    }
}

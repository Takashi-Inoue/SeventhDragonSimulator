import QtQuick
import QtQuick.Shapes 1.8

Shape {
    id: root
    property color color: "#aaaaaa"
    property alias strokeWidth: line.strokeWidth

    ShapePath {
        id: line
        strokeWidth: 2
        strokeColor: root.color
        startX: 0
        startY: 0
        PathLine {
            x: root.width
            y: 0
        }
    }
}

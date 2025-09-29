import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.9

TabButton {
    id: root

    property bool indicatorVisible: false

    contentItem : Item {
        anchors.fill: parent

        Text {
            anchors.fill: parent
            text: root.text
            font: root.font
            color: root.checked ? root.palette.windowText : root.palette.brightText
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Shape {
            visible: root.indicatorVisible
            preferredRendererType: Shape.CurveRenderer

            ShapePath {
                strokeWidth: 0

                fillGradient: RadialGradient {
                    centerX: 50; centerY: 50
                    centerRadius: 100
                    focalX: centerX; focalY: centerY
                    GradientStop {
                        position: 0
                        color: root.checked ? "#668874" : "#eefff4"
                    }
                    GradientStop {
                        position: 1
                        color: root.checked ? "#118811" : "#88ff88"
                    }
                }

                PathAngleArc {
                    centerX: 12
                    centerY: 21
                    radiusX: 4
                    radiusY: 4
                    startAngle: 0
                    sweepAngle: 360
                }
            }
        }
    }
}

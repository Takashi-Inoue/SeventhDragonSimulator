import QtQuick
import QtQuick.Controls

Item {
    id: root
    height: 32

    property color bgColor
    property color textColor
    property font font
    property string text
    property alias border: backgroundRect.border
    property alias radius: backgroundRect.radius

     opacity: (enabled ? 1.0 : 0.3)

    Label {
        anchors.fill: parent
        color: root.textColor
        font: root.font
        text: root.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        background: Rectangle {
            id: backgroundRect
            anchors.fill: parent
            color: root.bgColor
        }
    }
}

import QtQuick
import QtQuick.Controls

AbstractButton {
    id: root
    property bool isOn: false
    property int value: 0
    property color borderColor: "#14598b"
    property color onColor: "#3f9fe6"
    property color offColor: "transparent"

    Rectangle {
        id: buttonRect
        radius: 3
        border.color: root.borderColor
        anchors.fill: parent
        color: root.isOn ? root.onColor : root.offColor
    }
    onClicked: isOn = true
}

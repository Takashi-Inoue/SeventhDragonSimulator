import QtQuick
import QtQuick.Controls

Button {
    id: root

    height: 24
    width: 24

    checkable: true

    text: "..."

    hoverEnabled: true
    ToolTip.text: qsTr("Open menu")
    ToolTip.delay: 500
    ToolTip.timeout: 5000
    ToolTip.visible: hovered && !(root.down || root.checked)

    background: Rectangle {
        color: root.down || root.checked ? root.palette.mid : "transparent"
    }

    required property Menu menu

    function onMenuVisibleChanged() {
        root.checked = root.menu.visible
    }

    onCheckedChanged: root.menu.visible = root.checked

    Component.onCompleted: {
        root.menu.visibleChanged.connect(root.onMenuVisibleChanged)
    }
}

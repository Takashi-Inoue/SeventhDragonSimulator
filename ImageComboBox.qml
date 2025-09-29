pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls

ComboBox {
    id: comboxIcons
    height: 32
    width: 32
    spacing: 1
    delegate: ItemDelegate {
        id: iconsDelegate
        required property int index
        width: 32
        height: 32
        padding: 0
        contentItem: Image {
            source: comboxIcons.textAt(iconsDelegate.index)
            width: 32
            height: 32
        }
    }
    contentItem: Image {
        source: comboxIcons.displayText
        width: 32
        height: 32
    }
    indicator: Item {
        visible: false
    }
}

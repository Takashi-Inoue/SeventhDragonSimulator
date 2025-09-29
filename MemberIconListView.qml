pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls
import SeventhDragonSimulator

ListView {
    id: root

    property Party party
    property int sideLength: 20
    property bool enableCaracterActivation: true

    signal clicked()

    model: root.party
    spacing: 2

    delegate: ItemDelegate {
        id: delegate
        required property int index
        required property int classType
        required property int characterNumber
        required property string name

        width: root.sideLength
        height: root.sideLength
        padding: 0

        contentItem: Image {
            source: CharacterIcons.sources[delegate.classType][delegate.characterNumber]
            width: root.sideLength
            height: root.sideLength

            Rectangle {
                anchors.fill: parent
                visible: !root.enabled
                color: "#66000000"
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                ToolTip.text: delegate.name
                ToolTip.delay: 500
                ToolTip.timeout: 5000
                ToolTip.visible: containsMouse
                onClicked: delegate.clicked()
            }
        }

        onClicked: {
            root.currentIndex = delegate.index;
            root.clicked();

            if (root.enableCaracterActivation)
                root.party.activateCharacter(delegate.index);
        }
    }
}

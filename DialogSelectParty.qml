import QtQuick
import QtQuick.Controls
import SeventhDragonSimulator

Dialog {
    id: root
    anchors.centerIn: Overlay.overlay
    title: qsTr("7th Dragon Skill Simulator - Select Party")
    standardButtons: Dialog.Ok | Dialog.Cancel
    implicitWidth: 350
    implicitHeight: 500
    modal: true

    property PartyList partyList
    property Party selectedParty: null

    CheckBox {
        id: checkboxNewParty
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 40
        checked: false
        text: qsTr("New Party")
        font.pointSize: 12
        indicator.implicitWidth: 20
        indicator.implicitHeight: 20
        background: Rectangle {
            color: "#EEEEEE"
            border.color: "#555555"
            border.width: 1
            radius: 4
        }

        onCheckedChanged: root.standardButton(Dialog.Ok).enabled
                          = checked || partyListView.currentIndex != -1
    }

    Frame {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: checkboxNewParty.bottom
        anchors.bottom: parent.bottom
        anchors.topMargin: 8
        padding: 1
        rightPadding: 0
        background: Rectangle {
            color: "transparent"
            border.color: "#111111"
        }

        PartyListView {
            id: partyListView
            anchors.fill: parent
            enabled: !checkboxNewParty.checked
            partyList: root.partyList
            headerVisible: false
            menuButtonVisible: false
            enableCaracterActivation: false

            onCurrentIndexChanged: {
                root.standardButton(Dialog.Ok).enabled = currentIndex != -1

                if (currentIndex != -1)
                    root.selectedParty = root.partyList.parties[currentIndex]
            }
        }
    }

    Component.onCompleted: root.standardButton(Dialog.Ok).enabled = false
}

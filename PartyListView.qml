pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import QtQuick.Studio.Components
import SeventhDragonSimulator

ListView {
    id: root
    width: 300
    height: 500
    spacing: 1

    required property PartyList partyList
    property color buttonHoveredColor: "#3333FF"
    property bool headerVisible: true
    property bool menuButtonVisible: true
    property bool enableCaracterActivation: true

    signal addButtonClicked()
    signal deleteButtonClicked()
    signal partyAdded(newParty: Party)
    signal partyRemoved(index: int)

    QtObject {
        id: internal
        property int headerHeight: 66
    }

    header: Rectangle {
        id: headerRect
        height: root.headerVisible ? internal.headerHeight : 0
        anchors.left: parent.left
        anchors.right: parent.right
        visible: root.headerVisible
        Rectangle {
            id: headerCharRect
            anchors.left: headerRect.left
            anchors.right: headerRect.right
            anchors.top: headerRect.top
            height: 32
            color: palette.accent
            radius: 0

            Text {
                text: qsTr("Parties")
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
                font.bold: true
                color: palette.highlightedText
            }
        }
        Button {
            id: buttonAdd
            height: 26

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: headerCharRect.bottom
            anchors.topMargin: 4

            font.pointSize: 12
            font.bold: true

            hoverEnabled: true
            ToolTip.text: qsTr("Add new party")
            ToolTip.delay: 500
            ToolTip.timeout: 5000
            ToolTip.visible: hovered

            flat: true
            text: "+"
            contentItem: Text {
                text: buttonAdd.text
                font: buttonAdd.font
                opacity: enabled ? 1.0 : 0.3
                color: enabled && buttonAdd.hovered ? root.buttonHoveredColor : "black"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            onClicked: {
                root.addButtonClicked();
                root.partyAdded(root.partyList.createNewParty());
                root.currentIndex = root.count - 1;
            }
        }
    }

    model: partyList

    delegate: ItemDelegate {
        id: partyListDelegate
        required property int index
        required property string name
        required property color bgColor
        required property string informativeName

        width: root.width - 1
        height: 80
        onClicked: root.currentIndex = index
        onDoubleClicked: state = "editing"
        padding: 4

        contentItem: Item {
            anchors.fill: parent
            Text {
                id: delegateText
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                height: 40
                text: partyListDelegate.informativeName
                elide: Text.ElideRight
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 13
                color: (partyListDelegate.bgColor.hslLightness < 0.5) ? "white" : "black"
                MouseArea {
                    id: mouseAreaText
                    anchors.fill: parent
                    hoverEnabled: true
                    ToolTip.text: delegateText.text
                    ToolTip.delay: 500
                    ToolTip.timeout: 5000
                    ToolTip.visible: containsMouse && delegateText.truncated
                    onClicked: root.currentIndex = partyListDelegate.index
                    onDoubleClicked: partyListDelegate.state = "editing"
                }
            }

            MemberIconListView {
                id: iconListView
                sideLength: 24
                anchors.left: root.menuButtonVisible ? buttonPartyMenu.right : parent.left
                anchors.top: delegateText.bottom
                anchors.leftMargin: 8
                width: Math.min((sideLength + spacing) * count - spacing, delegateText.width - x - 8)
                height: 40
                orientation: ListView.Horizontal

                enableCaracterActivation: root.enableCaracterActivation

                onClicked: root.currentIndex = partyListDelegate.index
                Component.onCompleted: {
                    iconListView.party = root.partyList.parties[partyListDelegate.index];
                }
            }

            Button {
                id: buttonPartyMenu
                width: 26
                height: 26
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 4
                hoverEnabled: true
                ToolTip.text: qsTr("Open menu")
                ToolTip.delay: 500
                ToolTip.timeout: 5000
                ToolTip.visible: hovered && !contextMenu.visible
                visible: root.menuButtonVisible && (partyListDelegate.index == root.currentIndex)

                function createFillColor() {
                    if (partyListDelegate.bgColor.hslLightness < 0.5)
                        return buttonPartyMenu.down ? "#33FFFFFF" : "#55FFFFFF";
                    else
                        return buttonPartyMenu.down ? "#55000000" : "#33000000";
                }
                function createBorderColor() {
                    if (partyListDelegate.bgColor.hslLightness < 0.5)
                        return buttonPartyMenu.down ? "#33CCCCCC" : "#55CCCCCC";
                    else
                        return buttonPartyMenu.down ? "#55333333" : "#33333333";
                }
                function createTriangleColor() {
                    if (partyListDelegate.bgColor.hslLightness < 0.5)
                        return buttonPartyMenu.down ? "#CC000000" : "#AA000000";
                    else
                        return buttonPartyMenu.down ? "#A2FFFFFF" : "#C4FFFFFF";
                }

                background: Rectangle {
                    color: buttonPartyMenu.createFillColor()
                    border.width: 1
                    border.color: buttonPartyMenu.createBorderColor()
                    radius: 13
                    Rectangle {
                        width: 18
                        height: 18
                        x: 4
                        y: 4
                        color: buttonPartyMenu.createFillColor()
                        border.width: 0
                        radius: 9
                        TriangleItem {
                            width: 12
                            height: 10
                            x: 3
                            y: 5
                            rotation: 180
                            fillColor: buttonPartyMenu.createTriangleColor()
                            strokeWidth: 0
                            radius: 0
                        }
                    }
                }

                onClicked: {
                    contextMenu.popup(this);
                }
            }
        }

        background: Rectangle {
            id: partyRect
            implicitWidth: 250
            implicitHeight: 40
            opacity: enabled ? 1 : 0.3
            radius: 0
            color: partyListDelegate.bgColor

            function createBorderColor() {
                var lightness = (partyRect.color.hslLightness < 0.5) ? 0.7
                                                                     : 0.3;
                return Qt.hsla(partyRect.color.hslHue, partyRect.color.hslSaturation, lightness);
            }

            border.color: createBorderColor()
            border.width: root.currentIndex == partyListDelegate.index ? 2 : 0
        }

        TextField {
            id: editor
            anchors.fill: parent
            visible: false
            property string oldText: ""
            onAccepted: {
                parent.state = "";
            }
            Keys.onEscapePressed: {
                text = oldText;
                parent.state = "";
            }
            onVisibleChanged: {
                if (visible) {
                    oldText = parent.name;
                    text = oldText;
                    root.interactive = false;
                    forceActiveFocus();
                } else {
                    root.interactive = true;
                    oldText = "";
                }
            }
            onActiveFocusChanged: {
                if (activeFocus) {
                    selectAll();
                } else {
                    var indexModel = root.partyList.index(parent.index, 0);

                    root.partyList.setData(indexModel, text, PartyList.NameRole);
                    parent.state = "";
                }
            }
        }
        states: [
            State {
                name: "editing"
                PropertyChanges {
                    editor.visible: true
                    editor.focus: true
                }
                PropertyChanges {
                    editor.parent.focus: false
                    restoreEntryValues: false
                }
                PropertyChanges {
                    delegateText.text: ""
                }
            }
        ]
    }

    Menu {
        id: contextMenu
        MenuItem {
            icon.source: "images/colors.svg"
            icon.color: "transparent"
            icon.width: 20
            icon.height: 20
            text: qsTr("Background &color")

            onClicked: {
                var indexPartiesModel = root.model.index(root.currentIndex, 0);

                colorDialog.selectedColor = root.model.data(indexPartiesModel, PartyList.BackgroundRole);
                colorDialog.open();
            }
        }
        MenuSeparator { padding: 0}
        MenuItem {
            icon.source: "images/delete_file.svg"
            icon.color: "transparent"
            icon.width: 20
            icon.height: 20
            text: qsTr("&Delete this Party")
            enabled: root.count > 1

            onClicked: {
                dialogDeleteParty.text = qsTr("Do you want to delete this party?\n\n")
                        + root.partyList.parties[root.currentIndex].name;
                dialogDeleteParty.open();
            }
        }
    }

    Dialog {
        id: dialogDeleteParty
        anchors.centerIn: Overlay.overlay
        title: qsTr("7th Dragon Skill Simulator - Delete party")
        standardButtons: Dialog.Ok | Dialog.Cancel
        implicitWidth: 350

        property alias text: deleteDialogText.text

        Label {
            id: deleteDialogText
            anchors.left: parent.left
            anchors.right: parent.right
            font.pointSize: 12
            horizontalAlignment: Text.AlignHCenter
        }

        onAccepted: {
            root.partyRemoved(root.currentIndex);
            root.partyList.removeRow(root.currentIndex);
        }
    }

    ColorDialog {
        id: colorDialog
        options: ColorDialog.ShowAlphaChannel
        title: qsTr("7th Dragon Skill Simulator - Select color")

        onAccepted: {
            var index = root.partyList.index(root.currentIndex, 0);

            root.partyList.setData(index, colorDialog.selectedColor, PartyList.BackgroundRole);
        }
    }
}

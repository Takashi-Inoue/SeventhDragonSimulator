import QtQuick
import QtQuick.Controls
import SeventhDragonSimulator

Window {
    id: mainWindow
    width: 1120
    height: 670
    visible: true
    title: qsTr("7th Dragon Skill Simulator") + (partyList.isEdited ? " *" : "");

    Application {
        id: application
    }

    PartyList {
        id: partyList

        onLoadFinished: {
            var countParties = partyList.rowCount();

            if (countParties === 0) {
                var party = partyList.createNewParty();

                party.characterActivated.connect(mainWindow.onCharacterActivated);
                party.characterCountChanged.connect(formParty.onCharacterCountChanged);
            } else {
                for (var i = 0; i < countParties; ++i) {
                    partyList.parties[i].characterActivated.connect(mainWindow.onCharacterActivated);
                    partyList.parties[i].characterCountChanged.connect(formParty.onCharacterCountChanged);
                }
            }

            partyListView.currentIndex = 0
        }

        onNewPartyAdded: (newParty) => {
            newParty.characterActivated.connect(mainWindow.onCharacterActivated);
            newParty.characterCountChanged.connect(formParty.onCharacterCountChanged);
        }
    }

    SplitView {
        id: splitView
        anchors.fill: parent;

        Item {
            SplitView.preferredWidth: 250
            PartyListView {
                id: partyListView

                anchors {
                    left: parent.left
                    right: parent.right
                    top: parent.top
                    bottom: buttonMainMenu.top
                }
                clip: true
                partyList: partyList

                onPartyRemoved: (index) => {
                    // stackLayoutFormPartyies.itemAt(index).destroy();
                }

                onCurrentIndexChanged: {
                    if (currentIndex == -1) {
                        formParty.party = null;
                    } else {
                        formParty.storeSelection();
                        formParty.party = partyList.parties[currentIndex];
                        formParty.restoreSelection();
                    }
                }
            }

            HLineItem {
                width: partyListView.width

                anchors {
                    left: parent.left
                    top: partyListView.bottom
                }

                color: "#888888"
                strokeWidth: 1
            }

            MenuButton {
                id: buttonMainMenu

                width: partyListView.width

                anchors {
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                }

                menu: Menu {
                    id: mainMenu
                    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
                    width: partyListView.width
                    x: 0
                    y: -mainMenu.height

                    Action {
                        icon.source: "images/reload.svg"
                        text: qsTr("&Reload save data")

                        onTriggered: dialogReload.open()
                    }

                    MenuSeparator { padding: 0 }

                    Action {
                        id: saveAction
                        text: qsTr("&Save")
                        icon.source: "images/floppy.svg"
                        shortcut: "Ctrl + S"
                        onTriggered: partyList.save()
                    }

                    MenuSeparator { padding: 0 }

                    Action {
                        icon.source: "images/x.svg"
                        text: qsTr("&Quit")

                        onTriggered: mainWindow.close();
                    }

                    delegate: MenuItemDelegate {
                        id: menuDelegate
                        iconSide: 20
                    }
                }
            }
        }

        FormParty {
            id: formParty

            SplitView.preferredWidth: 870

            onCopyToAnotherPartyClicked: (characterID) => {
                dialogDuplicateCharacter.sourceParty = formParty.party;
                dialogDuplicateCharacter.characterID = characterID;
                dialogDuplicateCharacter.open();
            }
        }
    }

    Dialog {
        id: dialogReload
        anchors.centerIn: Overlay.overlay
        title: qsTr("7th Dragon Skill Simulator - Reload save data")
        standardButtons: Dialog.Ok | Dialog.Cancel
        implicitWidth: 350

        Label {
            id: reloadDialogText
            anchors.left: parent.left
            anchors.right: parent.right
            font.pointSize: 12
            horizontalAlignment: Text.AlignHCenter
            text: qsTr("Do you want to reload save data?\n\nCurrent changes are discarded.")
        }

        onAccepted: {
            partyList.load();
        }
    }

    Dialog {
        id: dialogSave
        anchors.centerIn: Overlay.overlay
        title: qsTr("7th Dragon Skill Simulator - Data has been changed.")
        standardButtons: Dialog.Save | Dialog.Discard | Dialog.Cancel
        implicitWidth: 350
        modal: true

        Label {
            id: saveDialogText
            anchors.left: parent.left
            anchors.right: parent.right
            font.pointSize: 12
            horizontalAlignment: Text.AlignHCenter
            text: qsTr("Do you want to save data?\n\nData has been changed.")
        }

        onAccepted: {
            partyList.save();
            mainWindow.close();
        }
        onDiscarded: {
            done(Dialog.DestructiveRole);
            mainWindow.close();
        }
    }

    DialogDuplicateCharacter {
        id: dialogDuplicateCharacter
        partyList: partyList
    }

    function onCharacterActivated(partyID: string, characterID: string) {
        print("Main::onCharacterActivated: " + partyID + characterID)

        var party = partyList.partyFromID(partyID);

        if (formParty.party !== party) {
            formParty.storeSelection();
            formParty.party = party;
        }

        formParty.activateCharacter(characterID);
    }

    onClosing: (close) => {
        if (partyList.isEdited && dialogSave.result != Dialog.DestructiveRole) {
            close.accepted = false;
            dialogSave.open();
        } else {
            windowGeometryState.save();
        }
    }

    Component.onCompleted: {
        windowGeometryState.load();
        partyList.load();
    }

    WindowGeometryState {
        id: windowGeometryState
        iniFileQUrl: application.settingIniPath()
        window: mainWindow
        splitView: splitView
    }
}


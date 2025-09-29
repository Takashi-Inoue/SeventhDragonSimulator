import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import SeventhDragonSimulator

Item {
    id: root

    QtObject {
        id: constants
        readonly property string keyFilterIndex: "filterIndex"
    }

    property Party party

    signal copyToAnotherPartyClicked(string characterID)

    function restoreSelection() {
        if (root.party != null)
            classTabBar.currentIndex = selectionState.filterIndex(root.party.partyID);

        memberListView.restoreSelection();
    }

    function storeSelection() {
        if (root.party != null)
            selectionState.updateFilterIndex(root.party.partyID, classTabBar.currentIndex);

        memberListView.storeSelection();
    }

    function updateSkillFormOnClass () {
        if (classTabBar.currentIndex <= Character.Princess) {
            stackLayout.currentIndex = classTabBar.currentIndex;
        } else {
            if (memberListView.currentCharacter !== null)
                stackLayout.currentIndex = memberListView.currentCharacter.classType;
        }
    }

    function activateCharacter(characterID: string) {
        var character = party.characterFromID(characterID);

        classTabBar.currentIndex = Character.Princess + 1;
        memberListView.selectCharacterFromID(characterID);
        classTabBar.currentIndex = character.classType;
    }

    function onCharacterCountChanged() {
        for (var i = 0; i < classTabBar.count; ++i) {
            (classTabBar.itemAt(i) as ClassTabButton).indicatorVisible = root.party.hasClass(i);
        }
    }

    Component.onCompleted: {
        classTabBar.currentIndex = Character.Princess + 1;
        memberListView.selectFirstCharacter();
    }

    SelectionState {
        id: selectionState
    }

    TabBar {
        id: classTabBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 42

        ClassTabButton {
            text: qsTr("Fighter")
            indicatorVisible: root.party.hasClass(Character.Fighter)
        }
        ClassTabButton {
            text: qsTr("Rogue")
            indicatorVisible: root.party.hasClass(Character.Rogue)
        }
        ClassTabButton {
            text: qsTr("Samurai")
            indicatorVisible: root.party.hasClass(Character.Samurai)
        }
        ClassTabButton {
            text: qsTr("Knight")
            indicatorVisible: root.party.hasClass(Character.Knight)
        }
        ClassTabButton {
            text: qsTr("Mage")
            indicatorVisible: root.party.hasClass(Character.Mage)
        }
        ClassTabButton {
            text: qsTr("Healer")
            indicatorVisible: root.party.hasClass(Character.Healer)
        }
        ClassTabButton {
            text: qsTr("Princess")
            indicatorVisible: root.party.hasClass(Character.Princess)
        }
        ClassTabButton {
            text: qsTr("All")
        }

        onCurrentIndexChanged: {
            root.updateSkillFormOnClass();
        }
    }

    PartyMemberListView {
        id: memberListView
        height: 40
        anchors.left: parent.left
        anchors.right: buttonAdd.left
        anchors.top: classTabBar.bottom
        anchors.rightMargin: 4
        party: root.party
        classTypeForFilter: classTabBar.currentIndex

        onCurrentCharacterChanged: {
            root.updateSkillFormOnClass();

            if (currentCharacter === null)
                return;

            stackLayout.itemAt(currentCharacter.classType).character = currentCharacter;
            memoArea.text = currentCharacter.memo
        }
    }

    MenuButton {
        id: buttonAdd
        width: 80
        height: 40
        anchors.right: buttonCharacterMenu.left
        anchors.top: classTabBar.bottom
        anchors.rightMargin: 2
        text: "+"

        ToolTip.text: qsTr("Add new character")
        font.pointSize: 12
        font.bold: true

        background: Rectangle {
            color: buttonAdd.down || buttonAdd.checked ? buttonAdd.palette.mid
                                                       : buttonAdd.palette.button
        }

        menu: Menu {
            id: classMenu
            x: buttonAdd.x
            y: buttonAdd.height
            width: 150
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

            function createSourceText(classLetter) {
                var num = Math.floor(Math.random() * 4) + 1;

                if (Math.random() < 0.5)
                    classLetter += 'c';

                return "images/" + classLetter + num + ".png";
            }

            function iconSourceToCharacterNumber(iconSourceText) {
                iconSourceText = iconSourceText.slice(8, -4)

                return iconSourceText.length === 1 ? (parseInt(iconSourceText) - 1)
                                                   : (parseInt(iconSourceText.slice(-1)) + 3)
            }

            function updateIcons() {
                actionAddFighter.icon.source = classMenu.createSourceText('f');
                actionAddRogue.icon.source = classMenu.createSourceText('r');
                actionAddSamurai.icon.source = classMenu.createSourceText('s');
                actionAddKnight.icon.source = classMenu.createSourceText('k');
                actionAddMage.icon.source = classMenu.createSourceText('m');
                actionAddHealer.icon.source = classMenu.createSourceText('h');
                actionAddPrincess.icon.source = classMenu.createSourceText('p');
            }

            onVisibleChanged: {
                if (visible)
                    updateIcons();
            }

            Action {
                id: actionAddFighter
                text: qsTr("&Fighter")
                onTriggered: {
                    var newCharacter = root.party.createNewCharacter(Character.Fighter);
                    newCharacter.characterNumber
                            = classMenu.iconSourceToCharacterNumber(icon.source.toString());
                }
            }

            Action {
                id: actionAddRogue
                text: qsTr("&Rogue")
                onTriggered: {
                    var newCharacter = root.party.createNewCharacter(Character.Rogue);
                    newCharacter.characterNumber
                            = classMenu.iconSourceToCharacterNumber(icon.source.toString());
                }
            }

            Action {
                id: actionAddSamurai
                text: qsTr("&Samurai")
                onTriggered: {
                    var newCharacter = root.party.createNewCharacter(Character.Samurai);
                    newCharacter.characterNumber
                            = classMenu.iconSourceToCharacterNumber(icon.source.toString());
                }
            }

            Action {
                id: actionAddKnight
                text: qsTr("&Knight")
                onTriggered: {
                    var newCharacter = root.party.createNewCharacter(Character.Knight);
                    newCharacter.characterNumber
                            = classMenu.iconSourceToCharacterNumber(icon.source.toString());
                }
            }

            Action {
                id: actionAddMage
                text: qsTr("&Mage")
                onTriggered: {
                    var newCharacter = root.party.createNewCharacter(Character.Mage);
                    newCharacter.characterNumber
                            = classMenu.iconSourceToCharacterNumber(icon.source.toString());
                }
            }

            Action {
                id: actionAddHealer
                text: qsTr("&Healer")
                onTriggered: {
                    var newCharacter = root.party.createNewCharacter(Character.Healer);
                    newCharacter.characterNumber
                            = classMenu.iconSourceToCharacterNumber(icon.source.toString());
                }
            }

            Action {
                id: actionAddPrincess
                text: qsTr("&Princess")
                onTriggered: {
                    var newCharacter = root.party.createNewCharacter(Character.Princess);
                    newCharacter.characterNumber
                            = classMenu.iconSourceToCharacterNumber(icon.source.toString());
                }
            }

            delegate: MenuItemDelegate {
                iconSide: 32
            }
        }
    }

    MenuButton {
        id: buttonCharacterMenu
        width: 40
        height: 40
        anchors.right: parent.right
        anchors.top: classTabBar.bottom
        ToolTip.text: qsTr("Open Character Menu")

        menu: Menu {
            id: menuCharacter
            width: 250
            x: 40 - width
            y: buttonCharacterMenu.height
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

            Menu {
                title: qsTr("Du&pliate this character")
                icon.source: "images/copy.svg"
                icon.color: "transparent"
                enabled: memberListView.currentCharacter != null

                Action {
                    enabled: memberListView.currentCharacter != null
                    icon.source: "images/copy.svg"
                    icon.color: "transparent"
                    text: qsTr("to &This Party")

                    onTriggered: root.party.duplicateCharacter(
                                   memberListView.currentCharacter.characterID, root.party)
                }

                Action {
                    enabled: memberListView.currentCharacter != null
                    icon.source: "images/copy.svg"
                    icon.color: "transparent"
                    text: qsTr("to &Another Party")

                    onTriggered: root.copyToAnotherPartyClicked(
                                   memberListView.currentCharacter.characterID)
                }

                delegate: MenuItemDelegate {
                    id: menuDuplicateDelegate
                }
            }

            MenuSeparator { padding: 0 }

            Action {
                icon.source: "images/delete_file.svg"
                icon.width: 20
                icon.height: 20
                text: qsTr("&Delete this Character")

                onTriggered: {
                    dialogDeleteCharacter.text = qsTr("Do you want to delete this character?\n\n")
                        + memberListView.currentCharacter.name;
                    dialogDeleteCharacter.open();
                }
            }

            delegate: MenuItemDelegate {
                id: menuItemDelegate
            }
        }
    }

    StackLayout {
        id: stackLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: memberListView.bottom
        height: 504
        currentIndex: -1
        enabled: memberListView.currentCharacter != null

        FormSkillFighter {
            id: formSkillFighter
        }
        FormSkillRogue {
            id: formSkillRogue
        }
        FormSkillSamurai {
            id: formSkillSamurai
        }
        FormSkillKnight {
            id: formSkillKnight
        }
        FormSkillMage {
            id: formSkillMage
        }
        FormSkillHealer {
            id: formSkillHealer
        }
        FormSkillPrincess {
            id: formSkillPrincess
        }
    }

    Text {
        id: textMemoTitle
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: stackLayout.bottom
        anchors.leftMargin: 4
        height: 20
        text: qsTr("Memo:")
        font.pointSize: 12
        verticalAlignment: Text.AlignVCenter
    }

    ScrollView {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: textMemoTitle.bottom
        anchors.bottom: parent.bottom
        anchors.topMargin: 4

        TextArea {
            id: memoArea
            font.pointSize: 13
            background: Rectangle {
                border.width: 1
                border.color: "#595959"
            }

            onTextEdited: memberListView.currentCharacter.memo = text
        }
    }

    Dialog {
        id: dialogDeleteCharacter
        anchors.centerIn: Overlay.overlay
        title: qsTr("7th Dragon Skill Simulator - Delete character")
        standardButtons: Dialog.Ok | Dialog.Cancel
        implicitWidth: 350

        property alias text: labelDeleteCharacter.text

        Label {
            id: labelDeleteCharacter
            anchors.left: parent.left
            anchors.right: parent.right
            font.pointSize: 12
            horizontalAlignment: Text.AlignHCenter
        }

        onAccepted: memberListView.deleteCurrentCharacter();
    }
}

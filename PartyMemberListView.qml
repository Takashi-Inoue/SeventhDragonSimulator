pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import SeventhDragonSimulator

Item {
    id: root

    property Party party
    property int classTypeForFilter: -1
    property alias orientation: listView.orientation
    property alias layoutDirection: listView.layoutDirection
    readonly property alias currentCharacter: internal.currentCharacter

    function restoreSelection() {
        if (root.party != null)
            listView.currentIndex = selectionState.selectedIndex(root.party.partyID);
    }

    function storeSelection() {
        if (root.party != null)
            selectionState.updateSelectedIndex(root.party.partyID, listView.currentIndex);
    }

    SelectionState {
        id:selectionState
    }

    QtObject {
        id: internal
        property Character currentCharacter

        onCurrentCharacterChanged: {
            if (currentCharacter === null)
                print("Current character is changed: null");
            else
                print("Current character is changed: " + currentCharacter.name);
        }
    }

    CharacterProxyModel {
        id: proxyModel
        sourceModel: root.party
    }

    ListView {
        id: listView

        width: parent.width
        height: parent.height
        orientation: ListView.Horizontal
        layoutDirection: Qt.LeftToRight
        spacing: 1
        clip: true

        model: proxyModel

        delegate: ItemDelegate {
            id: delegate
            required property int index
            required property string name
            required property int classType
            required property int characterNumber
            width: Math.max(listView.width / listView.count, 150)
            height: 40
            onClicked: listView.currentIndex = index
            onDoubleClicked: state = "editing"

            contentItem: Item {
                anchors.fill: parent
                ImageComboBox {
                    id: comboxCharacterIcons
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 4
                    anchors.topMargin: 4
                    model: CharacterIcons.sources[delegate.classType]
                    width: 32
                    height: 32
                    currentIndex: delegate.characterNumber

                    onCurrentIndexChanged: {
                        var indexProxy = listView.model.index(delegate.index, 0);
                        var indexSource = listView.model.mapToSource(indexProxy);

                        root.party.setData(indexSource, currentIndex, Character.CharacterNumberRole);
                    }
                }

                Text {
                    id: delegateText
                    height: 40
                    anchors.left: comboxCharacterIcons.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    text: delegate.name
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                    font.pointSize: 12
                    color: delegate.index == listView.currentIndex ? delegate.palette.windowText : delegate.palette.brightText
                    MouseArea {
                        id: mouseAreaText
                        anchors.fill: parent
                        hoverEnabled: true
                        ToolTip.text: delegateText.text
                        ToolTip.delay: 500
                        ToolTip.timeout: 5000
                        ToolTip.visible: containsMouse && delegateText.truncated
                        onClicked: listView.currentIndex = delegate.index
                        onDoubleClicked: delegate.state = "editing"
                    }
                }
            }

            background: Rectangle {
                id: delegateRect
                implicitWidth: Math.max(listView.width / listView.count, 150)
                implicitHeight: 40
                opacity: enabled ? 1 : 0.3
                radius: 0
                color: delegate.index == listView.currentIndex ? delegate.palette.window : delegate.palette.dark
            }

            TextField {
                id: editor
                property string oldText: ""
                anchors.fill: parent
                visible: false
                onAccepted: {
                    parent.state = "";
                }
                Keys.onEscapePressed: {
                    text = oldText;
                    parent.state = "";
                }
                onVisibleChanged: {
                    if (visible) {
                        oldText = delegate.name;
                        text = oldText;
                        listView.interactive = false;
                        forceActiveFocus();
                        selectAll();
                    } else {
                        listView.interactive = true;
                        oldText = "";
                    }
                }
                onActiveFocusChanged: {
                    if (activeFocus) {
                        selectAll();
                    } else {
                        var indexProxy = listView.model.index(parent.index, 0);
                        var indexSource = listView.model.mapToSource(indexProxy);

                        root.party.setData(indexSource, text, Character.NameRole);
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
                        // editor.parent.focus: false
                        restoreEntryValues: false
                    }
                    PropertyChanges {
                        delegateText.text: ""
                    }
                }
            ]
        }

        onCurrentItemChanged: {
            if (currentItem === null || currentIndex === -1) {
                internal.currentCharacter = null;
                return;
            }

            print("onCurrentItemChanged" + root.party)

            var indexProxy = model.index(currentIndex, 0);
            var indexSource = model.mapToSource(indexProxy);
            var character = root.party.character(indexSource);

            if (character !== internal.currentCharacter) {
                var partyID = root.party.partyID;

                internal.currentCharacter = character;
            }
        }

        onCurrentIndexChanged: {
            if (currentIndex === -1) {
                internal.currentCharacter = null;
                return;
            }

            var indexProxy = model.index(currentIndex, 0);
            var indexSource = model.mapToSource(indexProxy);
            var character = root.party.character(indexSource);

            if (character !== internal.currentCharacter)
                internal.currentCharacter = character;
        }

        onCountChanged: {
            if (listView.count > 0 && listView.currentIndex == -1)
                listView.currentIndex = 0;
        }
    }

    onClassTypeForFilterChanged: {
        if (classTypeForFilter >= Character.Fighter && classTypeForFilter <= Character.Princess) {
            proxyModel.classTypeForFilter = classTypeForFilter;

            if (proxyModel.filterKeyColumn === -1)
                proxyModel.filterKeyColumn = 0;
        } else {
            clearFilter();
        }
    }

    function clearFilter() {
        proxyModel.filterKeyColumn = -1;
    }

    function deleteCurrentCharacter() {
        if (currentCharacter === null)
            return;

        party.deleteCharacter(currentCharacter.characterID);
    }

    function selectCharacterFromID(characterID: string) {
        print("PartyMemberListView.selectCharacterFromID id=" + characterID)

        if (party != null) {
            print("party=" + root.party + root.party.partyID)
            listView.currentIndex = party.indexOf(characterID);
            print(party + "select" + listView.currentIndex + "th character")
        } else {
            print("PartyMemberListView.selectCharacterFromID party is null.")
        }
    }

    function selectFirstCharacter() {
        if (party != null && party.rowCount() > 0) {
            print(party + "select first character")
            listView.currentIndex = 0;
        }
    }
}

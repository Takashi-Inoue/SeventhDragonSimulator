import QtQuick
import SeventhDragonSimulator

DialogSelectParty {
    id: root

    property Party sourceParty
    property string characterID

    onAccepted: {
        var destParty = root.selectedParty;

        if (destParty == null)
            destParty = root.partyList.createNewParty();

        root.sourceParty.duplicateCharacter(root.characterID, destParty);
    }
}

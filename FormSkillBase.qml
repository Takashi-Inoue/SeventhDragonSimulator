import QtQuick
import SeventhDragonSimulator

Rectangle {
    id: root

    property Character character
    property int spentPoint: 0
    property list<Item> forms: []
    property SkillListCommon skillListCommon: SkillListCommon {}
    readonly property alias isLoading: internal.isLoading

    SkillPointDisplay {
        id: skillPointDisplay
        radius: 4
        border.color: "#595959"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        anchors.topMargin: 8
        onIsEnabledChibiTalkChanged: {
            if (root.character != null)
                root.character.isEnabledChibiTalk = isEnabledChibiTalk;
        }
    }

    QtObject {
        id: internal
        property bool isLoading: false
    }

    function calcSpentPoint() {
        var point = 0;

        for (var i = 0; i < root.forms.length; i++)
            point += root.forms[i].spentPoint;

        root.spentPoint = point;
    }

    function resetSkills() {
        for (var i = 0; i < root.forms.length; i++)
            root.forms[i].value = 0;
    }

    function onSkillLevelChanged(form: FormSkill) {
        if (root.character !== null)
            root.character.setSkillLevel(form.skill.skillID, form.value);

        calcSpentPoint();
    }

    Component.onCompleted: {
        for (var i = 0; i < root.forms.length; i++) {
            if (root.character !== null)
                root.forms[i].value = root.character.skillLevel(root.forms[i].skill.skillID);

            root.forms[i].skillLevelChanged.connect(onSkillLevelChanged)
        }

        calcSpentPoint();
    }

    onSpentPointChanged: skillPointDisplay.consumedPoint = root.spentPoint

    onCharacterChanged: {
        internal.isLoading = true;

        if (character === null) {
            resetSkills();
            skillPointDisplay.isEnabledChibiTalk = false;
            internal.isLoading = false;
            return;
        }

        for (var i = 0; i < forms.length; i++) {
            root.forms[i].skillLevelChanged.disconnect(onSkillLevelChanged)
            root.forms[i].value = root.character.skillLevel(root.forms[i].skill.skillID);
            root.forms[i].skillLevelChanged.connect(onSkillLevelChanged)
        }

        skillPointDisplay.isEnabledChibiTalk = root.character.isEnabledChibiTalk;

        calcSpentPoint();

        internal.isLoading = false;
    }
}

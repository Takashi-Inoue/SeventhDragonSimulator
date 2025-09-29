import QtQuick
import SeventhDragonSimulator

Item {
    id: root

    required property FormSkill formSkillChild
    required property FormSkill formSkillParent
    required property int requiredLevel

    function onParentLevelChanged() {
        if (root.enabled && root.formSkillParent.value < root.requiredLevel)
            root.formSkillChild.value = 0
    }

    function onChildLevelChanged() {
        if (root.enabled && root.formSkillChild.value > 0
                && root.formSkillParent.value < root.requiredLevel)
        {
            root.formSkillParent.value = root.requiredLevel
        }
    }

    Component.onCompleted: {
        root.formSkillParent.skillLevelChanged.connect(onParentLevelChanged)
        root.formSkillChild.skillLevelChanged.connect(onChildLevelChanged)
    }
}

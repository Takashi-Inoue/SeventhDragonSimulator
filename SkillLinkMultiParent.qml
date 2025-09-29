import QtQuick
import SeventhDragonSimulator

Item {
    id: root

    required property FormSkill formSkillChild
    required property list<FormSkill> formSkillParents
    required property list<int> requiredLevels

    function onParentLevelChanged(formParent: FormSkill) {
        if (!enabled)
            return;

        var reqLevel = 0;

        for (var i = 0; i < root.formSkillParents.length; ++i) {
            if (root.formSkillParents[i] == formParent) {
                reqLevel = root.requiredLevels[i];
                break;
            }
        }

        if (formParent.value < reqLevel)
            root.formSkillChild.value = 0
    }

    function onChildLevelChanged(formChild: FormSkill) {
        if (!enabled)
            return;

        for (var i = 0; i < root.formSkillParents.length; ++i) {
            if (formChild.value > 0
                    && root.formSkillParents[i].value < root.requiredLevels[i])
            {
                root.formSkillParents[i].value = root.requiredLevels[i]
            }
        }
    }

    Component.onCompleted: {
        for (var i = 0; i < root.formSkillParents.length; ++i)
            root.formSkillParents[i].skillLevelChanged.connect(onParentLevelChanged)

        root.formSkillChild.skillLevelChanged.connect(onChildLevelChanged)
    }
}

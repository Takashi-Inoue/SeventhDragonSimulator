import QtQuick

Item {
    visible: false

    SkillTypeList {
        id: skillTypeList
    }

    property Skill powBonus: Skill {
        skillID: "POW Bonus"
        name: qsTr("POW Bonus")
        type: skillTypeList.power
        skillLevel: SkillLevel {
            spCost: [Qt.point(1, 2)]
        }
        description: [qsTr(`Raises physical attack and defense.`)]
    }
    property Skill spdBonus: Skill {
        skillID: "SPD Bonus"
        name: qsTr("SPD Bonus")
        type: skillTypeList.speed
        description: [qsTr(`Raises agility and evasion.`)]
    }
    property Skill intBonus: Skill {
        skillID: "INT Bonus"
        name: qsTr("INT Bonus")
        type: skillTypeList.intelligence
        description: [qsTr(`Raises magic attack and magic defense.`)]
    }
}

import QtQuick
import QtQuick.Controls

FormSkillBase {
    id: root
    height: 492

    ScrollView {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 56

        contentHeight: skillsView.height
        contentWidth: skillsView.width

        Item {
            id: skillsView
            width: 1926
            height: 436

            FormSkill {
                id: powBonus
                x: 1408
                y: 98
                skill: root.skillListCommon.powBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: spdBonus
                anchors.left: genocideTask.left
                anchors.top: genocideTask.bottom
                anchors.topMargin: 30
                skill: root.skillListCommon.spdBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: intBonus
                anchors.left: spdBonus.right
                anchors.top: spdBonus.top
                anchors.leftMargin: 50
                skill: root.skillListCommon.intBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: swordMastery
                anchors.left: grandBuster.right
                anchors.top: grandBuster.top
                anchors.leftMargin: 50
                skill: SkillListFighter.swordMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: keenEdge
                x: 8
                y: 8
                skill: SkillListFighter.keenEdge
                // canObtain: swordMastery.value >= 1
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: rushEdge
                anchors.left: keenEdge.left
                anchors.top: keenEdge.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.rushEdge
                // canObtain: swordMastery.value >= 5
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: grandBuster
                anchors.left: rushEdge.left
                anchors.top: rushEdge.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.grandBuster
                // canObtain: swordMastery.value >= 8
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: bloodBlade
                anchors.left: grandBuster.left
                anchors.top: grandBuster.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.bloodBlade
                // canObtain: swordMastery.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: attackKill
                anchors.left: bloodBlade.left
                anchors.top: bloodBlade.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.attackKill
                // canObtain: swordMastery.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: elementFollower
                anchors.left: swordMastery.left
                anchors.bottom: swordMastery.top
                anchors.bottomMargin: 30
                skill: SkillListFighter.elementFollower
                // canObtain: swordMastery.value >= 5 && defensiveSwitch.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: fangBlade
                anchors.left: swordMastery.left
                anchors.top: swordMastery.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.fangBlade
                // canObtain: swordMastery.value >= 5 && offensiveSwitch.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: hexaSpike
                anchors.left: keenEdge.right
                anchors.top: keenEdge.top
                anchors.leftMargin: 50
                skill: SkillListFighter.hexaSpike
                // canObtain: swordMastery.value >= 10
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: axeMastery
                anchors.left: doubleAttack.right
                anchors.top: doubleAttack.top
                anchors.leftMargin: 50
                skill: SkillListFighter.axeMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: powerCrash
                anchors.left: balanceKill.left
                anchors.bottom: balanceKill.top
                anchors.bottomMargin: 30
                skill: SkillListFighter.powerCrash
                // canObtain: axeMastery.value >= 1
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: balanceKill
                anchors.left: shieldAxe.right
                anchors.top: shieldAxe.top
                anchors.leftMargin: 50
                skill: SkillListFighter.balanceKill
                // canObtain: axeMastery.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: defendKill
                anchors.left: axeMastery.right
                anchors.top: axeMastery.top
                anchors.leftMargin: 50
                skill: SkillListFighter.defendKill
                // canObtain: axeMastery.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: purge
                anchors.left: arrowFollower.right
                anchors.top: arrowFollower.top
                anchors.leftMargin: 50
                skill: SkillListFighter.purge
                // canObtain: axeMastery.value >= 8
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: stunBash
                anchors.left: purge.left
                anchors.top: purge.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.stunBash
                // canObtain: axeMastery.value >= 5
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shieldAxe
                anchors.left: axeMastery.left
                anchors.bottom: axeMastery.top
                anchors.bottomMargin: 30
                skill: SkillListFighter.shieldAxe
                // canObtain: axeMastery.value >= 5 && defensiveSwitch.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: arrowFollower
                anchors.left: axeMastery.left
                anchors.top: axeMastery.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.arrowFollower
                // canObtain: axeMastery.value >= 5 && offensiveSwitch.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: tidalWave
                anchors.right: powerCrash.left
                anchors.top: powerCrash.top
                anchors.rightMargin: 50
                skill: SkillListFighter.tidalWave
                // canObtain: axeMastery.value >= 10
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: doubleAttack
                anchors.left: swordMastery.right
                anchors.top: swordMastery.top
                anchors.leftMargin: 50
                skill: SkillListFighter.doubleAttack
                // canObtain: swordMastery.value >= 5 && axeMastery.value >= 5
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: defensiveSwitch
                anchors.left: elementFollower.right
                anchors.top: elementFollower.top
                anchors.leftMargin: 50
                skill: SkillListFighter.defensiveSwitch
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: offensiveSwitch
                anchors.left: fangBlade.right
                anchors.top: fangBlade.top
                anchors.leftMargin: 50
                skill: SkillListFighter.offensiveSwitch
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: berserk
                anchors.left: powBonus.right
                anchors.top: powBonus.top
                anchors.leftMargin: 50
                skill: SkillListFighter.berserk
                // canObtain: powBonus.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: genocideTask
                anchors.left: powBonus.left
                anchors.top: powBonus.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.genocideTask
                // canObtain: powBonus.value >= 3 && spdBonus.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: maxingCall
                anchors.left: powBonus.left
                anchors.bottom: powBonus.top
                anchors.bottomMargin: 30
                skill: SkillListFighter.maxingCall
                // canObtain: powBonus.value >= 10
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: endorphin
                anchors.left: intBonus.left
                anchors.top: intBonus.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.endorphin
                // canObtain: intBonus.value >= 3
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: killingReaction
                anchors.left: spdBonus.left
                anchors.top: spdBonus.bottom
                anchors.topMargin: 30
                skill: SkillListFighter.killingReaction
                // canObtain: spdBonus.value >= 1
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: meatEater
                anchors.left: intBonus.left
                anchors.bottom: intBonus.top
                anchors.bottomMargin: 30
                skill: SkillListFighter.meatEater
                // canObtain: intBonus.value >= 1
                Component.onCompleted: root.forms.push(this)
            }

            VLineItem {
                id: vLineSword
                anchors.left: keenEdge.right
                anchors.top: keenEdge.verticalCenter
                anchors.bottom: attackKill.verticalCenter
                anchors.leftMargin: 25
            }

            FourDArrow {
                anchors.verticalCenter: keenEdge.verticalCenter
                anchors.left: keenEdge.right
                anchors.right: hexaSpike.left
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: rushEdge.verticalCenter
                anchors.left: rushEdge.right
                anchors.right: vLineSword.left
                anchors.leftMargin: 4
                anchors.rightMargin: 0
                arrowUp: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: grandBuster.verticalCenter
                anchors.left: grandBuster.right
                anchors.right: swordMastery.left
                anchors.leftMargin: 4
                anchors.rightMargin: 0
                arrowUp: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: bloodBlade.verticalCenter
                anchors.left: bloodBlade.right
                anchors.right: vLineSword.left
                anchors.leftMargin: 4
                anchors.rightMargin: 0
                arrowUp: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: attackKill.verticalCenter
                anchors.left: attackKill.right
                anchors.right: vLineSword.left
                anchors.leftMargin: 4
                anchors.rightMargin: 0
                arrowUp: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.top: elementFollower.bottom
                anchors.bottom: swordMastery.top
                anchors.topMargin: 4
                anchors.horizontalCenter: swordMastery.horizontalCenter
                arrowLeft: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.top: swordMastery.bottom
                anchors.bottom: fangBlade.top
                anchors.bottomMargin: 4
                anchors.horizontalCenter: swordMastery.horizontalCenter
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: swordMastery.verticalCenter
                anchors.left: swordMastery.right
                anchors.right: doubleAttack.left
                anchors.rightMargin: 4
                arrowDown: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: defensiveSwitch.verticalCenter
                anchors.left: elementFollower.right
                anchors.right: defensiveSwitch.left
                anchors.leftMargin: 4
                arrowRight: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: offensiveSwitch.verticalCenter
                anchors.left: fangBlade.right
                anchors.right: offensiveSwitch.left
                anchors.leftMargin: 4
                anchors.rightMargin: 0
                arrowRight: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: offensiveSwitch.verticalCenter
                anchors.left: offensiveSwitch.right
                anchors.right: arrowFollower.left
                anchors.rightMargin: 4
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: defensiveSwitch.verticalCenter
                anchors.left: defensiveSwitch.right
                anchors.right: shieldAxe.left
                anchors.leftMargin: 0
                anchors.rightMargin: 4
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: axeMastery.verticalCenter
                anchors.left: doubleAttack.right
                anchors.right: axeMastery.left
                anchors.leftMargin: 4
                arrowRight: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.top: shieldAxe.bottom
                anchors.bottom: axeMastery.top
                anchors.topMargin: 4
                anchors.horizontalCenter: axeMastery.horizontalCenter
                arrowLeft: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.top: axeMastery.bottom
                anchors.bottom: arrowFollower.top
                anchors.bottomMargin: 4
                arrowUp: false
                anchors.horizontalCenter: axeMastery.horizontalCenter
                arrowLeft: false
                arrowRight: false
            }

            VLineItem {
                id: vLineAxe
                anchors.left: tidalWave.right
                anchors.top: tidalWave.verticalCenter
                anchors.bottom: stunBash.verticalCenter
                anchors.leftMargin: 25
            }

            FourDArrow {
                anchors.verticalCenter: tidalWave.verticalCenter
                anchors.left: tidalWave.right
                anchors.right: powerCrash.left
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: balanceKill.verticalCenter
                anchors.left: vLineAxe.right
                anchors.right: balanceKill.left
                anchors.rightMargin: 4
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: defendKill.verticalCenter
                anchors.left: axeMastery.right
                anchors.right: defendKill.left
                anchors.rightMargin: 4
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: purge.verticalCenter
                anchors.left: vLineAxe.right
                anchors.right: purge.left
                anchors.rightMargin: 4
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: stunBash.verticalCenter
                anchors.left: vLineAxe.right
                anchors.right: stunBash.left
                anchors.rightMargin: 4
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.top: maxingCall.bottom
                anchors.bottom: powBonus.top
                anchors.topMargin: 4
                anchors.horizontalCenter: powBonus.horizontalCenter
                arrowRight: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.top: powBonus.bottom
                anchors.bottom: genocideTask.top
                anchors.bottomMargin: 4
                anchors.horizontalCenter: powBonus.horizontalCenter
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: powBonus.verticalCenter
                anchors.left: powBonus.right
                anchors.right: berserk.left
                anchors.rightMargin: 4
                arrowDown: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.top: genocideTask.bottom
                anchors.bottom: spdBonus.top
                anchors.topMargin: 4
                anchors.horizontalCenter: spdBonus.horizontalCenter
                arrowRight: false
                arrowDown: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.top: spdBonus.bottom
                anchors.bottom: killingReaction.top
                anchors.bottomMargin: 4
                anchors.horizontalCenter: spdBonus.horizontalCenter
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.top: genocideTask.bottom
                anchors.bottom: intBonus.top
                anchors.topMargin: 4
                anchors.bottomMargin: 0
                anchors.horizontalCenter: intBonus.horizontalCenter
                arrowRight: false
                arrowDown: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.top: intBonus.bottom
                anchors.bottom: endorphin.top
                anchors.bottomMargin: 4
                anchors.horizontalCenter: intBonus.horizontalCenter
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            Label {
                text: "1"
                anchors.left: keenEdge.right
                anchors.right: vLineSword.left
                anchors.bottom: keenEdge.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "10"
                anchors.left: vLineSword.right
                anchors.right: hexaSpike.left
                anchors.top: hexaSpike.verticalCenter
                anchors.topMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: rushEdge.right
                anchors.right: vLineSword.left
                anchors.bottom: rushEdge.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: grandBuster.right
                anchors.right: vLineSword.left
                anchors.bottom: grandBuster.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: bloodBlade.right
                anchors.right: vLineSword.left
                anchors.bottom: bloodBlade.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: attackKill.right
                anchors.right: vLineSword.left
                anchors.bottom: attackKill.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: swordMastery.horizontalCenter
                anchors.top: elementFollower.bottom
                anchors.bottom: swordMastery.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: swordMastery.horizontalCenter
                anchors.top: swordMastery.bottom
                anchors.bottom: fangBlade.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: swordMastery.right
                anchors.right: doubleAttack.left
                anchors.bottom: swordMastery.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: elementFollower.right
                anchors.right: defensiveSwitch.left
                anchors.bottom: elementFollower.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: fangBlade.right
                anchors.right: offensiveSwitch.left
                anchors.bottom: fangBlade.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: defensiveSwitch.right
                anchors.right: shieldAxe.left
                anchors.bottom: defensiveSwitch.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: offensiveSwitch.right
                anchors.right: arrowFollower.left
                anchors.bottom: fangBlade.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: doubleAttack.right
                anchors.right: axeMastery.left
                anchors.bottom: swordMastery.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: axeMastery.horizontalCenter
                anchors.top: shieldAxe.bottom
                anchors.bottom: axeMastery.top
                anchors.leftMargin: 12
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: axeMastery.horizontalCenter
                anchors.top: axeMastery.bottom
                anchors.bottom: arrowFollower.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: vLineAxe.right
                anchors.right: powerCrash.left
                anchors.bottom: powerCrash.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "10"
                anchors.left: tidalWave.right
                anchors.right: vLineAxe.left
                anchors.top: tidalWave.verticalCenter
                anchors.topMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineAxe.right
                anchors.right: balanceKill.left
                anchors.bottom: balanceKill.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineAxe.right
                anchors.right: defendKill.left
                anchors.bottom: defendKill.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: vLineAxe.right
                anchors.right: purge.left
                anchors.bottom: purge.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLineAxe.right
                anchors.right: stunBash.left
                anchors.bottom: stunBash.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "10"
                anchors.top: maxingCall.bottom
                anchors.bottom: powBonus.top
                anchors.horizontalCenterOffset: 20
                anchors.horizontalCenter: powBonus.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: powBonus.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.bottom: genocideTask.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: powBonus.right
                anchors.right: berserk.left
                anchors.bottom: powBonus.verticalCenter
                anchors.rightMargin: 0
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: spdBonus.horizontalCenter
                anchors.top: genocideTask.bottom
                anchors.bottom: spdBonus.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: spdBonus.horizontalCenter
                anchors.top: spdBonus.bottom
                anchors.bottom: killingReaction.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: intBonus.horizontalCenter
                anchors.top: meatEater.bottom
                anchors.bottom: intBonus.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: intBonus.horizontalCenter
                anchors.top: intBonus.bottom
                anchors.bottom: endorphin.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }
        }
    }

    SkillLink {
        formSkillChild: keenEdge
        formSkillParent: swordMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: bloodBlade
        formSkillParent: swordMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: attackKill
        formSkillParent: swordMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: rushEdge
        formSkillParent: swordMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: grandBuster
        formSkillParent: swordMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: hexaSpike
        formSkillParent: swordMastery
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: fangBlade
        formSkillParent: swordMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: fangBlade
        formSkillParent: offensiveSwitch
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: elementFollower
        formSkillParent: swordMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: elementFollower
        formSkillParent: defensiveSwitch
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: powerCrash
        formSkillParent: axeMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: balanceKill
        formSkillParent: axeMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: defendKill
        formSkillParent: axeMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: stunBash
        formSkillParent: axeMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: purge
        formSkillParent: axeMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: tidalWave
        formSkillParent: axeMastery
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: arrowFollower
        formSkillParent: axeMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: arrowFollower
        formSkillParent: offensiveSwitch
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: shieldAxe
        formSkillParent: axeMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: shieldAxe
        formSkillParent: defensiveSwitch
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: doubleAttack
        formSkillParent: swordMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: doubleAttack
        formSkillParent: axeMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: berserk
        formSkillParent: powBonus
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: maxingCall
        formSkillParent: powBonus
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: killingReaction
        formSkillParent: spdBonus
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: genocideTask
        formSkillParent: powBonus
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: genocideTask
        formSkillParent: spdBonus
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: meatEater
        formSkillParent: intBonus
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: endorphin
        formSkillParent: intBonus
        requiredLevel: 3
        enabled: !root.isLoading
    }
}

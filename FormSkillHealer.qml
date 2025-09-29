import QtQuick
import QtQuick.Controls

FormSkillBase {
    id: root
    height: 492

    SkillListHealer {
        id: skillListHealer
    }

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
                anchors.left: cure.right
                anchors.top: cure.top
                anchors.leftMargin: 50
                skill: root.skillListCommon.powBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: spdBonus
                anchors.left: enemySense.left
                anchors.top: enemySense.bottom
                anchors.topMargin: 30
                skill: root.skillListCommon.spdBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: intBonus
                anchors.left: anatomySmallMonsters.left
                anchors.top: anatomySmallMonsters.bottom
                anchors.topMargin: 30
                skill: root.skillListCommon.intBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: recoveryMastery
                anchors.left: craftMana.right
                anchors.top: craftMana.top
                anchors.leftMargin: 50
                skill: skillListHealer.recoveryMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: cure
                anchors.left: vesselOfMiracles.right
                anchors.top: vesselOfMiracles.top
                anchors.leftMargin: 50
                skill: skillListHealer.cure
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: cureII
                anchors.left: cure.left
                anchors.top: cure.bottom
                anchors.topMargin: 30
                skill: skillListHealer.cureII
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: recoverI
                anchors.left: cureAll.left
                anchors.top: cureAll.bottom
                anchors.topMargin: 30
                skill: skillListHealer.recoverI
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: recoverII
                anchors.left: recoverI.left
                anchors.top: recoverI.bottom
                anchors.topMargin: 30
                skill: skillListHealer.recoverII
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: cureAll
                anchors.left: cureII.left
                anchors.top: cureII.bottom
                anchors.topMargin: 30
                skill: skillListHealer.cureAll
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: resurrection
                anchors.left: recoverII.right
                anchors.top: recoverII.top
                anchors.leftMargin: 50
                skill: skillListHealer.resurrection
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: craftMana
                anchors.left: intBonus.right
                anchors.top: intBonus.top
                anchors.leftMargin: 50
                skill: skillListHealer.craftMana
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: vesselOfMiracles
                anchors.left: recoveryMastery.left
                anchors.bottom: recoveryMastery.top
                anchors.bottomMargin: 30
                skill: skillListHealer.vesselOfMiracles
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: venomMastery
                anchors.right: spdBonus.left
                anchors.top: spdBonus.top
                anchors.rightMargin: 50
                skill: skillListHealer.venomMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: venom
                anchors.left: venomMist.right
                anchors.top: venomMist.top
                anchors.leftMargin: 50
                skill: skillListHealer.venom
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: venomMist
                anchors.left: venomMastery.left
                anchors.top: venomMastery.bottom
                anchors.topMargin: 30
                skill: skillListHealer.venomMist
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: venomInfecter
                anchors.left: venomAmplif.right
                anchors.top: venomAmplif.top
                anchors.leftMargin: 50
                skill: skillListHealer.venomInfecter
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: venomAmplif
                anchors.left: venom.right
                anchors.top: venom.top
                anchors.leftMargin: 50
                skill: skillListHealer.venomAmplif
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: manaMastery
                anchors.left: lifeSalvation.left
                anchors.bottom: lifeSalvation.top
                anchors.bottomMargin: 30
                skill: skillListHealer.manaMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: resistElement
                anchors.left: manaMastery.right
                anchors.top: manaMastery.top
                anchors.leftMargin: 50
                skill: skillListHealer.resistElement
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: lifeSalvation
                anchors.left: resurrection.left
                anchors.bottom: resurrection.top
                anchors.bottomMargin: 30
                skill: skillListHealer.lifeSalvation
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: healingMana
                anchors.left: resistElement.left
                anchors.top: resistElement.bottom
                anchors.topMargin: 30
                skill: skillListHealer.healingMana
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: healersConcentrate
                anchors.left: healingMana.left
                anchors.top: healingMana.bottom
                anchors.topMargin: 30
                skill: skillListHealer.healersConcentrate
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: swingCrush
                anchors.left: earthBreaker.left
                anchors.top: earthBreaker.bottom
                anchors.topMargin: 30
                skill: skillListHealer.swingCrush
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: earthBreaker
                anchors.left: powBonus.right
                anchors.top: powBonus.top
                anchors.leftMargin: 50
                skill: skillListHealer.earthBreaker
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: enemySense
                anchors.left: intBonus.left
                anchors.top: intBonus.bottom
                anchors.topMargin: 30
                skill: skillListHealer.enemySense
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: anatomySmallMonsters
                anchors.left: anatomyLargeMonsters.right
                anchors.top: anatomyLargeMonsters.top
                anchors.leftMargin: 50
                skill: skillListHealer.anatomySmallMonsters
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: anatomyLargeMonsters
                x: 8
                y: 8
                skill: skillListHealer.anatomyLargeMonsters
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: deadMansReact
                anchors.left: spdBonus.right
                anchors.top: spdBonus.top
                anchors.leftMargin: 50
                skill: skillListHealer.deadMansReact
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: greatWorker
                anchors.left: powBonus.left
                anchors.top: powBonus.bottom
                anchors.topMargin: 30
                skill: skillListHealer.greatWorker
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: invisibility
                anchors.left: enemySense.right
                anchors.top: enemySense.top
                anchors.leftMargin: 50
                skill: skillListHealer.invisibility
                Component.onCompleted: root.forms.push(this)
            }

            TextBox {
                id: resurrectionDummy
                width: 100
                text: qsTr("Resurrection")
                anchors.verticalCenter: vesselOfMiracles.verticalCenter
                anchors.right: vesselOfMiracles.left
                anchors.rightMargin: 50
                bgColor: vesselOfMiracles.color
                font.pointSize: 12
                border.width: 1
                border.color: "#888888"
                radius: 3
            }

            VLineItem {
                id: vLineCure
                anchors.left: vesselOfMiracles.right
                anchors.top: cure.verticalCenter
                anchors.bottom: recoverII.verticalCenter
                anchors.leftMargin: 25
            }

            VLineItem {
                id: vLineResurrection
                anchors.left: recoverI.right
                anchors.top: recoverI.verticalCenter
                anchors.bottom: recoverII.verticalCenter
                anchors.leftMargin: 25
            }

            VLineItem {
                id: vLineMana
                anchors.left: manaMastery.right
                anchors.top: manaMastery.verticalCenter
                anchors.bottom: healersConcentrate.verticalCenter
                anchors.leftMargin: 25
            }

            HLineItem {
                id: hLineAnatomy
                anchors.left: anatomyLargeMonsters.horizontalCenter
                anchors.right: anatomySmallMonsters.horizontalCenter
                anchors.top: anatomyLargeMonsters.bottom
                anchors.topMargin: 22
            }

            HLineItem {
                id: hLineInvisibility
                anchors.left: enemySense.horizontalCenter
                anchors.right: invisibility.horizontalCenter
                anchors.top: intBonus.bottom
                anchors.topMargin: 8
            }

            HLineItem {
                id: hLineVenom
                anchors.left: venomMist.horizontalCenter
                anchors.right: venomInfecter.horizontalCenter
                anchors.top: venomMastery.bottom
                anchors.topMargin: 8
            }

            HLineItem {
                id: hLineRecoverI
                anchors.left: recoverI.right
                anchors.right: resurrection.left
                anchors.top: recoverI.verticalCenter
                anchors.rightMargin: 25
            }

            HLineItem {
                id: hLineSwingCrush
                anchors.left: powBonus.horizontalCenter
                anchors.right: swingCrush.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.topMargin: 8
            }

            FourDArrow {
                anchors.horizontalCenter: anatomyLargeMonsters.horizontalCenter
                anchors.top: anatomyLargeMonsters.bottom
                anchors.bottom: hLineAnatomy.top
                anchors.topMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: anatomySmallMonsters.horizontalCenter
                anchors.top: anatomySmallMonsters.bottom
                anchors.bottom: intBonus.top
                anchors.topMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: intBonus.horizontalCenter
                anchors.top: intBonus.bottom
                anchors.bottom: enemySense.top
                anchors.topMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.horizontalCenter: enemySense.horizontalCenter
                anchors.top: enemySense.bottom
                anchors.bottom: spdBonus.top
                anchors.topMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: intBonus.verticalCenter
                anchors.left: intBonus.right
                anchors.right: craftMana.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: invisibility.horizontalCenter
                anchors.top: hLineInvisibility.bottom
                anchors.bottom: invisibility.top
                anchors.bottomMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: enemySense.verticalCenter
                anchors.left: enemySense.right
                anchors.right: invisibility.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: spdBonus.verticalCenter
                anchors.left: spdBonus.right
                anchors.right: deadMansReact.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: venomMastery.horizontalCenter
                anchors.top: venomMastery.bottom
                anchors.bottom: venomMist.top
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.horizontalCenter: venom.horizontalCenter
                anchors.top: hLineVenom.bottom
                anchors.bottom: venom.top
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.horizontalCenter: venomAmplif.horizontalCenter
                anchors.top: hLineVenom.bottom
                anchors.bottom: venomAmplif.top
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.horizontalCenter: venomInfecter.horizontalCenter
                anchors.top: hLineVenom.bottom
                anchors.bottom: venomInfecter.top
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: venom.verticalCenter
                anchors.left: venomMist.right
                anchors.right: venom.left
                anchors.leftMargin: 2
                arrowUp: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: venom.verticalCenter
                anchors.left: venom.right
                anchors.right: venomAmplif.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: recoveryMastery.verticalCenter
                anchors.left: craftMana.right
                anchors.right: recoveryMastery.left
                anchors.leftMargin: 2
                arrowUp: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: cure.verticalCenter
                anchors.left: vLineCure.right
                anchors.right: cure.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: cureII.verticalCenter
                anchors.left: recoveryMastery.right
                anchors.right: cureII.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: cureAll.verticalCenter
                anchors.left: vLineCure.right
                anchors.right: cureAll.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: recoverI.verticalCenter
                anchors.left: vLineCure.right
                anchors.right: recoverI.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: recoverII.verticalCenter
                anchors.left: vLineCure.right
                anchors.right: recoverII.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: resurrection.verticalCenter
                anchors.left: recoverII.right
                anchors.right: resurrection.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: cureAll.horizontalCenter
                anchors.top: cureII.bottom
                anchors.bottom: cureAll.top
                anchors.bottomMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.horizontalCenter: lifeSalvation.horizontalCenter
                anchors.top: lifeSalvation.bottom
                anchors.bottom: resurrection.top
                anchors.topMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: manaMastery.horizontalCenter
                anchors.top: manaMastery.bottom
                anchors.bottom: lifeSalvation.top
                anchors.bottomMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: resistElement.verticalCenter
                anchors.left: manaMastery.right
                anchors.right: resistElement.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: healingMana.verticalCenter
                anchors.left: vLineMana.right
                anchors.right: healingMana.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: healersConcentrate.verticalCenter
                anchors.left: vLineMana.right
                anchors.right: healersConcentrate.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: earthBreaker.verticalCenter
                anchors.left: powBonus.right
                anchors.right: earthBreaker.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: powBonus.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.bottom: greatWorker.top
                anchors.bottomMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.horizontalCenter: swingCrush.horizontalCenter
                anchors.top: hLineSwingCrush.bottom
                anchors.bottom: swingCrush.top
                anchors.bottomMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: vesselOfMiracles.verticalCenter
                anchors.left: resurrectionDummy.right
                anchors.right: vesselOfMiracles.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            Label {
                text: "3"
                anchors.right: anatomyLargeMonsters.horizontalCenter
                anchors.top: anatomyLargeMonsters.bottom
                anchors.bottom: intBonus.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: anatomySmallMonsters.horizontalCenter
                anchors.top: anatomySmallMonsters.bottom
                anchors.bottom: intBonus.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: intBonus.right
                anchors.right: craftMana.left
                anchors.bottom: craftMana.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "10"
                anchors.left: craftMana.right
                anchors.right: recoveryMastery.left
                anchors.bottom: craftMana.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.right: enemySense.horizontalCenter
                anchors.top: intBonus.bottom
                anchors.bottom: enemySense.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: invisibility.horizontalCenter
                anchors.top: intBonus.bottom
                anchors.bottom: invisibility.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: enemySense.right
                anchors.right: invisibility.left
                anchors.bottom: invisibility.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.right: enemySense.horizontalCenter
                anchors.top: enemySense.bottom
                anchors.bottom: spdBonus.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: spdBonus.right
                anchors.right: deadMansReact.left
                anchors.bottom: deadMansReact.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.right: venomMist.horizontalCenter
                anchors.top: hLineVenom.bottom
                anchors.bottom: venomMist.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.right: venom.horizontalCenter
                anchors.top: hLineVenom.bottom
                anchors.bottom: venom.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.right: venomAmplif.horizontalCenter
                anchors.top: hLineVenom.bottom
                anchors.bottom: venomAmplif.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: venomInfecter.horizontalCenter
                anchors.top: hLineVenom.bottom
                anchors.bottom: venomInfecter.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: venomMist.right
                anchors.right: venom.left
                anchors.bottom: venomMist.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: venom.right
                anchors.right: venomAmplif.left
                anchors.bottom: venom.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: resurrectionDummy.right
                anchors.right: vesselOfMiracles.left
                anchors.bottom: vesselOfMiracles.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: vLineCure.right
                anchors.right: cure.left
                anchors.bottom: cure.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLineCure.right
                anchors.right: cureII.left
                anchors.bottom: cureII.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: vLineCure.right
                anchors.right: cureAll.left
                anchors.bottom: cureAll.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineCure.right
                anchors.right: recoverI.left
                anchors.bottom: recoverI.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLineCure.right
                anchors.right: recoverII.left
                anchors.bottom: recoverII.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: recoverI.right
                anchors.right: vLineResurrection.left
                anchors.bottom: recoverI.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: recoverII.right
                anchors.right: vLineResurrection.left
                anchors.bottom: recoverII.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: cureAll.horizontalCenter
                anchors.top: cureII.bottom
                anchors.bottom: cureAll.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.right: lifeSalvation.horizontalCenter
                anchors.top: lifeSalvation.bottom
                anchors.bottom: resurrection.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: lifeSalvation.horizontalCenter
                anchors.top: manaMastery.bottom
                anchors.bottom: lifeSalvation.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineMana.right
                anchors.right: resistElement.left
                anchors.bottom: resistElement.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: vLineMana.right
                anchors.right: healingMana.left
                anchors.bottom: healingMana.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLineMana.right
                anchors.right: healersConcentrate.left
                anchors.bottom: healersConcentrate.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "10"
                anchors.left: powBonus.right
                anchors.right: earthBreaker.left
                anchors.bottom: earthBreaker.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.right: greatWorker.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.bottom: greatWorker.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: swingCrush.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.bottom: swingCrush.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }
        }
    }

    SkillLink {
        formSkillChild: cure
        formSkillParent: recoveryMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: cureII
        formSkillParent: recoveryMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: recoverI
        formSkillParent: recoveryMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: recoverII
        formSkillParent: recoveryMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: cureAll
        formSkillParents: [recoveryMastery, cureII]
        requiredLevels: [8, 5]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: resurrection
        formSkillParent: recoverI
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: resurrection
        formSkillParent: recoverII
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: craftMana
        formSkillParent: recoveryMastery
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: craftMana
        formSkillParent: intBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: vesselOfMiracles
        formSkillParent: resurrection
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: venom
        formSkillParent: venomMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: venomMist
        formSkillParents: [venomMastery, venom]
        requiredLevels: [3, 3]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: venomInfecter
        formSkillParent: venomMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: venomAmplif
        formSkillParents: [venomMastery, venom]
        requiredLevels: [8, 5]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: resistElement
        formSkillParent: manaMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: lifeSalvation
        formSkillParent: manaMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: lifeSalvation
        formSkillParent: resurrection
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: healersConcentrate
        formSkillParent: manaMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: healingMana
        formSkillParent: manaMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: greatWorker
        formSkillParent: powBonus
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: swingCrush
        formSkillParent: powBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: earthBreaker
        formSkillParent: powBonus
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: enemySense
        formSkillParent: spdBonus
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: enemySense
        formSkillParent: intBonus
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: deadMansReact
        formSkillParent: spdBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: anatomySmallMonsters
        formSkillParent: intBonus
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: anatomyLargeMonsters
        formSkillParent: intBonus
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: invisibility
        formSkillParents: [intBonus, enemySense]
        requiredLevels: [3, 1]
        enabled: !root.isLoading
    }
}

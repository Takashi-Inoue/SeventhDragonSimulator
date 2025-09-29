import QtQuick
import QtQuick.Controls

FormSkillBase {
    id: root
    height: 492

    SkillListKnight {
        id: skillListKnight
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
                x: 8
                y: 8
                skill: root.skillListCommon.powBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: spdBonus
                anchors.left: fireBreak.left
                anchors.top: fireBreak.bottom
                anchors.topMargin: 30
                skill: root.skillListCommon.spdBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: intBonus
                anchors.left: clenching.left
                anchors.top: clenching.bottom
                anchors.topMargin: 30
                skill: root.skillListCommon.intBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shieldMastery
                anchors.left: shieldPunish.left
                anchors.top: shieldPunish.bottom
                anchors.topMargin: 30
                skill: skillListKnight.shieldMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: frontShield
                anchors.left: shieldPunish.right
                anchors.top: shieldPunish.top
                anchors.leftMargin: 50
                skill: skillListKnight.frontShield
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: backShield
                anchors.left: frontShield.left
                anchors.top: frontShield.bottom
                anchors.topMargin: 30
                skill: skillListKnight.backShield
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: fireBreak
                anchors.left: shieldMastery.left
                anchors.top: shieldMastery.bottom
                anchors.topMargin: 30
                skill: skillListKnight.fireBreak
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: freezeBreak
                anchors.left: fireBreak.right
                anchors.top: fireBreak.top
                anchors.leftMargin: 50
                skill: skillListKnight.freezeBreak
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shockBreak
                anchors.left: freezeBreak.right
                anchors.top: freezeBreak.top
                anchors.leftMargin: 50
                skill: skillListKnight.shockBreak
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shieldPunish
                anchors.left: powBonus.left
                anchors.top: powBonus.bottom
                anchors.topMargin: 30
                skill: skillListKnight.shieldPunish
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: ultimaGuard
                anchors.left: backShield.right
                anchors.top: backShield.top
                anchors.leftMargin: 50
                skill: skillListKnight.ultimaGuard
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: guardMastery
                anchors.left: seriousHeart.left
                anchors.bottom: seriousHeart.top
                anchors.bottomMargin: 30
                skill: skillListKnight.guardMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: defenseShift
                anchors.left: ultimaGuard.left
                anchors.top: frontShield.top
                skill: skillListKnight.defenseShift
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: parrying
                anchors.left: guardian.left
                anchors.top: guardian.bottom
                anchors.topMargin: 30
                skill: skillListKnight.parrying
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: manaParrying
                anchors.left: parrying.left
                anchors.top: parrying.bottom
                anchors.topMargin: 30
                skill: skillListKnight.manaParrying
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: seriousHeart
                anchors.left: defenseShift.right
                anchors.top: defenseShift.top
                anchors.leftMargin: 50
                skill: skillListKnight.seriousHeart
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: guardian
                anchors.left: toughnessHeart.left
                anchors.top: toughnessHeart.bottom
                anchors.topMargin: 30
                skill: skillListKnight.guardian
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: toughnessHeart
                anchors.left: guardMastery.right
                anchors.top: guardMastery.top
                anchors.leftMargin: 50
                skill: skillListKnight.toughnessHeart
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: ultimaParrying
                anchors.left: manaParrying.left
                anchors.top: manaParrying.bottom
                anchors.topMargin: 30
                skill: skillListKnight.ultimaParrying
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: chivalryMastery
                anchors.left: guardian.right
                anchors.top: guardian.top
                anchors.leftMargin: 50
                skill: skillListKnight.chivalryMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: knightBlade
                anchors.left: saveTheQueen.left
                anchors.bottom: saveTheQueen.top
                anchors.bottomMargin: 30
                skill: skillListKnight.knightBlade
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: saveTheQueen
                anchors.left: chivalryMastery.right
                anchors.top: chivalryMastery.top
                anchors.leftMargin: 50
                skill: skillListKnight.saveTheQueen
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: knightsFury
                anchors.left: saveTheQueen.left
                anchors.top: saveTheQueen.bottom
                anchors.topMargin: 30
                skill: skillListKnight.knightsFury
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: cure
                anchors.left: intBonus.right
                anchors.top: intBonus.top
                anchors.leftMargin: 50
                skill: skillListKnight.cure
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: cureII
                anchors.left: cure.left
                anchors.top: cure.bottom
                anchors.topMargin: 30
                skill: skillListKnight.cureII
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: clenching
                anchors.left: chivalryMastery.left
                anchors.top: chivalryMastery.bottom
                anchors.topMargin: 30
                skill: skillListKnight.clenching
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: defensiveArts
                anchors.top: powBonus.top
                anchors.horizontalCenterOffset: 25
                anchors.horizontalCenter: frontShield.right
                skill: skillListKnight.defensiveArts
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: provoke
                anchors.left: chivalryMastery.left
                anchors.bottom: chivalryMastery.top
                anchors.bottomMargin: 30
                skill: skillListKnight.provoke
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: guardReact
                anchors.left: spdBonus.right
                anchors.top: spdBonus.top
                anchors.leftMargin: 50
                skill: skillListKnight.guardReact
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: walkSafe
                anchors.left: intBonus.left
                anchors.top: intBonus.bottom
                anchors.topMargin: 30
                skill: skillListKnight.walkSafe
                Component.onCompleted: root.forms.push(this)
            }

            VLineItem {
                id: vLineShield
                anchors.left: shieldMastery.right
                anchors.top: frontShield.verticalCenter
                anchors.bottom: shieldMastery.verticalCenter
                anchors.leftMargin: 25
            }

            VLineItem {
                id: vLineGuard
                anchors.left: guardMastery.right
                anchors.top: guardMastery.verticalCenter
                anchors.bottom: ultimaParrying.verticalCenter
                anchors.leftMargin: 25
            }

            VLineItem {
                id: vLineChivalry
                anchors.left: chivalryMastery.right
                anchors.top: knightBlade.verticalCenter
                anchors.bottom: knightsFury.verticalCenter
                anchors.leftMargin: 25
            }

            VLineItem {
                id: vLineCure
                anchors.left: intBonus.right
                anchors.top: cure.verticalCenter
                anchors.bottom: cureII.verticalCenter
                anchors.leftMargin: 25
            }

            HLineItem {
                id: hLineGuard
                anchors.left: defenseShift.horizontalCenter
                anchors.right: seriousHeart.horizontalCenter
                anchors.top: guardMastery.bottom
                anchors.topMargin: 12
            }

            HLineItem {
                id: hLineShield
                anchors.left: fireBreak.horizontalCenter
                anchors.right: shockBreak.horizontalCenter
                anchors.top: shieldMastery.bottom
                anchors.topMargin: 12
            }

            FourDArrow {
                anchors.verticalCenter: powBonus.verticalCenter
                anchors.left: powBonus.right
                anchors.right: defensiveArts.left
                anchors.rightMargin: 2
                arrowDown: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.top: powBonus.bottom
                anchors.bottom: shieldPunish.top
                anchors.bottomMargin: 2
                anchors.horizontalCenter: powBonus.horizontalCenter
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: shieldMastery.horizontalCenter
                anchors.top: shieldPunish.bottom
                anchors.bottom: shieldMastery.top
                anchors.topMargin: 2
                arrowLeft: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: frontShield.verticalCenter
                anchors.left: vLineShield.right
                anchors.right: frontShield.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: backShield.verticalCenter
                anchors.left: shieldMastery.right
                anchors.right: backShield.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.top: shieldMastery.bottom
                anchors.bottom: fireBreak.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: shieldMastery.horizontalCenter
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: freezeBreak.horizontalCenter
                anchors.top: hLineShield.bottom
                anchors.bottom: freezeBreak.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: shockBreak.horizontalCenter
                anchors.top: hLineShield.top
                anchors.bottom: shockBreak.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: guardReact.verticalCenter
                anchors.left: spdBonus.right
                anchors.right: guardReact.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            HLineItem {
                id: hLineUltimaGuard
                anchors.left: vLineShield.right
                anchors.right: ultimaGuard.horizontalCenter
                anchors.bottom: ultimaGuard.top
                anchors.bottomMargin: 18
            }

            FourDArrow {
                anchors.top: hLineUltimaGuard.top
                anchors.bottom: ultimaGuard.top
                anchors.horizontalCenter: ultimaGuard.horizontalCenter
                anchors.rightMargin: 1
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: guardMastery.verticalCenter
                anchors.left: defensiveArts.right
                anchors.right: guardMastery.left
                anchors.leftMargin: 2
                arrowUp: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: guardMastery.horizontalCenter
                anchors.top: guardMastery.bottom
                anchors.bottom: seriousHeart.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: defenseShift.horizontalCenter
                anchors.top: hLineGuard.top
                anchors.bottom: defenseShift.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: seriousHeart.verticalCenter
                anchors.left: defenseShift.right
                anchors.right: seriousHeart.left
                anchors.leftMargin: 2
                arrowUp: false
                arrowDown: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: guardMastery.verticalCenter
                anchors.left: guardMastery.right
                anchors.right: toughnessHeart.left
                anchors.rightMargin: 2
                arrowDown: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: guardian.verticalCenter
                anchors.left: vLineGuard.right
                anchors.right: guardian.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: parrying.verticalCenter
                anchors.left: vLineGuard.right
                anchors.right: parrying.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: manaParrying.verticalCenter
                anchors.left: vLineGuard.right
                anchors.right: manaParrying.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: ultimaParrying.verticalCenter
                anchors.left: vLineGuard.right
                anchors.right: ultimaParrying.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.horizontalCenter: chivalryMastery.horizontalCenter
                anchors.top: provoke.bottom
                anchors.bottom: chivalryMastery.top
                anchors.topMargin: 2
                arrowRight: false
                arrowDown: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: chivalryMastery.horizontalCenter
                anchors.top: chivalryMastery.bottom
                anchors.bottom: clenching.top
                anchors.bottomMargin: 2
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: chivalryMastery.verticalCenter
                anchors.left: guardian.right
                anchors.right: chivalryMastery.left
                anchors.leftMargin: 2
                arrowRight: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: knightBlade.verticalCenter
                anchors.left: vLineChivalry.right
                anchors.right: knightBlade.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: saveTheQueen.verticalCenter
                anchors.left: chivalryMastery.right
                anchors.right: saveTheQueen.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: knightsFury.verticalCenter
                anchors.left: vLineChivalry.right
                anchors.right: knightsFury.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: cure.verticalCenter
                anchors.left: intBonus.right
                anchors.right: cure.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: cureII.verticalCenter
                anchors.left: vLineCure.right
                anchors.right: cure.left
                anchors.rightMargin: 2
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: intBonus.horizontalCenter
                anchors.top: intBonus.bottom
                anchors.bottom: walkSafe.top
                anchors.bottomMargin: 2
                arrowLeft: false
                arrowUp: false
                arrowRight: false
            }

            Label {
                text: "3"
                anchors.left: powBonus.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.bottom: shieldPunish.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: shieldMastery.horizontalCenter
                anchors.top: shieldPunish.bottom
                anchors.bottom: shieldMastery.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: fireBreak.horizontalCenter
                anchors.top: shieldMastery.bottom
                anchors.bottom: fireBreak.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: freezeBreak.horizontalCenter
                anchors.top: hLineShield.bottom
                anchors.bottom: freezeBreak.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: shockBreak.horizontalCenter
                anchors.top: hLineShield.bottom
                anchors.bottom: shockBreak.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: spdBonus.right
                anchors.right: guardReact.left
                anchors.bottom: guardReact.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: shieldMastery.right
                anchors.right: frontShield.left
                anchors.bottom: frontShield.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: shieldMastery.right
                anchors.right: backShield.left
                anchors.top: backShield.verticalCenter
                anchors.topMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: powBonus.right
                anchors.right: defensiveArts.left
                anchors.bottom: defensiveArts.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: defensiveArts.right
                anchors.right: guardMastery.left
                anchors.bottom: defensiveArts.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "10"
                anchors.left: ultimaGuard.horizontalCenter
                anchors.top: hLineUltimaGuard.bottom
                anchors.bottom: ultimaGuard.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: defenseShift.horizontalCenter
                anchors.top: hLineGuard.top
                anchors.bottom: defenseShift.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: defenseShift.right
                anchors.right: seriousHeart.left
                anchors.bottom: defenseShift.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: vLineGuard.right
                anchors.right: toughnessHeart.left
                anchors.top: toughnessHeart.verticalCenter
                anchors.topMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLineGuard.right
                anchors.right: guardian.left
                anchors.top: guardian.verticalCenter
                anchors.topMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineGuard.right
                anchors.right: parrying.left
                anchors.top: parrying.verticalCenter
                anchors.topMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineGuard.right
                anchors.right: manaParrying.left
                anchors.top: manaParrying.verticalCenter
                anchors.topMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "10"
                anchors.left: vLineGuard.right
                anchors.right: ultimaParrying.left
                anchors.top: ultimaParrying.verticalCenter
                anchors.topMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: guardian.right
                anchors.right: chivalryMastery.left
                anchors.bottom: chivalryMastery.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: provoke.horizontalCenter
                anchors.top: provoke.bottom
                anchors.bottom: chivalryMastery.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: provoke.horizontalCenter
                anchors.top: chivalryMastery.bottom
                anchors.bottom: clenching.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: walkSafe.horizontalCenter
                anchors.top: intBonus.bottom
                anchors.bottom: walkSafe.top
                anchors.leftMargin: 12
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
                text: "1"
                anchors.left: vLineChivalry.right
                anchors.right: knightBlade.left
                anchors.bottom: knightBlade.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineChivalry.right
                anchors.right: saveTheQueen.left
                anchors.bottom: saveTheQueen.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: vLineChivalry.right
                anchors.right: knightsFury.left
                anchors.bottom: knightsFury.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: seriousHeart.horizontalCenter
                anchors.top: guardMastery.bottom
                anchors.bottom: seriousHeart.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }
        }
    }

    SkillLink {
        formSkillChild: frontShield
        formSkillParent: shieldMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: backShield
        formSkillParent: shieldMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: fireBreak
        formSkillParent: shieldMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: freezeBreak
        formSkillParent: shieldMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: shockBreak
        formSkillParent: shieldMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: shieldPunish
        formSkillParents: [shieldMastery, powBonus]
        requiredLevels: [8, 3]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: ultimaGuard
        formSkillParent: shieldMastery
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: parrying
        formSkillParent: guardMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: manaParrying
        formSkillParent: guardMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: seriousHeart
        formSkillParent: guardMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: defensiveArts
        formSkillParents: [guardMastery, powBonus]
        requiredLevels: [5, 5]
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: defenseShift
        formSkillParents: [guardMastery, seriousHeart]
        requiredLevels: [5, 3]
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: guardian
        formSkillParents: [guardMastery, chivalryMastery]
        requiredLevels: [5, 3]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: toughnessHeart
        formSkillParent: guardMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: ultimaParrying
        formSkillParent: guardMastery
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: knightBlade
        formSkillParent: chivalryMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: saveTheQueen
        formSkillParent: chivalryMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: provoke
        formSkillParent: chivalryMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: clenching
        formSkillParent: chivalryMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: knightsFury
        formSkillParent: chivalryMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: guardReact
        formSkillParent: spdBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: cure
        formSkillParent: intBonus
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: cureII
        formSkillParent: intBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: walkSafe
        formSkillParent: intBonus
        requiredLevel: 3
        enabled: !root.isLoading
    }
}

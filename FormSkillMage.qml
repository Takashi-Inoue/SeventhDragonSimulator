import QtQuick
import QtQuick.Controls

FormSkillBase {
    id: root
    height: 492

    property color flameColor: "#FF8888"
    property color freezeColor: "#8888FF"
    property color shockColor: "#CCCC44"

    SkillListMage {
        id: skillListMage
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
                anchors.left: freezeVeil.left
                anchors.top: freezeVeil.bottom
                anchors.topMargin: 30
                skill: root.skillListCommon.powBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: spdBonus
                anchors.left: powBonus.right
                anchors.top: powBonus.top
                anchors.leftMargin: 50
                skill: root.skillListCommon.spdBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: intBonus
                anchors.left: manaBullet.left
                anchors.top: manaBullet.bottom
                anchors.topMargin: 30
                skill: root.skillListCommon.intBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: flameMastery
                x: 8
                y: 8
                skill: skillListMage.flameMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: flame
                anchors.left: flameVeil.right
                anchors.top: flameVeil.top
                anchors.leftMargin: 50
                skill: skillListMage.flame
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: volcano
                anchors.left: flame.right
                anchors.top: flame.top
                anchors.leftMargin: 50
                skill: skillListMage.volcano
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: flameVeil
                anchors.left: flameMastery.left
                anchors.top: flameMastery.bottom
                anchors.topMargin: 30
                skill: skillListMage.flameVeil
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: theCreationOfPurgatory
                anchors.left: volcano.left
                anchors.bottom: volcano.top
                anchors.bottomMargin: 30
                skill: skillListMage.theCreationOfPurgatory
                Component.onCompleted: root.forms.push(this)
                fontSize: 11
            }

            FormSkill {
                id: freezeMastery
                anchors.left: flameVeil.left
                anchors.top: flameVeil.bottom
                anchors.topMargin: 30
                skill: skillListMage.freezeMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: freeze
                anchors.left: freezeVeil.right
                anchors.top: freezeVeil.top
                anchors.leftMargin: 50
                skill: skillListMage.freeze
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: blizzard
                anchors.left: freeze.right
                anchors.top: freeze.top
                anchors.leftMargin: 50
                skill: skillListMage.blizzard
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: freezeVeil
                anchors.left: freezeMastery.left
                anchors.top: freezeMastery.bottom
                anchors.topMargin: 30
                skill: skillListMage.freezeVeil
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: theCreationOfAbsoluteZero
                anchors.left: blizzard.left
                anchors.bottom: blizzard.top
                anchors.bottomMargin: 30
                skill: skillListMage.theCreationOfAbsoluteZero
                Component.onCompleted: root.forms.push(this)
                fontSize: 10
            }

            FormSkill {
                id: shockMastery
                anchors.left: theCreationOfPurgatory.right
                anchors.top: theCreationOfPurgatory.top
                anchors.leftMargin: 50
                skill: skillListMage.shockMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shock
                anchors.left: shockVeil.right
                anchors.top: shockVeil.top
                anchors.leftMargin: 50
                skill: skillListMage.shock
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: boltStorm
                anchors.left: shock.right
                anchors.top: shock.top
                anchors.leftMargin: 50
                skill: skillListMage.boltStorm
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shockVeil
                anchors.left: shockMastery.left
                anchors.top: shockMastery.bottom
                anchors.topMargin: 30
                skill: skillListMage.shockVeil
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: theCreationOfADivineRoar
                anchors.left: boltStorm.left
                anchors.bottom: boltStorm.top
                anchors.bottomMargin: 30
                skill: skillListMage.theCreationOfADivineRoar
                Component.onCompleted: root.forms.push(this)
                fontSize: 10
            }

            FormSkill {
                id: manaMastery
                anchors.left: shockVeil.left
                anchors.top: shockVeil.bottom
                anchors.topMargin: 30
                skill: skillListMage.manaMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: manaBullet
                anchors.left: healingMana.right
                anchors.top: healingMana.top
                anchors.leftMargin: 50
                skill: skillListMage.manaBullet
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: heavensPress
                anchors.left: manaBullet.right
                anchors.top: manaBullet.top
                anchors.leftMargin: 50
                skill: skillListMage.heavensPress
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: healingMana
                anchors.left: manaMastery.left
                anchors.top: manaMastery.bottom
                anchors.topMargin: 30
                skill: skillListMage.healingMana
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: magesConcentration
                anchors.left: manaMastery.right
                anchors.top: manaMastery.top
                anchors.leftMargin: 50
                skill: skillListMage.magesConcentration
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: planetMastery
                anchors.left: boltStorm.right
                anchors.top: boltStorm.top
                anchors.leftMargin: 50
                skill: skillListMage.planetMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shieldCraft
                anchors.left: planetMastery.left
                anchors.bottom: planetMastery.top
                anchors.bottomMargin: 30
                skill: skillListMage.shieldCraft
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: theEndOfWorld
                anchors.left: exitDungeon.left
                anchors.top: exitDungeon.bottom
                anchors.topMargin: 30
                skill: skillListMage.theEndOfWorld
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: portalJump
                anchors.right: exitDungeon.left
                anchors.top: exitDungeon.top
                anchors.rightMargin: 50
                skill: skillListMage.portalJump
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: exitDungeon
                anchors.left: planetMastery.left
                anchors.top: planetMastery.bottom
                anchors.topMargin: 30
                skill: skillListMage.exitDungeon
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: pharmaceuticals
                anchors.left: intBonus.right
                anchors.top: intBonus.top
                anchors.leftMargin: 50
                skill: skillListMage.pharmaceuticals
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: discerningJudgment
                anchors.right: intBonus.left
                anchors.top: intBonus.top
                anchors.rightMargin: 50
                skill: skillListMage.discerningJudgment
                Component.onCompleted: root.forms.push(this)
            }

            VLineItem {
                id: vLinePlanet
                anchors.left: portalJump.right
                anchors.top: hLinePlanet.top
                anchors.bottom: theEndOfWorld.verticalCenter
                anchors.leftMargin: 25
            }

            VLineItem {
                id: vLineFlameEx1
                anchors.right: flame.left
                anchors.top: theCreationOfPurgatory.verticalCenter
                anchors.bottom: flame.verticalCenter
                anchors.rightMargin: 25
                color: root.flameColor
            }

            HLineItem {
                anchors.top: flame.verticalCenter
                anchors.left: vLineFlameEx1.right
                anchors.right: flame.left
                color: root.flameColor
            }

            VLineItem {
                id: vLineFlameEx2
                anchors.left: volcano.right
                anchors.top: theCreationOfPurgatory.verticalCenter
                anchors.bottom: volcano.verticalCenter
                anchors.leftMargin: 25
                color: root.flameColor
            }

            HLineItem {
                anchors.top: volcano.verticalCenter
                anchors.left: volcano.right
                anchors.right: vLineFlameEx2.left
                color: root.flameColor
            }

            FourDArrow {
                anchors.verticalCenter: theCreationOfPurgatory.verticalCenter
                anchors.left: theCreationOfPurgatory.right
                anchors.right: vLineFlameEx2.left
                arrowUp: false
                arrowRight: false
                arrowDown: false
                color: root.flameColor
            }

            VLineItem {
                id: vLineFreezeEx1
                anchors.right: freeze.left
                anchors.top: theCreationOfAbsoluteZero.verticalCenter
                anchors.bottom: freeze.verticalCenter
                anchors.rightMargin: 25
                color: root.freezeColor
            }

            HLineItem {
                anchors.top: freeze.verticalCenter
                anchors.left: vLineFreezeEx1.right
                anchors.right: freeze.left
                color: root.freezeColor
            }

            VLineItem {
                id: vLineFreezeEx2
                anchors.left: blizzard.right
                anchors.top: theCreationOfAbsoluteZero.verticalCenter
                anchors.bottom: blizzard.verticalCenter
                anchors.leftMargin: 25
                color: root.freezeColor
            }

            HLineItem {
                anchors.top: blizzard.verticalCenter
                anchors.left: blizzard.right
                anchors.right: vLineFreezeEx2.left
                color: root.freezeColor
            }

            FourDArrow {
                anchors.verticalCenter: theCreationOfAbsoluteZero.verticalCenter
                anchors.left: theCreationOfAbsoluteZero.right
                anchors.right: vLineFreezeEx2.left
                arrowUp: false
                arrowRight: false
                arrowDown: false
                color: root.freezeColor
            }

            VLineItem {
                id: vLineShockEx1
                anchors.right: shock.left
                anchors.top: theCreationOfADivineRoar.verticalCenter
                anchors.bottom: shock.verticalCenter
                anchors.rightMargin: 25
                color: root.shockColor
            }

            HLineItem {
                anchors.top: shock.verticalCenter
                anchors.left: vLineShockEx1.right
                anchors.right: shock.left
                color: root.shockColor
            }

            VLineItem {
                id: vLineShockEx2
                anchors.left: boltStorm.right
                anchors.top: theCreationOfADivineRoar.verticalCenter
                anchors.bottom: boltStorm.verticalCenter
                anchors.leftMargin: 25
                color: root.shockColor
            }

            HLineItem {
                anchors.top: boltStorm.verticalCenter
                anchors.left: boltStorm.right
                anchors.right: vLineShockEx2.left
                color: root.shockColor
            }

            FourDArrow {
                anchors.verticalCenter: theCreationOfADivineRoar.verticalCenter
                anchors.left: theCreationOfADivineRoar.right
                anchors.right: vLineShockEx2.left
                arrowUp: false
                arrowRight: false
                arrowDown: false
                color: root.shockColor
            }

            HLineItem {
                id: hLinePlanetEx
                anchors.top: manaBullet.bottom
                anchors.left: manaBullet.horizontalCenter
                anchors.right: theEndOfWorld.horizontalCenter
                anchors.topMargin: 22
            }

            VLineItem {
                anchors.top: manaBullet.bottom
                anchors.left: manaBullet.horizontalCenter
                anchors.bottom: hLinePlanetEx.top
            }

            VLineItem {
                anchors.top: heavensPress.bottom
                anchors.left: heavensPress.horizontalCenter
                anchors.bottom: hLinePlanetEx.top
            }

            FourDArrow {
                anchors.top: theEndOfWorld.bottom
                anchors.horizontalCenter: theEndOfWorld.horizontalCenter
                anchors.bottom: hLinePlanetEx.top
                arrowRight: false
                arrowLeft: false
                arrowDown: false
            }

            HLineItem {
                id: hLineFlame
                anchors.left: flameMastery.horizontalCenter
                anchors.right: volcano.horizontalCenter
                anchors.top: flameMastery.bottom
                anchors.topMargin: 8
            }

            HLineItem {
                id: hLineFreeze
                anchors.left: freezeMastery.horizontalCenter
                anchors.right: blizzard.horizontalCenter
                anchors.top: freezeMastery.bottom
                anchors.topMargin: 8
            }

            HLineItem {
                id: hLineShock
                anchors.left: shockMastery.horizontalCenter
                anchors.right: boltStorm.horizontalCenter
                anchors.top: shockMastery.bottom
                anchors.topMargin: 8
            }

            HLineItem {
                id: hLineMana
                anchors.left: manaMastery.horizontalCenter
                anchors.right: heavensPress.horizontalCenter
                anchors.top: manaMastery.bottom
                anchors.topMargin: 8
            }

            HLineItem {
                id: hLinePlanet
                anchors.left: portalJump.horizontalCenter
                anchors.right: planetMastery.horizontalCenter
                anchors.top: planetMastery.bottom
                anchors.topMargin: 12
            }

            FourDArrow {
                anchors.horizontalCenter: flameMastery.horizontalCenter
                anchors.top: flameMastery.bottom
                anchors.bottom: flameVeil.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.horizontalCenter: flame.horizontalCenter
                anchors.top: hLineFlame.bottom
                anchors.bottom: flame.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.horizontalCenter: volcano.horizontalCenter
                anchors.top: hLineFlame.bottom
                anchors.bottom: volcano.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: flameMastery.verticalCenter
                anchors.left: flameMastery.right
                anchors.right: theCreationOfPurgatory.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
                color: root.flameColor
            }

            FourDArrow {
                anchors.horizontalCenter: freezeMastery.horizontalCenter
                anchors.top: freezeMastery.bottom
                anchors.bottom: freezeVeil.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.horizontalCenter: freeze.horizontalCenter
                anchors.top: hLineFreeze.bottom
                anchors.bottom: freeze.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.horizontalCenter: blizzard.horizontalCenter
                anchors.top: hLineFreeze.bottom
                anchors.bottom: blizzard.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: freezeMastery.verticalCenter
                anchors.left: freezeMastery.right
                anchors.right: theCreationOfAbsoluteZero.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
                color: root.freezeColor
            }

            FourDArrow {
                anchors.horizontalCenter: shockMastery.horizontalCenter
                anchors.top: shockMastery.bottom
                anchors.bottom: shockVeil.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.horizontalCenter: shock.horizontalCenter
                anchors.top: hLineShock.bottom
                anchors.bottom: shock.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.horizontalCenter: boltStorm.horizontalCenter
                anchors.top: hLineShock.bottom
                anchors.bottom: boltStorm.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: shockMastery.verticalCenter
                anchors.left: shockMastery.right
                anchors.right: theCreationOfADivineRoar.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
                color: root.shockColor
            }

            FourDArrow {
                anchors.horizontalCenter: manaMastery.horizontalCenter
                anchors.top: manaMastery.bottom
                anchors.bottom: healingMana.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.horizontalCenter: manaBullet.horizontalCenter
                anchors.top: hLineMana.bottom
                anchors.bottom: manaBullet.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.horizontalCenter: heavensPress.horizontalCenter
                anchors.top: hLineMana.bottom
                anchors.bottom: heavensPress.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: manaMastery.verticalCenter
                anchors.left: manaMastery.right
                anchors.right: magesConcentration.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: flame.verticalCenter
                anchors.left: flame.right
                anchors.right: volcano.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: freeze.verticalCenter
                anchors.left: freeze.right
                anchors.right: blizzard.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: shock.verticalCenter
                anchors.left: shock.right
                anchors.right: boltStorm.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: manaBullet.verticalCenter
                anchors.left: manaBullet.right
                anchors.right: heavensPress.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: intBonus.verticalCenter
                anchors.left: intBonus.right
                anchors.right: pharmaceuticals.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: intBonus.verticalCenter
                anchors.left: discerningJudgment.right
                anchors.right: intBonus.left
                anchors.leftMargin: 2
                arrowUp: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: planetMastery.horizontalCenter
                anchors.top: planetMastery.bottom
                anchors.bottom: exitDungeon.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.horizontalCenter: portalJump.horizontalCenter
                anchors.top: hLinePlanet.bottom
                anchors.bottom: portalJump.top
                anchors.bottomMargin: 1
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: theEndOfWorld.verticalCenter
                anchors.left: vLinePlanet.right
                anchors.right: theEndOfWorld.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.horizontalCenter: shieldCraft.horizontalCenter
                anchors.top: shieldCraft.bottom
                anchors.bottom: planetMastery.top
                anchors.topMargin: 2
                arrowDown: false
                arrowLeft: false
                arrowRight: false
            }

            Label {
                text: "3"
                anchors.right: flameVeil.horizontalCenter
                anchors.top: flameMastery.bottom
                anchors.bottom: flameVeil.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: flame.horizontalCenter
                anchors.top: hLineFlame.bottom
                anchors.bottom: flame.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: volcano.horizontalCenter
                anchors.top: hLineFlame.bottom
                anchors.bottom: volcano.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: flame.right
                anchors.right: volcano.left
                anchors.bottom: volcano.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: flameMastery.right
                anchors.right: vLineFlameEx1.left
                anchors.bottom: flameMastery.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLineFlameEx1.right
                anchors.right: flame.left
                anchors.bottom: flame.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: volcano.right
                anchors.right: vLineFlameEx2.left
                anchors.bottom: volcano.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.right: freezeVeil.horizontalCenter
                anchors.top: freezeMastery.bottom
                anchors.bottom: freezeVeil.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: freeze.horizontalCenter
                anchors.top: hLineFreeze.bottom
                anchors.bottom: freeze.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: blizzard.horizontalCenter
                anchors.top: hLineFreeze.bottom
                anchors.bottom: blizzard.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: freeze.right
                anchors.right: blizzard.left
                anchors.bottom: blizzard.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: freezeMastery.right
                anchors.right: vLineFreezeEx1.left
                anchors.bottom: freezeMastery.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLineFreezeEx1.right
                anchors.right: freeze.left
                anchors.bottom: freeze.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: blizzard.right
                anchors.right: vLineFreezeEx2.left
                anchors.bottom: blizzard.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.right: shockVeil.horizontalCenter
                anchors.top: shockMastery.bottom
                anchors.bottom: shockVeil.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: shock.horizontalCenter
                anchors.top: hLineShock.bottom
                anchors.bottom: shock.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: boltStorm.horizontalCenter
                anchors.top: hLineShock.bottom
                anchors.bottom: boltStorm.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: shock.right
                anchors.right: boltStorm.left
                anchors.bottom: boltStorm.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: shockMastery.right
                anchors.right: vLineShockEx1.left
                anchors.bottom: shockMastery.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLineShockEx1.right
                anchors.right: shock.left
                anchors.bottom: shock.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: boltStorm.right
                anchors.right: vLineShockEx2.left
                anchors.bottom: boltStorm.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "4"
                anchors.right: healingMana.horizontalCenter
                anchors.top: manaMastery.bottom
                anchors.bottom: healingMana.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: manaBullet.horizontalCenter
                anchors.top: hLineMana.bottom
                anchors.bottom: manaBullet.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: heavensPress.horizontalCenter
                anchors.top: hLineMana.bottom
                anchors.bottom: heavensPress.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: manaBullet.right
                anchors.right: heavensPress.left
                anchors.bottom: heavensPress.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: manaMastery.right
                anchors.right: magesConcentration.left
                anchors.bottom: manaMastery.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: discerningJudgment.right
                anchors.right: intBonus.left
                anchors.bottom: discerningJudgment.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: intBonus.right
                anchors.right: pharmaceuticals.left
                anchors.bottom: pharmaceuticals.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "4"
                anchors.left: shieldCraft.horizontalCenter
                anchors.top: shieldCraft.bottom
                anchors.bottom: planetMastery.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: planetMastery.horizontalCenter
                anchors.top: planetMastery.bottom
                anchors.bottom: exitDungeon.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.right: portalJump.horizontalCenter
                anchors.top: boltStorm.bottom
                anchors.bottom: portalJump.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: manaBullet.horizontalCenter
                anchors.top: manaBullet.bottom
                anchors.bottom: hLinePlanetEx.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: heavensPress.horizontalCenter
                anchors.top: heavensPress.bottom
                anchors.bottom: hLinePlanetEx.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLinePlanet.right
                anchors.right: theEndOfWorld.left
                anchors.bottom: theEndOfWorld.verticalCenter
                anchors.bottomMargin: 6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }
        }
    }

    SkillLink {
        formSkillChild: flame
        formSkillParent: flameMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: flameVeil
        formSkillParent: flameMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: volcano
        formSkillParents: [flameMastery, flame]
        requiredLevels: [3, 3]
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: theCreationOfPurgatory
        formSkillParents: [flameMastery, flame, volcano]
        requiredLevels: [5, 5, 5]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: freeze
        formSkillParent: freezeMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: freezeVeil
        formSkillParent: freezeMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: blizzard
        formSkillParents: [freezeMastery, freeze]
        requiredLevels: [3, 3]
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: theCreationOfAbsoluteZero
        formSkillParents: [freezeMastery, freeze, blizzard]
        requiredLevels: [5, 5, 5]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: shock
        formSkillParent: shockMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: shockVeil
        formSkillParent: shockMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: boltStorm
        formSkillParents: [shockMastery, shock]
        requiredLevels: [3, 3]
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: theCreationOfADivineRoar
        formSkillParents: [shockMastery, shock, boltStorm]
        requiredLevels: [5, 5, 5]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: manaBullet
        formSkillParent: manaMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: heavensPress
        formSkillParents: [manaMastery, manaBullet]
        requiredLevels: [3, 3]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: healingMana
        formSkillParent: manaMastery
        requiredLevel: 4
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: magesConcentration
        formSkillParent: manaMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: portalJump
        formSkillParent: planetMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: exitDungeon
        formSkillParent: planetMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: shieldCraft
        formSkillParent: planetMastery
        requiredLevel: 4
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: theEndOfWorld
        formSkillParents: [planetMastery, manaBullet, heavensPress]
        requiredLevels: [5, 5, 5]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: pharmaceuticals
        formSkillParent: intBonus
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: discerningJudgment
        formSkillParent: intBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }
}

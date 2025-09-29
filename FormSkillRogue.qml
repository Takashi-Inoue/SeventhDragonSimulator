import QtQuick
import QtQuick.Controls

FormSkillBase {
    id: root
    height: 492

    SkillListRogue {
        id: skillListRogue
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
                anchors.left: casualBehavior.right
                anchors.top: casualBehavior.top
                anchors.leftMargin: 50
                skill: root.skillListCommon.powBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: spdBonus
                anchors.left: replaceFirst.left
                anchors.bottom: replaceFirst.top
                anchors.bottomMargin: 30
                skill: root.skillListCommon.spdBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: intBonus
                anchors.left: sacrifice.right
                anchors.top: sacrifice.top
                anchors.leftMargin: 50
                skill: root.skillListCommon.intBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: swordMastery
                anchors.left: swordTrap.right
                anchors.top: swordTrap.top
                anchors.leftMargin: 50
                skill: skillListRogue.swordMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: tarantella
                anchors.left: scorpio.left
                anchors.bottom: scorpio.top
                anchors.bottomMargin: 30
                skill: skillListRogue.tarantella
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: scorpio
                anchors.left: swordMastery.right
                anchors.top: swordMastery.top
                anchors.leftMargin: 50
                skill: skillListRogue.scorpio
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: vampire
                anchors.left: scorpio.left
                anchors.top: scorpio.bottom
                anchors.topMargin: 30
                skill: skillListRogue.vampire
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: daggerFetish
                anchors.left: swordMastery.left
                anchors.top: swordMastery.bottom
                anchors.topMargin: 30
                skill: skillListRogue.daggerFetish
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: swordTrap
                anchors.left: powBonus.left
                anchors.top: powBonus.bottom
                anchors.topMargin: 30
                skill: skillListRogue.swordTrap
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: maskedPain
                anchors.left: swordMastery.left
                anchors.bottom: swordMastery.top
                anchors.bottomMargin: 30
                skill: skillListRogue.maskedPain
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: tripleKiss
                anchors.left: maskedPain.left
                anchors.bottom: maskedPain.top
                anchors.bottomMargin: 30
                skill: skillListRogue.tripleKiss
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: ecstasyKiss
                anchors.left: tripleKiss.right
                anchors.top: tripleKiss.top
                anchors.leftMargin: 50
                skill: skillListRogue.ecstasyKiss
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shotMastery
                anchors.left: seeker.left
                anchors.top: seeker.bottom
                anchors.topMargin: 30
                skill: skillListRogue.shotMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: seeker
                anchors.left: killersAttract.left
                anchors.top: killersAttract.bottom
                anchors.topMargin: 30
                skill: skillListRogue.seeker
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: dualShot
                anchors.left: shotMastery.left
                anchors.top: shotMastery.bottom
                anchors.topMargin: 30
                skill: skillListRogue.dualShot
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: sleepShot
                anchors.left: dualShot.right
                anchors.top: dualShot.top
                anchors.leftMargin: 50
                skill: skillListRogue.sleepShot
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: panicShot
                anchors.left: sleepShot.right
                anchors.top: sleepShot.top
                anchors.leftMargin: 50
                skill: skillListRogue.panicShot
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: headShot
                anchors.left: panicShot.right
                anchors.top: panicShot.top
                anchors.leftMargin: 50
                skill: skillListRogue.headShot
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: sonicShot
                anchors.left: headShot.right
                anchors.top: headShot.top
                anchors.leftMargin: 50
                skill: skillListRogue.sonicShot
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: fallingStar
                anchors.left: shotMastery.right
                anchors.top: shotMastery.top
                anchors.leftMargin: 50
                skill: skillListRogue.fallingStar
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: footworkMastery
                anchors.left: tarantella.right
                anchors.top: tarantella.top
                anchors.leftMargin: 50
                skill: skillListRogue.footworkMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: sandKick
                anchors.left: replaceFirst.left
                anchors.top: replaceFirst.bottom
                anchors.topMargin: 30
                skill: skillListRogue.sandKick
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: replaceFirst
                anchors.left: footworkMastery.right
                anchors.top: footworkMastery.top
                anchors.leftMargin: 50
                skill: skillListRogue.replaceFirst
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: escapeStance
                anchors.left: sandKick.left
                anchors.top: sandKick.bottom
                anchors.topMargin: 30
                skill: skillListRogue.escapeStance
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: hiding
                anchors.left: footworkMastery.left
                anchors.top: footworkMastery.bottom
                anchors.topMargin: 30
                skill: skillListRogue.hiding
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: sacrifice
                x: 8
                y: 8
                skill: skillListRogue.sacrifice
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: killersAttract
                anchors.left: sacrifice.left
                anchors.top: sacrifice.bottom
                anchors.topMargin: 30
                skill: skillListRogue.killersAttract
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: roguesEye
                anchors.left: intBonus.right
                anchors.top: intBonus.top
                anchors.leftMargin: 50
                skill: skillListRogue.roguesEye
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: casualBehavior
                anchors.left: intBonus.left
                anchors.top: intBonus.bottom
                anchors.topMargin: 30
                skill: skillListRogue.casualBehavior
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: trickReact
                anchors.right: spdBonus.left
                anchors.top: spdBonus.top
                anchors.rightMargin: 50
                skill: skillListRogue.trickReact
                Component.onCompleted: root.forms.push(this)
            }

            VLineItem {
                id: vLineSword
                anchors.right: tarantella.left
                anchors.top: tarantella.verticalCenter
                anchors.bottom: vampire.verticalCenter
                anchors.rightMargin: 25
            }

            VLineItem {
                id: vLineFootwork
                anchors.left: footworkMastery.right
                anchors.top: footworkMastery.verticalCenter
                anchors.bottom: escapeStance.verticalCenter
                anchors.leftMargin: 25
            }

            HLineItem {
                id: hLineShot
                anchors.top: shotMastery.bottom
                anchors.left: shotMastery.horizontalCenter
                anchors.right: sonicShot.horizontalCenter
                anchors.topMargin: 12
            }

            FourDArrow {
                anchors.horizontalCenter: shotMastery.horizontalCenter
                anchors.top: seeker.bottom
                anchors.bottom: shotMastery.top
                anchors.topMargin: 1
                arrowLeft: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.top: shotMastery.bottom
                anchors.bottom: dualShot.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: shotMastery.horizontalCenter
                arrowLeft: false
                arrowUp: false
                arrowRight: false
            }

            FourDArrow {
                anchors.top: hLineShot.bottom
                anchors.bottom: sleepShot.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: sleepShot.horizontalCenter
                arrowLeft: false
                arrowUp: false
                arrowRight: false
            }

            FourDArrow {
                anchors.top: hLineShot.bottom
                anchors.bottom: panicShot.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: panicShot.horizontalCenter
                arrowLeft: false
                arrowUp: false
                arrowRight: false
            }

            FourDArrow {
                anchors.top: hLineShot.bottom
                anchors.bottom: headShot.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: headShot.horizontalCenter
                arrowLeft: false
                arrowUp: false
                arrowRight: false
            }

            FourDArrow {
                anchors.top: hLineShot.bottom
                anchors.bottom: sonicShot.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: sonicShot.horizontalCenter
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: shotMastery.verticalCenter
                anchors.left: shotMastery.right
                anchors.right: fallingStar.left
                anchors.leftMargin: 0
                anchors.rightMargin: 1
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: intBonus.verticalCenter
                anchors.left: intBonus.right
                anchors.right: roguesEye.left
                anchors.rightMargin: 1
                arrowLeft: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.top: intBonus.bottom
                anchors.bottom: casualBehavior.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: intBonus.horizontalCenter
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: powBonus.verticalCenter
                anchors.left: casualBehavior.right
                anchors.right: powBonus.left
                anchors.leftMargin: 1
                arrowRight: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.top: powBonus.bottom
                anchors.bottom: swordTrap.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: powBonus.horizontalCenter
                arrowRight: false
                arrowLeft: false
                arrowUp: false
            }

            FourDArrow {
                anchors.verticalCenter: swordMastery.verticalCenter
                anchors.left: swordTrap.right
                anchors.right: swordMastery.left
                anchors.leftMargin: 1
                arrowRight: false
                arrowDown: false
                arrowUp: false
            }

            FourDArrow {
                anchors.top: swordMastery.bottom
                anchors.bottom: daggerFetish.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: swordMastery.horizontalCenter
                arrowLeft: false
                arrowRight: false
                arrowUp: false
            }

            FourDArrow {
                anchors.top: maskedPain.bottom
                anchors.bottom: swordMastery.top
                anchors.topMargin: 1
                anchors.horizontalCenter: swordMastery.horizontalCenter
                arrowLeft: false
                arrowRight: false
                arrowDown: false
            }

            FourDArrow {
                anchors.top: tripleKiss.bottom
                anchors.bottom: maskedPain.top
                anchors.topMargin: 1
                anchors.horizontalCenter: maskedPain.horizontalCenter
                arrowDown: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.left: tripleKiss.right
                anchors.right: ecstasyKiss.left
                anchors.top: tripleKiss.bottom
                anchors.bottom: maskedPain.top
                anchors.leftMargin: -5
                anchors.rightMargin: -5
                rotation: -32
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: tarantella.verticalCenter
                anchors.left: vLineSword.right
                anchors.right: tarantella.left
                anchors.rightMargin: 1
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: scorpio.verticalCenter
                anchors.left: swordMastery.right
                anchors.right: scorpio.left
                anchors.rightMargin: 1
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: vampire.verticalCenter
                anchors.left: vLineSword.right
                anchors.right: vampire.left
                anchors.rightMargin: 1
                arrowLeft: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: spdBonus.verticalCenter
                anchors.left: trickReact.right
                anchors.right: spdBonus.left
                anchors.leftMargin: 1
                arrowRight: false
                arrowUp: false
                arrowDown: false
            }

            FourDArrow {
                anchors.top: spdBonus.bottom
                anchors.bottom: replaceFirst.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: spdBonus.horizontalCenter
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: footworkMastery.verticalCenter
                anchors.left: footworkMastery.right
                anchors.right: replaceFirst.left
                anchors.rightMargin: 1
                arrowDown: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.top: footworkMastery.bottom
                anchors.bottom: hiding.top
                anchors.bottomMargin: 1
                anchors.horizontalCenter: footworkMastery.horizontalCenter
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: sandKick.verticalCenter
                anchors.left: vLineFootwork.right
                anchors.right: sandKick.left
                anchors.rightMargin: 1
                arrowUp: false
                arrowDown: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: escapeStance.verticalCenter
                anchors.left: vLineFootwork.right
                anchors.right: escapeStance.left
                anchors.rightMargin: 1
                arrowUp: false
                arrowDown: false
                arrowLeft: false
            }

            Label {
                text: "1"
                anchors.right: seeker.horizontalCenter
                anchors.top: seeker.bottom
                anchors.bottom: shotMastery.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.right: dualShot.horizontalCenter
                anchors.top: shotMastery.bottom
                anchors.bottom: dualShot.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.right: sleepShot.horizontalCenter
                anchors.top: hLineShot.bottom
                anchors.bottom: sleepShot.top
                anchors.rightMargin: 12
                anchors.bottomMargin: 2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.right: panicShot.horizontalCenter
                anchors.top: hLineShot.bottom
                anchors.bottom: panicShot.top
                anchors.rightMargin: 12
                anchors.bottomMargin: 2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: headShot.horizontalCenter
                anchors.top: hLineShot.bottom
                anchors.bottom: headShot.top
                anchors.rightMargin: 12
                anchors.bottomMargin: 2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: sonicShot.horizontalCenter
                anchors.top: hLineShot.bottom
                anchors.bottom: sonicShot.top
                anchors.rightMargin: 12
                anchors.bottomMargin: 2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "10"
                anchors.left: shotMastery.right
                anchors.right: fallingStar.left
                anchors.bottom: fallingStar.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: intBonus.right
                anchors.right: roguesEye.left
                anchors.bottom: roguesEye.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: casualBehavior.horizontalCenter
                anchors.top: intBonus.bottom
                anchors.bottom: casualBehavior.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: casualBehavior.right
                anchors.right: powBonus.left
                anchors.bottom: casualBehavior.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: swordTrap.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.bottom: swordTrap.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: swordTrap.right
                anchors.right: swordMastery.left
                anchors.bottom: swordMastery.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: daggerFetish.horizontalCenter
                anchors.top: swordMastery.bottom
                anchors.bottom: daggerFetish.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: maskedPain.horizontalCenter
                anchors.top: maskedPain.bottom
                anchors.bottom: swordMastery.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: tripleKiss.horizontalCenter
                anchors.top: tripleKiss.bottom
                anchors.bottom: maskedPain.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: maskedPain.right
                anchors.right: ecstasyKiss.left
                anchors.bottom: ecstasyKiss.bottom
                anchors.bottomMargin: -10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: vLineSword.right
                anchors.right: tarantella.left
                anchors.top: tarantella.verticalCenter
                anchors.topMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineSword.right
                anchors.right: scorpio.left
                anchors.bottom: scorpio.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineSword.right
                anchors.right: vampire.left
                anchors.bottom: vampire.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: trickReact.right
                anchors.right: spdBonus.left
                anchors.bottom: trickReact.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.right: replaceFirst.horizontalCenter
                anchors.top: spdBonus.bottom
                anchors.bottom: replaceFirst.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: footworkMastery.right
                anchors.right: replaceFirst.left
                anchors.bottom: replaceFirst.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "8"
                anchors.left: footworkMastery.horizontalCenter
                anchors.top: footworkMastery.bottom
                anchors.bottom: hiding.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineFootwork.right
                anchors.right: sandKick.left
                anchors.bottom: sandKick.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: vLineFootwork.right
                anchors.right: escapeStance.left
                anchors.bottom: escapeStance.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }
        }
    }

    SkillLink {
        formSkillChild: tarantella
        formSkillParent: swordMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: scorpio
        formSkillParent: swordMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: vampire
        formSkillParent: swordMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: daggerFetish
        formSkillParent: swordMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: swordTrap
        formSkillParents: [swordMastery, powBonus]
        requiredLevels: [5, 5]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: maskedPain
        formSkillParent: swordMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: tripleKiss
        formSkillParent: maskedPain
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: ecstasyKiss
        formSkillParent: maskedPain
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: seeker
        formSkillParent: shotMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: sleepShot
        formSkillParent: shotMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: panicShot
        formSkillParent: shotMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: headShot
        formSkillParent: shotMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: sonicShot
        formSkillParent: shotMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: dualShot
        formSkillParent: shotMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: fallingStar
        formSkillParent: shotMastery
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: sandKick
        formSkillParent: footworkMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: replaceFirst
        formSkillParents: [footworkMastery, spdBonus]
        requiredLevels: [3, 3]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: escapeStance
        formSkillParent: footworkMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: hiding
        formSkillParent: footworkMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: casualBehavior
        formSkillParents: [powBonus, intBonus]
        requiredLevels: [3, 3]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: trickReact
        formSkillParent: spdBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: roguesEye
        formSkillParent: intBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }
}

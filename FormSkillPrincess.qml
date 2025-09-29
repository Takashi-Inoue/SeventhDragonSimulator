import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

FormSkillBase {
    id: root
    height: 492

    SkillListPrincess {
        id: skillListPrincess
    }

    QtObject {
        id: skillDisplay
        property real width: 230
        property real height: 60
        property real colSpacing: 50
        property real rowSpacing: 30
        property real hDistance: skillDisplay.width + skillDisplay.colSpacing
        property real vDistance: skillDisplay.height + skillDisplay.rowSpacing
        property real hLineVMargin: 8
        property real letterHMargin: 12
        property real letterVMargin: 4
    }

    ScrollView {
        id: scrollView
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 56

        padding: 8

        contentHeight: skillsLayout.height
        contentWidth: skillsLayout.width

        GridLayout {
            id: skillsLayout
            width: 1910
            height: 420
            rowSpacing: skillDisplay.rowSpacing
            columnSpacing: skillDisplay.colSpacing
            rows: 5
            columns: 7
            z: 2

            Item {}

            FormSkill {
                id: provoke
                skill: skillListPrincess.provoke
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: songOfTheWindAndTrees
                skill: skillListPrincess.songOfTheWindAndTrees
                Component.onCompleted: root.forms.push(this)
                fontSize: 11
            }

            FormSkill {
                id: temptationOfFainting
                skill: skillListPrincess.temptationOfFainting
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: fearMastery
                skill: skillListPrincess.fearMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: punishmentWhipping
                skill: skillListPrincess.punishmentWhipping
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: trainingWhip
                skill: skillListPrincess.trainingWhip
                Component.onCompleted: root.forms.push(this)
            }

//----------------

            FormSkill {
                id: angelicaCage
                skill: skillListPrincess.angelicaCage
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: nobleMastery
                skill: skillListPrincess.nobleMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: songOfTheMoonlight
                skill: skillListPrincess.songOfTheMoonlight
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: temptationOfMadness
                skill: skillListPrincess.temptationOfMadness
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: demonicCage
                skill: skillListPrincess.demonicCage
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: trainingMastery
                skill: skillListPrincess.trainingMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: nineTail
                skill: skillListPrincess.nineTail
                Component.onCompleted: root.forms.push(this)
            }

//----------------

            Item {}

            FormSkill {
                id: princessOrder
                skill: skillListPrincess.princessOrder
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: scorchingRhyme
                skill: skillListPrincess.scorchingRhyme
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: temptationOfRevenge
                skill: skillListPrincess.temptationOfRevenge
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: requestProtection
                skill: skillListPrincess.requestProtection
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: requestBetrayal
                skill: skillListPrincess.requestBetrayal
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: requestSuicide
                skill: skillListPrincess.requestSuicide
                Component.onCompleted: root.forms.push(this)
            }

//----------------

            FormSkill {
                id: powBonus
                skill: root.skillListCommon.powBonus
                Component.onCompleted: root.forms.push(this)
            }

            Item {}

            FormSkill {
                id: solidRhyme
                skill: skillListPrincess.solidRhyme
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: piercingScream
                skill: skillListPrincess.piercingScream
                Component.onCompleted: root.forms.push(this)
            }

            Item { Layout.rowSpan: 2 }

            FormSkill {
                id: intBonus
                skill: root.skillListCommon.intBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: teachingsOfTheQueen
                skill: skillListPrincess.teachingsOfTheQueen
                Component.onCompleted: root.forms.push(this)
            }

//----------------

            FormSkill {
                id: spdBonus
                skill: root.skillListCommon.spdBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: princessReact
                skill: skillListPrincess.princessReact
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: lullabyOfRipplingWaters
                skill: skillListPrincess.lullabyOfRipplingWaters
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shriekOfFallingLeaves
                skill: skillListPrincess.shriekOfFallingLeaves
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: cure
                skill: skillListPrincess.cure
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: cureII
                skill: skillListPrincess.cureII
                Component.onCompleted: root.forms.push(this)
            }
        }

        VLineItem {
            id: vLineNoble
            x: songOfTheWindAndTrees.x - skillDisplay.colSpacing / 2
            y: songOfTheWindAndTrees.y + skillDisplay.height / 2
            height: skillDisplay.vDistance * 4
        }

        VLineItem {
            id: vLineFear
            x: fearMastery.x - skillDisplay.colSpacing / 2
            y: temptationOfFainting.y + skillDisplay.height / 2
            height: skillDisplay.vDistance * 4
        }

        VLineItem {
            id: vLineNineTail
            x: trainingWhip.x - skillDisplay.colSpacing / 2
            y: trainingWhip.y + skillDisplay.height / 2
            height: skillDisplay.vDistance
        }

        HLineItem {
            id: hLineWhip
            x: trainingMastery.x + skillDisplay.width / 2
            y: trainingMastery.y - skillDisplay.hLineVMargin
            width: skillDisplay.hDistance
        }

        HLineItem {
            id: hLineRequest
            x: requestProtection.x + skillDisplay.width / 2
            y: requestProtection.y - skillDisplay.rowSpacing + skillDisplay.hLineVMargin
            width: skillDisplay.hDistance * 2
        }

        HLineItem {
            id: hLineCure
            x: cure.x + skillDisplay.width / 2
            y: cure.y - skillDisplay.rowSpacing + skillDisplay.hLineVMargin
            width: skillDisplay.hDistance
        }

        FourDArrow {
            x: nobleMastery.x - skillDisplay.colSpacing
            y: nobleMastery.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height
            arrowUp: false
            arrowRight: false
            arrowDown: false
        }

        FourDArrow {
            x: nobleMastery.x
            y: nobleMastery.y - skillDisplay.rowSpacing
            width: skillDisplay.width
            height: skillDisplay.rowSpacing
            arrowLeft: false
            arrowRight: false
            arrowDown: false
        }

        FourDArrow {
            x: nobleMastery.x
            y: nobleMastery.y + skillDisplay.height
            width: skillDisplay.width
            height: skillDisplay.rowSpacing
            arrowLeft: false
            arrowRight: false
            arrowUp: false
        }

        FourDArrow {
            x: princessReact.x - skillDisplay.colSpacing
            y: princessReact.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height
            arrowDown: false
            arrowLeft: false
            arrowUp: false
        }

        FourDArrow {
            x: vLineNoble.x
            y: songOfTheWindAndTrees.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height
            arrowDown: false
            arrowLeft: false
            arrowUp: false
        }

        FourDArrow {
            x: songOfTheMoonlight.x - skillDisplay.colSpacing
            y: songOfTheMoonlight.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height
            arrowDown: false
            arrowLeft: false
            arrowUp: false
        }

        FourDArrow {
            x: vLineNoble.x
            y: scorchingRhyme.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height
            arrowDown: false
            arrowLeft: false
            arrowUp: false
        }

        FourDArrow {
            x: vLineNoble.x
            y: solidRhyme.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height
            arrowDown: false
            arrowLeft: false
            arrowUp: false
        }

        FourDArrow {
            x: vLineNoble.x
            y: lullabyOfRipplingWaters.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height
            arrowDown: false
            arrowLeft: false
            arrowUp: false
        }

        FourDArrow {
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: temptationOfFainting.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height
            arrowDown: false
            arrowRight: false
            arrowUp: false
        }

        FourDArrow {
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: temptationOfMadness.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height
            arrowDown: false
            arrowRight: false
            arrowUp: false
        }

        FourDArrow {
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: temptationOfRevenge.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height
            arrowDown: false
            arrowRight: false
            arrowUp: false
        }

        FourDArrow {
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: piercingScream.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height
            arrowDown: false
            arrowRight: false
            arrowUp: false
        }

        FourDArrow {
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: shriekOfFallingLeaves.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height
            arrowDown: false
            arrowRight: false
            arrowUp: false
        }

        FourDArrow {
            x: fearMastery.x
            y: fearMastery.y + skillDisplay.height
            width: skillDisplay.width
            height: skillDisplay.rowSpacing
            arrowLeft: false
            arrowRight: false
            arrowUp: false
        }

        FourDArrow {
            x: fearMastery.x + skillDisplay.width
            y: fearMastery.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height
            arrowLeft: false
            arrowDown: false
            arrowUp: false
        }

        FourDArrow {
            x: trainingWhip.x - skillDisplay.colSpacing
            y: trainingWhip.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height
            arrowRight: false
            arrowDown: false
            arrowUp: false
        }

        FourDArrow {
            x: trainingMastery.x
            y: trainingMastery.y - skillDisplay.rowSpacing
            width: skillDisplay.width
            height: skillDisplay.rowSpacing
            arrowRight: false
            arrowDown: false
            arrowLeft: false
        }

        FourDArrow {
            x: trainingWhip.x
            y: trainingMastery.y - skillDisplay.rowSpacing
            width: skillDisplay.width
            height: skillDisplay.rowSpacing - skillDisplay.hLineVMargin
            arrowRight: false
            arrowDown: false
            arrowLeft: false
        }

        FourDArrow {
            x: requestProtection.x
            y: hLineRequest.y
            width: skillDisplay.width
            height: skillDisplay.rowSpacing - skillDisplay.hLineVMargin
            arrowRight: false
            arrowUp: false
            arrowLeft: false
        }

        FourDArrow {
            x: requestBetrayal.x
            y: requestBetrayal.y - skillDisplay.rowSpacing
            width: skillDisplay.width
            height: skillDisplay.rowSpacing
            arrowRight: false
            arrowUp: false
            arrowLeft: false
        }

        FourDArrow {
            x: requestSuicide.x
            y: hLineRequest.y
            width: skillDisplay.width
            height: skillDisplay.rowSpacing - skillDisplay.hLineVMargin
            arrowRight: false
            arrowUp: false
            arrowLeft: false
        }

        FourDArrow {
            x: teachingsOfTheQueen.x - skillDisplay.colSpacing
            y: teachingsOfTheQueen.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height
            arrowDown: false
            arrowUp: false
            arrowLeft: false
        }

        FourDArrow {
            x: cure.x
            y: cure.y - skillDisplay.rowSpacing
            width: skillDisplay.width
            height: skillDisplay.rowSpacing
            arrowRight: false
            arrowUp: false
            arrowLeft: false
        }

        FourDArrow {
            x: cureII.x
            y: hLineCure.y
            width: skillDisplay.width
            height: skillDisplay.rowSpacing - skillDisplay.hLineVMargin
            arrowRight: false
            arrowUp: false
            arrowLeft: false
        }

        FourDArrow {
            x: vLineNineTail.x
            y: nineTail.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height
            arrowDown: false
            arrowUp: false
            arrowLeft: false
        }

        Label {
            text: "1"
            x: provoke.x
            y: nobleMastery.y - skillDisplay.rowSpacing
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "5"
            x: princessOrder.x
            y: nobleMastery.y + skillDisplay.height
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "10"
            x: nobleMastery.x - skillDisplay.colSpacing
            y: angelicaCage.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height / 2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "5"
            x: princessReact.x - skillDisplay.colSpacing
            y: princessReact.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height / 2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "5"
            x: vLineNoble.x
            y: songOfTheWindAndTrees.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "10"
            x: vLineNoble.x
            y: songOfTheMoonlight.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "1"
            x: vLineNoble.x
            y: scorchingRhyme.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "1"
            x: vLineNoble.x
            y: solidRhyme.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "3"
            x: vLineNoble.x
            y: lullabyOfRipplingWaters.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "3"
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: temptationOfFainting.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "3"
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: temptationOfMadness.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "5"
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: temptationOfRevenge.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "1"
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: piercingScream.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "8"
            x: vLineFear.x - skillDisplay.colSpacing / 2
            y: shriekOfFallingLeaves.y
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.height / 2 - skillDisplay.letterVMargin
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "10"
            x: demonicCage.x
            y: demonicCage.y - skillDisplay.rowSpacing
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "3"
            x: punishmentWhipping.x - skillDisplay.colSpacing
            y: punishmentWhipping.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height / 2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "3"
            x: trainingMastery.x
            y: trainingMastery.y - skillDisplay.rowSpacing
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "3"
            x: trainingWhip.x - skillDisplay.colSpacing
            y: trainingWhip.y
            width: skillDisplay.colSpacing
            height: skillDisplay.height / 2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "1"
            x: trainingWhip.x + skillDisplay.width / 2 + skillDisplay.letterHMargin
            y: trainingMastery.y - skillDisplay.rowSpacing
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "8"
            x: requestProtection.x
            y: hLineRequest.y
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing - skillDisplay.hLineVMargin
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "5"
            x: requestBetrayal.x
            y: hLineRequest.y
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing - skillDisplay.hLineVMargin
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "3"
            x: requestSuicide.x + skillDisplay.width / 2 + skillDisplay.letterHMargin
            y: hLineRequest.y
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing - skillDisplay.hLineVMargin
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "1"
            x: cure.x
            y: hLineCure.y
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing - skillDisplay.hLineVMargin
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "5"
            x: cureII.x + skillDisplay.width / 2 + skillDisplay.letterHMargin
            y: hLineCure.y
            width: skillDisplay.width / 2 - skillDisplay.letterHMargin
            height: skillDisplay.rowSpacing - skillDisplay.hLineVMargin
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "8"
            x: teachingsOfTheQueen.x - skillDisplay.colSpacing
            y: teachingsOfTheQueen.y
            width: skillDisplay.colSpacing
            height: skillDisplay.rowSpacing
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }

        Label {
            text: "10"
            x: vLineNineTail.x
            y: nineTail.y - skillDisplay.letterVMargin
            width: skillDisplay.colSpacing / 2
            height: skillDisplay.rowSpacing
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
        }
    }

    SkillLink {
        formSkillChild: provoke
        formSkillParent: nobleMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: scorchingRhyme
        formSkillParent: nobleMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: solidRhyme
        formSkillParent: nobleMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: lullabyOfRipplingWaters
        formSkillParent: nobleMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: songOfTheWindAndTrees
        formSkillParent: nobleMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: princessOrder
        formSkillParent: nobleMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: songOfTheMoonlight
        formSkillParent: nobleMastery
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: angelicaCage
        formSkillParent: nobleMastery
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: piercingScream
        formSkillParent: fearMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: temptationOfFainting
        formSkillParent: fearMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: temptationOfMadness
        formSkillParent: fearMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: temptationOfRevenge
        formSkillParent: fearMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: shriekOfFallingLeaves
        formSkillParent: fearMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: demonicCage
        formSkillParent: fearMastery
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: trainingWhip
        formSkillParent: trainingMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: punishmentWhipping
        formSkillParents: [trainingMastery, fearMastery, trainingWhip]
        requiredLevels: [3, 3, 3]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: requestSuicide
        formSkillParent: trainingMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: requestBetrayal
        formSkillParent: trainingMastery
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: requestProtection
        formSkillParent: trainingMastery
        requiredLevel: 8
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: nineTail
        formSkillParent: trainingWhip
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: princessReact
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
        formSkillChild: teachingsOfTheQueen
        formSkillParent: intBonus
        requiredLevel: 8
        enabled: !root.isLoading
    }
}

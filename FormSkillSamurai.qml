import QtQuick
import QtQuick.Controls

FormSkillBase {
    id: root
    height: 492

    property color musouColor: "#FF8888"

    SkillListSamurai {
        id: skillListSamurai
    }

    ScrollView {
        id: scrollView
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
            anchors.verticalCenter: parent.verticalCenter

            FormSkill {
                id: powBonus
                anchors.left: yoroiDooshi.right
                anchors.top: yoroiDooshi.top
                anchors.leftMargin: 50
                skill: root.skillListCommon.powBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: spdBonus
                x: 8
                y: 8
                skill: root.skillListCommon.spdBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: intBonus
                anchors.left: oniNoGyousou.right
                anchors.top: oniNoGyousou.top
                anchors.leftMargin: 50
                skill: root.skillListCommon.intBonus
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: katanaMastery
                anchors.right: zambaSwitch.left
                anchors.top: zambaSwitch.top
                anchors.rightMargin: 50
                skill: skillListSamurai.katanaMastery
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: zambaSwitch
                anchors.left: musouSwitch.left
                anchors.top: musouSwitch.bottom
                anchors.topMargin: 30
                skill: skillListSamurai.zambaSwitch
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: tateIchimonji
                anchors.left: zambaSwitch.right
                anchors.top: zambaSwitch.top
                anchors.leftMargin: 50
                skill: skillListSamurai.tateIchimonji
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: rairai
                anchors.left: tateIchimonji.right
                anchors.top: tateIchimonji.top
                anchors.leftMargin: 50
                skill: skillListSamurai.rairai
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: todoroki
                anchors.left: rairai.right
                anchors.top: rairai.top
                anchors.leftMargin: 50
                skill: skillListSamurai.todoroki
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: sakabaUchi
                anchors.left: todoroki.right
                anchors.top: todoroki.top
                anchors.leftMargin: 50
                skill: skillListSamurai.sakabaUchi
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: futatsuTsubame
                anchors.left: sakabaUchi.right
                anchors.top: sakabaUchi.top
                anchors.leftMargin: 50
                skill: skillListSamurai.futatsuTsubame
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: iaiSwitch
                anchors.left: zambaSwitch.left
                anchors.top: zambaSwitch.bottom
                anchors.topMargin: 30
                skill: skillListSamurai.iaiSwitch
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: senteDachi
                anchors.left: iaiSwitch.right
                anchors.top: iaiSwitch.top
                anchors.leftMargin: 50
                skill: skillListSamurai.senteDachi
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: fubuki
                anchors.left: senteDachi.right
                anchors.top: senteDachi.top
                anchors.leftMargin: 50
                skill: skillListSamurai.fubuki
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: zeppaUchi
                anchors.left: fubuki.right
                anchors.top: fubuki.top
                anchors.leftMargin: 50
                skill: skillListSamurai.zeppaUchi
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: kubiOtoshi
                anchors.left: zeppaUchi.right
                anchors.top: zeppaUchi.top
                anchors.leftMargin: 50
                skill: skillListSamurai.kubiOtoshi
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: rokuShakuKubiOtoshi
                anchors.left: kubiOtoshi.right
                anchors.top: kubiOtoshi.top
                anchors.leftMargin: 50
                skill: skillListSamurai.rokuShakuKubiOtoshi
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: muteSwitch
                anchors.left: iaiSwitch.left
                anchors.top: iaiSwitch.bottom
                anchors.topMargin: 30
                skill: skillListSamurai.muteSwitch
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: myouou
                anchors.left: muteSwitch.right
                anchors.top: muteSwitch.top
                anchors.leftMargin: 50
                skill: skillListSamurai.myouou
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: zangekiUnshin
                anchors.left: myouou.right
                anchors.top: myouou.top
                anchors.leftMargin: 50
                skill: skillListSamurai.zangekiUnshin
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: kaigekiUnshin
                anchors.left: zangekiUnshin.right
                anchors.top: zangekiUnshin.top
                anchors.leftMargin: 50
                skill: skillListSamurai.kaigekiUnshin
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: totsugekiUnshin
                anchors.left: kaigekiUnshin.right
                anchors.top: kaigekiUnshin.top
                anchors.leftMargin: 50
                skill: skillListSamurai.totsugekiUnshin
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: asyura
                anchors.left: totsugekiUnshin.right
                anchors.top: totsugekiUnshin.top
                anchors.leftMargin: 50
                skill: skillListSamurai.asyura
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: yoroiDooshi
                anchors.left: jinkaNoReact.right
                anchors.top: jinkaNoReact.top
                anchors.leftMargin: 50
                skill: skillListSamurai.yoroiDooshi
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: rentan
                anchors.left: intBonus.right
                anchors.top: intBonus.top
                anchors.leftMargin: 50
                skill: skillListSamurai.rentan
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: nukigake
                anchors.left: katanaMastery.left
                anchors.top: katanaMastery.bottom
                anchors.topMargin: 30
                skill: skillListSamurai.nukigake
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: shishiFunjinNoSeme
                anchors.left: powBonus.left
                anchors.top: powBonus.bottom
                anchors.topMargin: 30
                skill: skillListSamurai.shishiFunjinNoSeme
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: tettouTetsubiNoMamori
                anchors.left: shishiFunjinNoSeme.right
                anchors.top: shishiFunjinNoSeme.top
                anchors.leftMargin: 50
                skill: skillListSamurai.tettouTetsubiNoMamori
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: musouSwitch
                anchors.left: jinkaNoReact.left
                anchors.top: jinkaNoReact.bottom
                anchors.topMargin: 30
                skill: skillListSamurai.musouSwitch
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: jinkaNoReact
                anchors.left: spdBonus.right
                anchors.top: spdBonus.top
                anchors.leftMargin: 50
                skill: skillListSamurai.jinkaNoReact
                Component.onCompleted: root.forms.push(this)
            }

            FormSkill {
                id: oniNoGyousou
                anchors.left: powBonus.right
                anchors.top: powBonus.top
                anchors.leftMargin: 50
                skill: skillListSamurai.oniNoGyousou
                Component.onCompleted: root.forms.push(this)
            }

            VLineItem {
                id: vLineSwitch
                anchors.left: musouSwitch.right
                anchors.top: musouSwitch.verticalCenter
                anchors.bottom: muteSwitch.verticalCenter
                anchors.leftMargin: 25
                color: root.musouColor
            }

            HLineItem {
                id: hLineZamba
                anchors.left: zambaSwitch.horizontalCenter
                anchors.top: zambaSwitch.top
                anchors.right: futatsuTsubame.horizontalCenter
                anchors.topMargin: -18
            }

            HLineItem {
                id: hLineIai
                anchors.left: iaiSwitch.horizontalCenter
                anchors.top: iaiSwitch.top
                anchors.right: rokuShakuKubiOtoshi.horizontalCenter
                anchors.topMargin: -18
            }

            HLineItem {
                id: hLineUnarmed
                anchors.left: muteSwitch.horizontalCenter
                anchors.top: muteSwitch.top
                anchors.right: asyura.horizontalCenter
                anchors.topMargin: -18
            }

            FourDArrow {
                anchors.verticalCenter: spdBonus.verticalCenter
                anchors.left: spdBonus.right
                anchors.right: jinkaNoReact.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowDown: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: katanaMastery.verticalCenter
                anchors.left: katanaMastery.right
                anchors.right: zambaSwitch.left
                anchors.rightMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            VLineItem {
                id: vLineKatanaMastery
                anchors.left: katanaMastery.right
                anchors.top: katanaMastery.verticalCenter
                anchors.bottom: iaiSwitch.verticalCenter
                anchors.leftMargin: 25
            }

            FourDArrow {
                anchors.top: katanaMastery.bottom
                anchors.horizontalCenter: katanaMastery.horizontalCenter
                anchors.bottom: nukigake.top
                anchors.bottomMargin: 2
                arrowUp: false
                arrowLeft: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: iaiSwitch.verticalCenter
                anchors.left: vLineKatanaMastery.right
                anchors.right: iaiSwitch.left
                anchors.rightMargin: 4
                arrowUp: false
                arrowLeft: false
                arrowDown: false
            }

            FourDArrow {
                anchors.verticalCenter: musouSwitch.verticalCenter
                anchors.left: musouSwitch.right
                anchors.right: vLineSwitch.left
                anchors.leftMargin: 2
                arrowUp: false
                arrowRight: false
                arrowDown: false
                color: root.musouColor
            }

            HLineItem {
                anchors.verticalCenter: zambaSwitch.verticalCenter
                anchors.left: zambaSwitch.right
                anchors.right: vLineSwitch.left
                color: root.musouColor
            }

            HLineItem {
                anchors.verticalCenter: iaiSwitch.verticalCenter
                anchors.left: iaiSwitch.right
                anchors.right: vLineSwitch.left
                color: root.musouColor
            }

            HLineItem {
                anchors.top: muteSwitch.verticalCenter
                anchors.left: muteSwitch.right
                anchors.right: vLineSwitch.left
                color: root.musouColor
            }

            VLineItem {
                anchors.top: hLineZamba.top
                anchors.bottom: zambaSwitch.top
                anchors.horizontalCenter: zambaSwitch.horizontalCenter
            }

            VLineItem {
                anchors.top: hLineIai.top
                anchors.bottom: iaiSwitch.top
                anchors.horizontalCenter: iaiSwitch.horizontalCenter
            }

            VLineItem {
                anchors.top: hLineUnarmed.top
                anchors.bottom: muteSwitch.top
                anchors.horizontalCenter: muteSwitch.horizontalCenter
            }

            FourDArrow {
                anchors.horizontalCenter: tateIchimonji.horizontalCenter
                anchors.top: hLineZamba.bottom
                anchors.bottom: tateIchimonji.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: rairai.horizontalCenter
                anchors.top: hLineZamba.bottom
                anchors.bottom: rairai.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: todoroki.horizontalCenter
                anchors.top: hLineZamba.bottom
                anchors.bottom: todoroki.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: sakabaUchi.horizontalCenter
                anchors.top: hLineZamba.bottom
                anchors.bottom: sakabaUchi.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: futatsuTsubame.horizontalCenter
                anchors.top: hLineZamba.bottom
                anchors.bottom: futatsuTsubame.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: senteDachi.horizontalCenter
                anchors.top: hLineIai.bottom
                anchors.bottom: senteDachi.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: fubuki.horizontalCenter
                anchors.top: hLineIai.bottom
                anchors.bottom: fubuki.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: zeppaUchi.horizontalCenter
                anchors.top: hLineIai.bottom
                anchors.bottom: zeppaUchi.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: kubiOtoshi.horizontalCenter
                anchors.top: hLineIai.bottom
                anchors.bottom: kubiOtoshi.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: rokuShakuKubiOtoshi.horizontalCenter
                anchors.top: hLineIai.bottom
                anchors.bottom: rokuShakuKubiOtoshi.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: myouou.horizontalCenter
                anchors.top: hLineUnarmed.bottom
                anchors.bottom: myouou.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: zangekiUnshin.horizontalCenter
                anchors.top: hLineUnarmed.bottom
                anchors.bottom: zangekiUnshin.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: kaigekiUnshin.horizontalCenter
                anchors.top: hLineUnarmed.bottom
                anchors.bottom: kaigekiUnshin.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: totsugekiUnshin.horizontalCenter
                anchors.top: hLineUnarmed.bottom
                anchors.bottom: totsugekiUnshin.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: asyura.horizontalCenter
                anchors.top: hLineUnarmed.bottom
                anchors.bottom: asyura.top
                anchors.bottomMargin: 1
                arrowRight: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: powBonus.verticalCenter
                anchors.left: yoroiDooshi.right
                anchors.right: powBonus.left
                anchors.leftMargin: 2
                arrowDown: false
                arrowUp: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: powBonus.verticalCenter
                anchors.left: powBonus.right
                anchors.right: oniNoGyousou.left
                anchors.rightMargin: 2
                arrowDown: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.verticalCenter: intBonus.verticalCenter
                anchors.left: oniNoGyousou.right
                anchors.right: intBonus.left
                anchors.leftMargin: 2
                arrowDown: false
                arrowUp: false
                arrowRight: false
            }

            FourDArrow {
                anchors.verticalCenter: intBonus.verticalCenter
                anchors.left: intBonus.right
                anchors.right: rentan.left
                anchors.rightMargin: 2
                arrowDown: false
                arrowUp: false
                arrowLeft: false
            }

            FourDArrow {
                anchors.horizontalCenter: powBonus.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.bottom: shishiFunjinNoSeme.top
                anchors.bottomMargin: 2
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            HLineItem {
                id: hLineTettou
                anchors.left: powBonus.horizontalCenter
                anchors.right: tettouTetsubiNoMamori.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.topMargin: 12
            }

            FourDArrow {
                anchors.horizontalCenter: tettouTetsubiNoMamori.horizontalCenter
                anchors.top: hLineTettou.top
                anchors.bottom: tettouTetsubiNoMamori.top
                anchors.bottomMargin: 2
                arrowUp: false
                arrowRight: false
                arrowLeft: false
            }

            Label {
                text: "5"
                anchors.left: spdBonus.right
                anchors.right: jinkaNoReact.left
                anchors.bottom: jinkaNoReact.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: katanaMastery.right
                anchors.right: zambaSwitch.left
                anchors.bottom: zambaSwitch.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: vLineKatanaMastery.right
                anchors.right: iaiSwitch.left
                anchors.bottom: iaiSwitch.verticalCenter
                anchors.bottomMargin: 8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: nukigake.horizontalCenter
                anchors.top: katanaMastery.bottom
                anchors.bottom: nukigake.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: musouSwitch.right
                anchors.right: vLineSwitch.left
                anchors.bottom: zambaSwitch.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: musouSwitch.right
                anchors.right: vLineSwitch.left
                anchors.bottom: iaiSwitch.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: musouSwitch.right
                anchors.right: vLineSwitch.left
                anchors.bottom: muteSwitch.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: tateIchimonji.horizontalCenter
                anchors.top: hLineZamba.top
                anchors.bottom: tateIchimonji.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: rairai.horizontalCenter
                anchors.top: hLineZamba.top
                anchors.bottom: rairai.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "4"
                anchors.left: todoroki.horizontalCenter
                anchors.top: hLineZamba.top
                anchors.bottom: todoroki.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: sakabaUchi.horizontalCenter
                anchors.top: hLineZamba.top
                anchors.bottom: sakabaUchi.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: futatsuTsubame.horizontalCenter
                anchors.top: hLineZamba.top
                anchors.bottom: futatsuTsubame.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: senteDachi.horizontalCenter
                anchors.top: hLineIai.top
                anchors.bottom: senteDachi.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: fubuki.horizontalCenter
                anchors.top: hLineIai.top
                anchors.bottom: fubuki.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "4"
                anchors.left: zeppaUchi.horizontalCenter
                anchors.top: hLineIai.top
                anchors.bottom: zeppaUchi.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: kubiOtoshi.horizontalCenter
                anchors.top: hLineIai.top
                anchors.bottom: kubiOtoshi.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: rokuShakuKubiOtoshi.horizontalCenter
                anchors.top: hLineIai.top
                anchors.bottom: rokuShakuKubiOtoshi.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: myouou.horizontalCenter
                anchors.top: hLineUnarmed.top
                anchors.bottom: myouou.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: zangekiUnshin.horizontalCenter
                anchors.top: hLineUnarmed.top
                anchors.bottom: zangekiUnshin.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: kaigekiUnshin.horizontalCenter
                anchors.top: hLineUnarmed.top
                anchors.bottom: kaigekiUnshin.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: totsugekiUnshin.horizontalCenter
                anchors.top: hLineUnarmed.top
                anchors.bottom: totsugekiUnshin.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "10"
                anchors.left: asyura.horizontalCenter
                anchors.top: hLineUnarmed.top
                anchors.bottom: asyura.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: yoroiDooshi.right
                anchors.right: powBonus.left
                anchors.bottom: yoroiDooshi.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: powBonus.right
                anchors.right: oniNoGyousou.left
                anchors.bottom: oniNoGyousou.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "1"
                anchors.left: oniNoGyousou.right
                anchors.right: intBonus.left
                anchors.bottom: oniNoGyousou.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "3"
                anchors.left: intBonus.right
                anchors.right: rentan.left
                anchors.bottom: rentan.verticalCenter
                anchors.bottomMargin: 4
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.right: powBonus.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.bottom: shishiFunjinNoSeme.top
                anchors.rightMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

            Label {
                text: "5"
                anchors.left: tettouTetsubiNoMamori.horizontalCenter
                anchors.top: powBonus.bottom
                anchors.bottom: tettouTetsubiNoMamori.top
                anchors.leftMargin: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }
        }
    }

    SkillLink {
        formSkillChild: zambaSwitch
        formSkillParent: katanaMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: tateIchimonji
        formSkillParent: zambaSwitch
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: rairai
        formSkillParent: zambaSwitch
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: todoroki
        formSkillParent: zambaSwitch
        requiredLevel: 4
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: sakabaUchi
        formSkillParent: zambaSwitch
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: futatsuTsubame
        formSkillParent: zambaSwitch
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: iaiSwitch
        formSkillParent: katanaMastery
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: senteDachi
        formSkillParent: iaiSwitch
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: fubuki
        formSkillParent: iaiSwitch
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: zeppaUchi
        formSkillParent: iaiSwitch
        requiredLevel: 4
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: kubiOtoshi
        formSkillParent: iaiSwitch
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: rokuShakuKubiOtoshi
        formSkillParent: iaiSwitch
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: myouou
        formSkillParent: muteSwitch
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: zangekiUnshin
        formSkillParent: muteSwitch
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: kaigekiUnshin
        formSkillParent: muteSwitch
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: totsugekiUnshin
        formSkillParent: muteSwitch
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: asyura
        formSkillParent: muteSwitch
        requiredLevel: 10
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: nukigake
        formSkillParent: katanaMastery
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: yoroiDooshi
        formSkillParent: powBonus
        requiredLevel: 1
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: shishiFunjinNoSeme
        formSkillParent: powBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: tettouTetsubiNoMamori
        formSkillParent: powBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: jinkaNoReact
        formSkillParent: spdBonus
        requiredLevel: 5
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: oniNoGyousou
        formSkillParents: [powBonus, intBonus]
        requiredLevels: [1, 1]
        enabled: !root.isLoading
    }

    SkillLink {
        formSkillChild: rentan
        formSkillParent: intBonus
        requiredLevel: 3
        enabled: !root.isLoading
    }

    SkillLinkMultiParent {
        formSkillChild: musouSwitch
        formSkillParents: [zambaSwitch, iaiSwitch, muteSwitch]
        requiredLevels: [5, 5, 5]
        enabled: !root.isLoading
    }
}

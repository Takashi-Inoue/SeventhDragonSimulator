import QtQuick
import QtQuick.Controls

Rectangle {
    id: root
    width: 520
    height: 40

    property int totalPoint: 117
    property int consumedPoint: 0
    property alias isEnabledChibiTalk: checkBoxChibiTalk.checked

    QtObject{
        id: internal
        property int lvl: 1
    }

    Label {
        id: labelLv
        text: qsTr("Lvl: ")
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 16
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 12
    }

    Label {
        id: labelLvl
        text: internal.lvl
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: labelLv.right
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 12
        color: internal.lvl > 100 ? "#FF2222" : "#26282A"
    }

    Label {
        id: labelConsumed
        text: qsTr("Consumed: ")
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: labelLvl.right
        anchors.leftMargin: 24
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 12
    }

    Label {
        id: labelConsumedPoint
        text: root.consumedPoint
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: labelConsumed.right
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 12
        color: root.consumedPoint > root.totalPoint ? "#FF2222" : "#26282A"
    }

    Label {
        id: labelRemain
        text: qsTr("Remain: ")
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: labelConsumedPoint.right
        anchors.leftMargin: 24
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 12
    }

    Label {
        id: labelRemainPoint
        text: root.totalPoint - root.consumedPoint
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: labelRemain.right
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 12
        color: (root.totalPoint - root.consumedPoint) < 0 ? "#FF2222" : "#26282A"
    }

    CheckBox {
        id: checkBoxChibiTalk
        text: qsTr("Chibi-chara Talk (+1pt)")
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: labelRemainPoint.right
        anchors.leftMargin: 24
        scale: 1
        font.pointSize: 12

        onCheckedChanged: {
            root.totalPoint = checked ? 118 : 117
            root.calcLvl()
        }
    }

    function calcLvl() {
        var fixPoint = checkBoxChibiTalk.checked ? 1.0 : 0.0
        var lvl = (consumedPoint >= (92 + fixPoint)) ? consumedPoint - 17 - fixPoint
                                        : Math.ceil((consumedPoint - (2 + fixPoint)) / 1.2)
        internal.lvl = Math.max(lvl, 1)
    }

    onConsumedPointChanged: calcLvl()
}

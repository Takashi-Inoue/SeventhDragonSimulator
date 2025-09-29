import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: root
    width: 230
    height: 60
    color: "#EEEEEE"
    border.color: "#888888"
    radius: 3

    property string title: "FormDotCounter"
    property int min: 0
    property int max: 10
    property int dotSideLength: 18
    property alias value: counter.count

    property alias fontSize: labelTitle.font.pointSize

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        anchors.topMargin: 4
        anchors.bottomMargin: 4

        Label {
            id: labelTitle
            text: root.title
            font.pointSize: 12
            Layout.preferredWidth: 172
        }

        RowLayout {
            DotCounter {
                id: counter
                min: root.min
                max: root.max
                sideLength: root.dotSideLength
            }

            Label {
                id: labelCount
                text: counter.count
            }
        }
    }
}

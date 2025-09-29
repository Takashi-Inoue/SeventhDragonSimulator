import QtQuick
import QtQuick.Layouts

Rectangle {
    id: root

    property int sideLength: 18
    property int min: 0
    property int max: 10
    property int count: 0

    width: sideLength * (max + 1)
    height: sideLength

    RowLayout {
        id: rowLayout
        x: 0
        y: 0
        width: parent.width
        spacing: 0

        ValueBox {
            id: valueBox0
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 0
            borderColor: "#444444"
            onColor: "#AAAAAA"
            offColor: "#AAAAAA"
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox1
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 1
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox2
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 2
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox3
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 3
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox4
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 4
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox5
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 5
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox6
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 6
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox7
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 7
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox8
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 8
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox9
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 9
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        ValueBox {
            id: valueBox10
            Layout.minimumHeight: root.sideLength
            Layout.minimumWidth: root.sideLength
            value: 10
            visible: value <= root.max
            onClicked: root.onBoxiesClicked(value)
        }

        Item {
            // spacer item
            Layout.minimumWidth: 0
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }

    function onBoxiesClicked(value: int) {
        root.count = value
    }

    onCountChanged:  {
        valueBox1.isOn = (root.count >= 1)
        valueBox2.isOn = (root.count >= 2)
        valueBox3.isOn = (root.count >= 3)
        valueBox4.isOn = (root.count >= 4)
        valueBox5.isOn = (root.count >= 5)
        valueBox6.isOn = (root.count >= 6)
        valueBox7.isOn = (root.count >= 7)
        valueBox8.isOn = (root.count >= 8)
        valueBox9.isOn = (root.count >= 9)
        valueBox10.isOn = (root.count >= 10)
    }
}

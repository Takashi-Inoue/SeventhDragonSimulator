import QtQuick
import QtQuick.Controls

MenuItem {
    id: menuDelegate
    implicitWidth: 200
    implicitHeight: 40
    font.pointSize: 12

    property int iconSide: 20

    function mnemonicText(txt) {
        var index = txt.indexOf("&");

        if (index != -1)
            txt = txt.replace(txt.substr(index, 2), ("<u>" + txt.substr(index + 1, 1) +"</u>"));
        return txt;
    }

    contentItem: Item {
        anchors.fill: parent
        Item {
            id: itemMenuIcon
            width: menuDelegate.iconSide // delegate.icon.width/height is not able to use
            height: menuDelegate.iconSide
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 8
        }

        Component.onCompleted: {
            if (menuDelegate.icon.source.toString().endsWith("svg")) {
                var vectorImage = Qt.createQmlObject(
                            `import QtQuick.VectorImage;
                            VectorImage{
                                source: menuDelegate.icon.source;
                                preferredRendererType: VectorImage.CurveRenderer;
                                anchors.fill: parent;
                            }`,
                            itemMenuIcon, 'iconVectorImage')
            } else {
                var iconImage = Qt.createQmlObject(
                            `import QtQuick;
                            Image{
                                source: menuDelegate.icon.source;
                                anchors.fill: parent;
                            }`,
                            itemMenuIcon, 'iconImage')
            }
        }

        Text {
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: itemMenuIcon.right
            anchors.right: shortcutText.left
            anchors.leftMargin: 8
            anchors.rightMargin: 8
            text: menuDelegate.mnemonicText(menuDelegate.text)
            font: menuDelegate.font
            color: menuDelegate.palette.windowText
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        Text {
            id: shortcutText
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 8
            text: (menuDelegate.action != null && menuDelegate.action.shortcut != null)
                  ? menuDelegate.action.shortcut : ""
        }
    }
}

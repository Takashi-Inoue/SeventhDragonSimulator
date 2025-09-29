import QtQuick
import QtQuick.Controls

FormDotCounter {
    id: root
    property Skill skill
    property int spentPoint: 0
    // property bool canObtain: true

    title: skill.name
    max: skill.skillLevel.max

    opacity: enabled ? 1 : 0.7
    // color: canObtain ? "#D0D0F4" : "#EECCCC"
    // border.color: canObtain ? "#666688" : "#886666"

    MouseArea {
        id: mouseArea
        z: -1
        hoverEnabled: true
        anchors.fill: parent
        ToolTip {
            id: toolTip
            text: "" // Set an empty string on startup to prevent performance degradation.
            delay: 500
            visible: mouseArea.containsMouse
            font.pointSize: 13
            width: Math.min(800, implicitContentWidth + 50)
            contentItem : Text {
                id: contentText
                text: toolTip.text
                textFormat: Text.RichText
                wrapMode: Text.WordWrap
            }

            onVisibleChanged: {
                if (visible && text == "") // Create text when needed.
                    text = createHtmlToolTipText();
            }

            function createHtmlToolTipText() {
                var str = "<p style='font-size:13pt;'><ul>";
                var length = root.skill.description.length;

                for (var i = 0; i < length; ++i)
                    str += ("<li>" + root.skill.description[i] + "</li>");

                str += "</ul></p>" + Utility.createHtmlCostTable(root.skill);

                return str;
            }

            function createMarkdownToolTipText() {
                var str = "";
                var length = root.skill.description.length;

                for (var i = 0; i < length; ++i)
                    str += ("* " + root.skill.description[i]) + "\n";

                str += "\n" + Utility.createMarkdownCostTable(root.skill);

                return str;
            }
        }
    }

    signal skillLevelChanged(FormSkill form)

    Image {
        id: image
        x: 180
        y: 8
        width: 22
        height: 22
        source: root.skill.type.iconSource
        fillMode: Image.PreserveAspectFit
    }

    onValueChanged: {
        spentPoint = skill.skillLevel.calcSPCost(value);
        skillLevelChanged(this);
    }
}

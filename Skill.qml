import QtQuick

QtObject {
    id: root
    property string skillID
    property string name
    property SkillLevel skillLevel: SkillLevel {}
    property SkillType type: SkillType {}
    property list<point> manaCost: []// x: lvl, y: cost
    property list<string> description: []

    function manaCostToHtmlTableRow() {
        var str = "<tr><td align='right'><b>" + qsTr("MN Cost") + "</b></td>";

        str += Utility.costListToHtmlTableData(root.manaCost, root.skillLevel.max);

        return str + "</tr>";
    }

    function manaCostToMarkdownTableRow() {
        var str = "| " + qsTr("MN Cost") + " ";

        str += Utility.costListToMarkdownTableData(root.manaCost, root.skillLevel.max);

        return str;
    }
}

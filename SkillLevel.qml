import QtQuick

QtObject {
    id: root
    property int max: 10
    property list<point> spCost: []// x: lvl, y: cost

    function calcSPCost(currentSkillLevel) {
        if (root.spCost.length === 0)
            return currentSkillLevel;

        if (currentSkillLevel < root.spCost[0].x)
            return currentSkillLevel;

        var resultCost = 0;

        for (var lvl = currentSkillLevel; lvl > 0; --lvl) {
            var currentCost = 1;

            if (lvl >= root.spCost[0].x) {
                for (var iCost = root.spCost.length - 1; iCost >= 0; --iCost) {
                    if (lvl >= root.spCost[iCost].x) {
                        currentCost = root.spCost[iCost].y;
                        break;
                    }
                }
            }

            resultCost += currentCost;
        }

        return resultCost;
    }

    function spCostToHtmlTableRow() {
        var str = "<tr><td align='right'><b>" + qsTr("SP Cost") + "</b></td>";

        str += Utility.costListToHtmlTableData(root.spCost, root.max);

        return str + "</tr>";
    }

    function spCostToMarkdownTableRow() {
        var str = "| " + qsTr("SP Cost") + " ";

        str += Utility.costListToMarkdownTableData(root.spCost, root.max);

        return str;
    }
}

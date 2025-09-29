pragma Singleton
import QtQuick

QtObject {
    function costListToHtmlString(costList, maxSkillLvl) {
        var str = "";

        if (costList.length == 0)
            return "&ensp;&ensp;<b>1</br> (" + qsTr("Lv.") + " 1-" + maxSkillLvl + ")";

        var tempList = costList.slice();

        if (tempList[0].x != 1)
            tempList.unshift(Qt.point(1, 1));

        tempList.push(Qt.point(maxSkillLvl, costList[costList.length - 1].y));

        var cost = 1;
        var firstLvl = 1;
        var lastLvl = 1;

        for (var i = 0; i < tempList.length - 1; ++i) {
            firstLvl = tempList[i].x;
            lastLvl = tempList[i + 1].x;

            if (i < tempList.length - 2)
                --lastLvl;

            cost = tempList[i].y;

            str += "&ensp;&ensp;<b>" + cost + "</b> [" + qsTr("Lv.") + " " + firstLvl;
            str += (firstLvl != lastLvl) ? "-" + lastLvl + "]"
                                         : "]";
        }

        return str;
    }

    function costListToHtmlTableData(costList, maxSkillLvl) {
        // costList: list<point>, maxSkillLvl: int
        var str = "";
        var cost = 1;
        var iCostList = 0;

        for (var i = 0; i < maxSkillLvl; ++i) {
            if (iCostList < costList.length && (i + 1) == costList[iCostList].x)
                cost = costList[iCostList++].y;

            str += "<td align='center'>" + cost + "</td>";
        }

        return str;
    }

    function createCostTableHeader(max) {
        var str = "<tr><th align='right'>Lv.</th>";

        for (var i = 1; i <= max; ++i)
            str += "<th align='center' width='32'>" + i + "</th>";

        return str + "</tr>";
    }

    function createHtmlCostTable(skill) {
        var str = "<table border='1' cellpadding='4' align='center' style='border-collapse: collapse; font-size: 13pt; margin-top: 16px;'>";

        str += createCostTableHeader(skill.skillLevel.max)
            + skill.skillLevel.spCostToHtmlTableRow();

        if (skill.manaCost != null && skill.manaCost.length > 0)
            str += skill.manaCostToHtmlTableRow();

        return str + "</table>";
    }

    function createMarkdownTableDelimiterRow(colCount) {
        var str = "|";

        for (var i = 1; i <= colCount; ++i)
            str += " :-: |";

        return str;
    }

    function createMarkdownTableForSequentialNumbers(max) {
        var str = "|";

        for (var i = 1; i <= max; ++i)
            str += " " + i + " |";

        return str;
    }

    function costListToMarkdownTableData(costList, maxSkillLvl) {
        // costList: list<point>, maxSkillLvl: int
        var str = "|";
        var cost = 1;
        var iCostList = 0;

        for (var i = 0; i < maxSkillLvl; ++i) {
            if (iCostList < costList.length && (i + 1) == costList[iCostList].x)
                cost = costList[iCostList++].y;

            str += " " + cost + " |";
        }

        return str;
    }

    function createMarkdownCostTable(skill) {
        var str = "| Lv. ";

        str += createMarkdownTableForSequentialNumbers(skill.skillLevel.max) + "\n"
            + createMarkdownTableDelimiterRow(skill.skillLevel.max + 1) + "\n"
            + skill.skillLevel.spCostToMarkdownTableRow();

        if (skill.manaCost != null && skill.manaCost.length > 0) {
            str += "\n" + skill.manaCostToMarkdownTableRow();
        }

        return str;
    }
}

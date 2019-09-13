import Charts 1.0
import QtQuick 2.13

Item {
    width: 300; height: 200

    PieChart {
        id: aPieChart
        anchors.centerIn: parent
        width: 100; height: 100
        name: "A simple pie chart"
        color: "red"
    }

    Text {
        anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter; bottomMargin: 20 }
        text: aPieChart.name
    }
}

/*PieChart {
    width: 100; height: 100
    name: "A simple pie chart"
    color: "red"
}*/

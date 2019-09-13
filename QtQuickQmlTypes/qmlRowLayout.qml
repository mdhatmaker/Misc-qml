import QtQuick 2.13
import QtQuick.Layouts 1.13


// You usually want the initial size of the parent Window to be the layout's implicit size:
//width: layout.implicitWidth
//height: layout.implicitHeight

RowLayout {
    id: layout
    anchors.fill: parent
    spacing: 6
    Rectangle {
        color: 'azure'
        Layout.fillWidth: true
        Layout.minimumWidth: 50
        Layout.preferredWidth: 100
        Layout.maximumWidth: 300
        Layout.minimumHeight: 150
        Text {
            anchors.centerIn: parent
            text: parent.width + 'x' + parent.height
        }
    }
    Rectangle {
        color: 'plum'
        Layout.fillWidth: true
        Layout.minimumWidth: 100
        Layout.preferredWidth: 200
        Layout.preferredHeight: 100
        Text {
            anchors.centerIn: parent
            text: parent.width + 'x' + parent.height
        }
    }
}
import QtQuick 2.13
import QtQuick.Layouts 1.13


ColumnLayout{
    spacing: 2

    Rectangle {
        Layout.alignment: Qt.AlignCenter
        color: "red"
        Layout.preferredWidth: 40
        Layout.preferredHeight: 40
    }

    Rectangle {
        Layout.alignment: Qt.AlignRight
        color: "green"
        Layout.preferredWidth: 40
        Layout.preferredHeight: 70
    }

    Rectangle {
        Layout.alignment: Qt.AlignBottom
        Layout.fillHeight: true
        color: "blue"
        Layout.preferredWidth: 70
        Layout.preferredHeight: 40
    }
}
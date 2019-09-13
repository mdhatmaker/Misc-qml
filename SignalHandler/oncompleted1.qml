import QtQuick 2.13

Rectangle {
    width: 200; height: 200
    color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1)

    Component.onCompleted: {
        console.log("The rectangle's color is", color)
    }
}
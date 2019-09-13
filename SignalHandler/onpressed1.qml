import QtQuick 2.13


Rectangle {
    id: rect
    width: 400; height: 200

    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: parent.horizontalCenter;  // page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }

    Component.onCompleted: {
        console.log("starting...")
    }

    TapHandler {
        onPressedChanged: helloText.text = "taphandler pressed?"; // console.log("taphandler pressed?", pressed)
    }
}
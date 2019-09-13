import QtQuick 2.13

// Signal to signal connect
// By connecting signals to other signals, the connect() method can form different signal chains.

Rectangle {
    id: forwarder
    width: 100; height: 100

    signal send()
    onSend: console.log("Send clicked")

    TapHandler {
        id: mousearea
        anchors.fill: parent
        onTapped: console.log("Mouse clicked")
    }

    Component.onCompleted: {
        mousearea.tapped.connect(send)
    }
}

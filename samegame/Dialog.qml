//Dialog.qml
import QtQuick 2.13

Rectangle {
    id: container

    property string inputText: textInput.text
    signal closed

    function show(text) {
        dialogText.text = text;
        container.opacity = 1;
        textInput.opacity = 0;
    }

    function showWithInput(text) {
        show(text);
        textInput.opacity = 1;
        textInput.focus = true;
        textInput.text = ""
    }

    function hide() {
        textInput.focus = false;
        container.opacity = 0;
        container.closed();
    }

    width: dialogText.width + 20
    height: dialogText.height + 20
    opacity: 0

    Text {
        id: dialogText
        anchors.centerIn: parent
        text: ""
    }

    MouseArea {
        anchors.fill: parent
        onClicked: hide();
    }

    TextInput {
        id: textInput
        anchors { verticalCenter: parent.verticalCenter; left: dialogText.right }
        width: 80
        text: ""

        onAccepted: container.hide()    // close dialog when Enter is pressed
    }

}
//samegame.qml
import QtQuick 2.13
import "samegame.js" as SameGame

// https://srinikom.github.io/pyside-docs/tutorials/qmladvancedtutorial/index.html

Rectangle {
    id: screen

    width: 490; height: 720

    SystemPalette { id: activePalette }

    Dialog {
        id: dialog
        anchors.centerIn: parent
        z: 100
    }
    /*Dialog {
        id: nameInputDialog
        anchors.centerIn: parent
        z: 100

        onClosed: {
            if (nameInputDialog.inputText != "")
                SameGame.saveHighScore(nameInputDialog.inputText);
        }
    }*/

    Item {
        width: parent.width
        anchors { top: parent.top; bottom: toolBar.top }

        Image {
            id: background
            anchors.fill: parent
            source: "../shared/pics/background.jpg"
            fillMode: Image.PreserveAspectCrop
        }

        Item {
            id: gameCanvas

            property int score: 0
            property int blockSize: 40

            width: parent.width - (parent.width % blockSize)
            height: parent.height - (parent.height % blockSize)
            anchors.centerIn: parent

            MouseArea {
                anchors.fill: parent
                onClicked: SameGame.handleClick(mouse.x, mouse.y)
            }
        }
    }
        

    Rectangle {
        id: toolBar
        width: parent.width; height: 30
        color: activePalette.window
        anchors.bottom: screen.bottom

        //Button {
        MyButton {
            anchors { left: parent.left; verticalCenter: parent.verticalCenter }
            text: "New Game" 
            onClicked: SameGame.startNewGame()  //console.log("This doesn't do anything yet...")
        }

        Text {
            id: score
            anchors { right: parent.right; verticalCenter: parent.verticalCenter }
            text: "Score: Who knows?"
        }
    }

}
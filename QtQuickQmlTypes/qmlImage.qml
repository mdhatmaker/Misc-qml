import QtQuick 2.13
import QtQuick.Layouts 1.13

// https://doc.qt.io/qt-5/qml-qtquick-image.html#fillMode-prop

Rectangle {
    id: screen

    width: 490; height: 720

    SystemPalette { id: activePalette }

    property string filename: "../shared/pics/qtlogo.png"
    property int rx: 380
    property int ry: 120

    ColumnLayout {
        spacing: 2
    
        Rectangle {
            //Layout.alignment: Qt.AlignCenter
            color: "black"
            Layout.preferredWidth: rx
            Layout.preferredHeight: ry
            Layout.fillWidth: true
            //Layout.fillHeight: true
            // fillMode:Image.Stretch (default)
            Image {
                anchors.fill: parent
                source: filename
            }
        }
        Rectangle {
            Layout.alignment: Qt.AlignCenter
            color: "black"
            Layout.preferredWidth: rx
            Layout.preferredHeight: ry
            Layout.fillWidth: true
            // fillMode:Image.PreserveAspectFit
            Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: filename
            }
        }
        Rectangle {
            Layout.alignment: Qt.AlignCenter
            color: "black"
            Layout.preferredWidth: rx
            Layout.preferredHeight: ry
            Layout.fillWidth: true
            // fillMode:Image.PreserveAspectCrop
            Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectCrop
                source: filename
                clip: true
            }
        }
        Rectangle {
            Layout.alignment: Qt.AlignCenter
            color: "black"
            Layout.preferredWidth: rx
            Layout.preferredHeight: ry
            Layout.fillWidth: true
            // fillMode:Image.Tile
            Image {
                anchors.fill: parent
                fillMode: Image.Tile
                horizontalAlignment: Image.AlignLeft
                verticalAlignment: Image.AlignTop
                source: filename
            }
        }
        Rectangle {
            Layout.alignment: Qt.AlignCenter
            color: "black"
            Layout.preferredWidth: rx
            Layout.preferredHeight: ry
            Layout.fillWidth: true
            // fillMode:Image.TileVertically
            Image {
                anchors.fill: parent
                fillMode: Image.TileVertically
                verticalAlignment: Image.AlignTop
                source: filename
            }
        }
        Rectangle {
            Layout.alignment: Qt.AlignCenter
            color: "black"
            Layout.preferredWidth: rx
            Layout.preferredHeight: ry
            Layout.fillWidth: true
            // fillMode:Image.TileHorizontally
            Image {
                anchors.fill: parent
                fillMode: Image.TileHorizontally
                verticalAlignment: Image.AlignLeft
                source: filename
            }
        }
    }
    
}
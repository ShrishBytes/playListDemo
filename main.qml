import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Qt Music Player"
    color: "yellowgreen"  // Background color

    ListView {
        anchors.centerIn: parent
        width: parent.width  // Set the width to 80% of the parent's width
        height: parent.height
        model: playlistModel

        delegate: Item {
            width: parent.width
            height: 120

            Rectangle {
                width: parent.width
                height: 100
                color: "pink"
                radius: 10  // Rounded corners

                Image {
                    source: model.imageURL
                    width: 80
                    height: 80
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left  // Anchor the left side to the left side of its parent
                    anchors.leftMargin: 10  // Move the image 10 units to the right
                    clip: true
                    smooth: true  // Image smoothing
                }

                ColumnLayout {
                    width: parent.width - 100
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        text: model.title
                        font.pixelSize: 20
                        color: "#e74c3c"  // Title color
                        wrapMode: Text.Wrap
                        font.bold: true  // Bold font
                        anchors.left: parent.left  // Anchor the left side to the left side of its parent
                        anchors.leftMargin: 100  // Move the text 100 units to the right
                    }

                    Text {
                        text: model.artist
                        font.pixelSize: 16
                        color: "#ecf0f1"  // Light gray color
                        wrapMode: Text.Wrap
                        anchors.left: parent.left  // Anchor the left side to the left side of its parent
                        anchors.leftMargin: 100  // Move the text 130 units to the right
                    }

                    Text {
                        text: model.album
                        font.pixelSize: 16
                        color: "#ecf0f1"  // Light gray color
                        wrapMode: Text.Wrap
                        anchors.left: parent.left  // Anchor the left side to the left side of its parent
                        anchors.leftMargin: 100  // Move the text 130 units to the right
                    }
                }
            }
        }
    }

    ListModel {
        id: playlistModel

        ListElement {
            title: "Song 1"
            artist: "Artist 1"
            album: "Album 1"
            imageURL: "file:///C:/Users/SHRISH/Downloads/image1.jpg"  // Replace with the actual path to your image
        }

        ListElement {
            title: "Song 2"
            artist: "Artist 2"
            album: "Album 2"
            imageURL: "file:///C:/Users/SHRISH/Downloads/image2.jpg"  // Replace with the actual path to your image
        }
        // Add more ListElements for additional songs with their respective imageURLs
    }
}

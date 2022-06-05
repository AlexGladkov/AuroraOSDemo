import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    id: mailCell
    height: 216

    Row {
        x: 16

        Rectangle {
            x: 20
            y: 20
            color: "#3D6BE3"
            width: 15
            height: width
            radius: width * 0.5
        }

        Column {
            width: parent.width

            Label {
                x: 16
                text: author
                color: "#FFFFFF"
                font.pixelSize: 42
                font.bold: true
            }

            Label {
                x: 16
                text: subject
                color: "#FFFFFF"
                topPadding: 8
                font.pixelSize: 26
            }

            Label {
                x: 16
                width: column.width
                topPadding: 12
                bottomPadding: 12
                text: message
                wrapMode: Text.Wrap
                color: "#AAAAAA"
                maximumLineCount: 2
                lineHeight: 1.1
                font.pixelSize: 28
            }
        }
    }
}

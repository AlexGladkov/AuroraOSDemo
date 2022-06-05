import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1

Page {
    id: mailDetailPage
    backgroundColor: "black"

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    ListModel {
        id: detailePageData

        ListElement {
            position: "header"
            title: "John Doe"
            subtitle: "Алексей, Алексей & 6 more..."
            day: "Friday"
        }

        ListElement {
            position: "body"
            title: "FW: True subject theme title"
            message: "Всем привет.\n\nС некоторым из вас я это уже обсуждал лично. С кем-то не обсуждал, но обсужу. С некоторым из вас я это уже обсуждал лично. С кем-то не обсуждал, но обсужу.
С некоторым из вас я это уже обсуждал лично. С кем-то не обсуждал, но обсужу. С некоторым из вас я это уже обсуждал лично. С кем-то не обсуждал, но обсужу."
        }
    }

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: contentContainer.height

        Rectangle {
            anchors.fill: parent
            color: "Black"

            ColumnLayout {
                id: contentContainer
                anchors.fill: parent
                anchors.margins: 20

                    RowLayout {
                        id: mailHeaderContent
                        width: parent.width
                        spacing: 16

                        ColumnLayout {
                            RowLayout {
                                Label {
                                    font.pointSize: 16
                                    font.bold: true
                                    text: "John Doe"
                                }

                                Item {
                                    Layout.fillWidth: true
                                }

                                Label {
                                    color: "Grey"
                                    font.pointSize: 10
                                    text: "Friday"
                                }
                            }

                            RowLayout {
                                spacing: 16

                                Label {
                                    text: "To:"
                                    font.bold: true
                                    font.pointSize: 14
                                }

                                Label {
                                    text: "Алексей, Алексей & 6 more.."
                                    font.pointSize: 10
                                    color: "#99FFFFFF"
                                }
                            }
                        }
                    }

                Rectangle {
                    color: "#66A9ADB8"
                    Layout.minimumHeight: 1
                    Layout.minimumWidth: parent.width
                }

                Item {
                    Layout.fillHeight: true
                }
            }
        }
    }
}

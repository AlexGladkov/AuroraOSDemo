import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1

Page {
    id: page
    backgroundColor: "black"

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        ColumnLayout {
                id: column
                width: page.width
                height: page.height
                spacing: Theme.paddingLarge

                SilicaListView {
                    width: column.width; height: column.height
                    header: PageHeader {
                        title: qsTr("Не прочитано")
                        titleColor: "White"
                    }
                    model: ListModel {
                        ListElement {
                            author: "Ozon"
                            subject: "Заказ 54545564-0005 принят"
                            message: "Готовим товары к отправке Заказ принят и оплачен Здравствуйте, Алексей! Товары уже готовы"
                        }
                        ListElement {
                            author: "Youtube"
                            subject: "Новый ответ на комментарий к видео IT Обзор"
                            message: "Готовим товары к отправке Заказ принят и оплачен Здравствуйте, Алексей! Товары уже готовы"
                        }
                        ListElement {
                            author: "Youtube"
                            subject: "Новый ответ на комментарий к видео IT Обзор"
                            message: "Готовим товары к отправке Заказ принят и оплачен Здравствуйте, Алексей! Товары уже готовы"
                        }
                        ListElement {
                            author: "Ozon"
                            subject: "Заказ 54545564-0005 принят"
                            message: "Готовим товары к отправке Заказ принят и оплачен Здравствуйте, Алексей! Товары уже готовы"
                        }
                        ListElement {
                            author: "Ozon"
                            subject: "Заказ 54545564-0005 принят"
                            message: "Готовим товары к отправке Заказ принят и оплачен Здравствуйте, Алексей! Товары уже готовы"
                        }
                        ListElement {
                            author: "Ozon"
                            subject: "Заказ 54545564-0005 принят"
                            message: "Готовим товары к отправке Заказ принят и оплачен Здравствуйте, Алексей! Товары уже готовы"
                        }
                        ListElement {
                            author: "Patreon"
                            subject: "Заказ 54545564-0005 принят"
                            message: "Готовим товары к отправке Заказ принят и оплачен Здравствуйте, Алексей! Товары уже готовы"
                        }
                        ListElement {
                            author: "Boosty"
                            subject: "Заказ 54545564-0005 принят"
                            message: "Готовим товары к отправке Заказ принят и оплачен Здравствуйте, Алексей! Товары уже готовы"
                        }
                    }

                    delegate: BackgroundItem {
                        id: mailCell
                        height: cellContainer.implicitHeight
                        onClicked: {
                            pageStack.push("../SecondPage.qml")
                        }


                        RowLayout {
                            id: cellContainer
                            anchors.fill: parent
                            anchors.margins: 16
                            spacing: Theme.dp(16)

                            Rectangle {
                                Layout.alignment: Qt.AlignTop
                                id: roundDot
                                x: 20
                                y: 20
                                color: "#3D6BE3"
                                width: 15
                                height: width
                                radius: width * 0.5
                            }


                            ColumnLayout {
                                Label {
                                    id: authorTextView
                                    text: author
                                    color: "#FFFFFF"
                                    font.pointSize: 20
                                    font.bold: true
                                }

                                Label {
                                    id: subjectTextView
                                    text: subject
                                    color: "#FFFFFF"
                                    font.pointSize: 14
                                }

                                Label {
                                    id: messageTextView
                                    text: message
                                    wrapMode: Text.Wrap
                                    color: "#AAAAAA"
                                    maximumLineCount: 2
                                    lineHeight: 1.1
                                    font.pointSize: 14
                                }
                            }
                        }
                    }
                }
           }
    }
}

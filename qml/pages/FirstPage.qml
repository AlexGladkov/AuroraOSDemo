import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    backgroundColor: "black"

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height


        Column {
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

                    delegate: BackgroundItem  {
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
                }
           }
    }
}

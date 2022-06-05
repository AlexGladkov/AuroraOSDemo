import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1

Page {
    backgroundColor: "Black"

    ColumnLayout {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 24
        spacing: 16

        Label {
            text: "Login"
            color: "Black"
            font.bold: true
            font.pointSize: 14
        }

        TextField {
            id: loginTextField
            width: mailDetailPage.width
            color: "black"
            placeholderText: "Enter login"
            placeholderColor: "grey"
            placeholderAnimationEnabled: false
            clip: true
            textLeftPadding: 0
            labelVisible: false
        }

        Label {
            text: "Password"
            color: "Black"
            font.bold: true
            font.pointSize: 14
        }

        TextField {
            id: passwordTextField
            width: mailDetailPage.width
            color: "black"
            placeholderText: "Enter password"
            placeholderColor: "grey"
            placeholderAnimationEnabled: false
            textLeftPadding: 0
            clip: true
            labelVisible: false
            echoMode: TextInput.Password
        }

        Button {
            Layout.fillWidth: true
            text: "Login"
            onClicked: console.log("Login: " + loginTextField.text + " Password: " + passwordTextField.text)
            highlightColor: "black"
            highlightBackgroundColor: "darkgrey"
            color: "black"
        }
    }
}

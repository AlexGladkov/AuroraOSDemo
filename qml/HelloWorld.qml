import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"
import "pages/maillist"

ApplicationWindow
{
    initialPage: Component { MailListScreen { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
}

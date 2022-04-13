#include <sailfishapp.h>

#include <QtQuick>

int main(int argc, char *argv[])
{
    // SailfishApp::main() will display "qml/HelloWorld.qml", if you need more
    // control over initialization, you can use:
    //
    //   - SailfishApp::application(int, char *[]) to get the QGuiApplication *
    //   - SailfishApp::createView() to get a new QQuickView * instance
    //   - SailfishApp::pathTo(QString) to get a QUrl to a resource file
    //   - SailfishApp::pathToMainQml() to get a QUrl to the main QML file
    //
    // To display the view, call "show()" (will show fullscreen on device).

    QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));
    app->setApplicationName("HelloWorld");
    app->setOrganizationName("ru.test");

    QScopedPointer<QQuickView> view(SailfishApp::createView());
    view->setSource(SailfishApp::pathToMainQml());
    view->showFullScreen();

    return app->exec();
}

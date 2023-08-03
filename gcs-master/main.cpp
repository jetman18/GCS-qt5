#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "./source/cpp/udp_link.h"
#include <QQmlContext>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    //qmlRegisterType<udplink>("Cpp",1,0,"Cpp");
    QGuiApplication app(argc, argv);
    udplink k;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("Udplink", &k);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.load(url);
    return app.exec();
}

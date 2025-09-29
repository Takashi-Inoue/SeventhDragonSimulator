#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QTranslator>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    app.setOrganizationName("AbearyA");
    app.setOrganizationDomain("nodomain");
    app.setApplicationName("7th Dragon Skill Simulator");

    QTranslator translator;

    if (translator.load(QLocale::system(), "seventhss", "_", "translations", ".qm"))
        app.installTranslator(&translator);

    QQmlApplicationEngine engine;

    QQuickStyle::setStyle("Basic");

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("SeventhDragonSimulator", "Main");

    return app.exec();
}

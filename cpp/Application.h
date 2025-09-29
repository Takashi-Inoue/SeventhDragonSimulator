#ifndef APPLICATION_H
#define APPLICATION_H

#include <QObject>
#include <QQmlEngine>

class Application : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    using QObject::QObject;

    Q_INVOKABLE QUrl settingIniPath() const;
};

#endif // APPLICATION_H

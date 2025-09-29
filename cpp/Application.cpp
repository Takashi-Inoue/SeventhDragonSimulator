#include "Application.h"

#include <QCoreApplication>

QUrl Application::settingIniPath() const
{
    return QUrl::fromLocalFile(QCoreApplication::applicationDirPath() + "/settings.ini");
}

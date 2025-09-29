/*
 * Copyright YEAR Takashi Inoue
 *
 * This file is part of APPNAME.
 *
 * APPNAME is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * APPNAME is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with APPNAME.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <QFile>
#include <QJsonObject>

#pragma once

template <typename T>
QJsonValue toJsonValue(const T &value)
{
    return QJsonValue::fromVariant(QVariant::fromValue(value));
}

class JsonHelper {
public:
    static QJsonObject loadJsonFromFile(QStringView jsonPath)
    {
        QFile loadFile(jsonPath.toString());

        if (!loadFile.open(QIODevice::ReadOnly)) {
            qWarning() << QStringLiteral("Couldn't open save file. %1").arg(jsonPath);

            return QJsonObject{};
        }

        QByteArray saveData = loadFile.readAll();
        QJsonDocument loadDoc(QJsonDocument::fromJson(saveData));

        return loadDoc.object();
    }

    static bool saveJsonToFile(const QJsonObject &json, QStringView jsonPath)
    {
        QFile saveFile(jsonPath.toString());

        if (!saveFile.open(QIODevice::WriteOnly)) {
            qWarning() << QStringLiteral("Couldn't open save file. %1").arg(jsonPath);

            return false;
        }

        if (saveFile.write(QJsonDocument(json).toJson()) == -1) {
            qWarning() << QStringLiteral("Failed to write save file. %1").arg(jsonPath);

            return false;
        }

        return true;
    }
};


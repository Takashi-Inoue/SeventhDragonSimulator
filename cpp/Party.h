#ifndef PARTY_H
#define PARTY_H

#include <QObject>
#include <QQmlEngine>
#include <QAbstractListModel>
#include <QColor>
#include <QJsonObject>

#include "Character.h"

class Party : public QAbstractListModel
{
    Q_OBJECT

    Q_PROPERTY(QString partyID READ partyID CONSTANT)
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged FINAL)
    Q_PROPERTY(QColor bgColor READ bgColor WRITE setBgColor NOTIFY bgColorChanged FINAL)
    Q_PROPERTY(bool isEdited READ isEdited WRITE setIsEdited NOTIFY isEditedChanged FINAL)

    QML_ELEMENT
public:
    explicit Party(QObject *parent = nullptr);
    explicit Party(const QJsonObject &json, QObject *parent = nullptr);
    explicit Party(const QJsonValue &jsonValue, QObject *parent = nullptr);

    QJsonObject toJson() const;

    Q_INVOKABLE QList<Character *> characters(Character::ClassType classType) const;
    Q_INVOKABLE Character *character(const QModelIndex &index) const;
    Q_INVOKABLE Character *characterFromID(QString characterID) const;
    Q_INVOKABLE int indexOf(QString characterID) const;
    Q_INVOKABLE void deleteCharacter(QString characterID);
    Q_INVOKABLE void activateCharacter(int index);
    Q_INVOKABLE bool hasClass(Character::ClassType classType) const;
    Q_INVOKABLE void duplicateCharacter(QString sourceCharacterID, Party *destParty) const;

    QString partyID() const;
    void addCharacter(Character *newCharacter);

    QString name() const;
    void setName(const QString &newName);

    QColor bgColor() const;
    void setBgColor(const QColor &newBgColor);

    bool isEdited() const;
    void setIsEdited(bool newIsEdited);

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QHash<int, QByteArray> roleNames() const override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole) override;
    bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex()) override;

public slots:
    Character *createNewCharacter(Character::ClassType classType);
    void onCharacterEdited();

signals:
    void nameChanged();
    void bgColorChanged();
    void characterCountChanged();
    void characterActivated(QString partyID, QString characterID);
    void isEditedChanged();

private:
    const QString m_partyID;
    QString m_name;
    QColor m_bgColor;

    QList<Character *> m_characters;

    bool m_isEdited = false;
};

#endif // PARTY_H

#ifndef PARTYLIST_H
#define PARTYLIST_H

#include <QAbstractListModel>
#include <QQmlEngine>
#include <QQmlListProperty>

#include "Party.h"

class PartyList : public QAbstractListModel
{
    Q_OBJECT

    Q_PROPERTY(QQmlListProperty<Party> parties READ parties CONSTANT FINAL)
    Q_PROPERTY(bool isEdited READ isEdited WRITE setIsEdited NOTIFY isEditedChanged FINAL)

    QML_ELEMENT
public:
    enum PartyRoles {
        NameRole = Qt::UserRole + 1,
        BackgroundRole,
        InformativeNameRole
    };
    Q_ENUM(PartyRoles)

    explicit PartyList(QObject *parent = nullptr);

    Q_INVOKABLE void load();
    Q_INVOKABLE bool save();

    Q_INVOKABLE Party *createNewParty();
    Q_INVOKABLE Party *partyFromID(QString partyID);
    Q_INVOKABLE void duplicateCharacter(QString sourcePartyID, QString sourceCharacterID,
                                        QString destPartyID);
    Q_INVOKABLE bool isEdited() const;

    QQmlListProperty<Party> parties();

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QHash<int, QByteArray> roleNames() const override;
    // Qt::ItemFlags flags(const QModelIndex &index) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole) override;
    bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex()) override;

    void setIsEdited(bool newIsEdited);

signals:
    void loadFinished();
    void newPartyAdded(Party *party);
    void partyCountChanged();
    void isEditedChanged();

private slots:
    void onPartyIsEditedChanged();

private:
    QList<Party *> m_parties;
    bool m_isEdited = false;
};

#endif // PARTYLIST_H

#include "PartyList.h"

#include "json.h"

#include <QGuiApplication>
#include <QJsonArray>


namespace {
static constexpr char keyParties[] = "Parties";
}

//--------------------------------------------------------------------------------------

QString jsonFilePath()
{
    return QGuiApplication::applicationDirPath() + QStringLiteral("/savedata.json");
}

//--------------------------------------------------------------------------------------

PartyList::PartyList(QObject *parent)
    : QAbstractListModel{parent}
{}

void PartyList::load()
{
    qInfo() << "PartyList::load()";

    QJsonObject json = JsonHelper::loadJsonFromFile(jsonFilePath());
    const QJsonArray jsonArray = json[keyParties].toArray();

    if (!jsonArray.isEmpty()) {
        beginResetModel();

        m_parties.clear();

        for (const QJsonValue &jsonValue : jsonArray) {
            auto party = m_parties.emplaceBack(new Party{jsonValue, this});

            connect(party, &Party::isEditedChanged, this, &PartyList::onPartyIsEditedChanged);
        }

        setIsEdited(false);

        endResetModel();
    }

    emit loadFinished();
}

bool PartyList::save()
{
    QJsonObject json;
    QJsonArray jsonArray;

    for (Party *party : std::as_const(m_parties))
        jsonArray.append(party->toJson());

    json[keyParties] = jsonArray;

    bool result = JsonHelper::saveJsonToFile(json, jsonFilePath());

    if (result) {
        for (Party *party : std::as_const(m_parties))
            party->setIsEdited(false);

        setIsEdited(false);
    }

    return result;
}

Party *PartyList::createNewParty()
{
    int row = rowCount();

    beginInsertRows(QModelIndex{}, row, row);

    auto party = m_parties.emplaceBack(new Party{this});

    endInsertRows();

    connect(party, &Party::isEditedChanged, this, &PartyList::onPartyIsEditedChanged);

    emit newPartyAdded(party);
    emit partyCountChanged();
    emit isEditedChanged();

    return party;
}

Party *PartyList::partyFromID(QString partyID)
{
    auto itr = std::ranges::find_if(m_parties, [&](Party *party) {
        return party->partyID() == partyID;
    });

    if (itr == m_parties.end())
        return nullptr;

    return *itr;
}

void PartyList::duplicateCharacter(QString sourcePartyID, QString sourceCharacterID,
                                   QString destPartyID)
{
    auto sourceItr = std::ranges::find_if(m_parties, [&](Party *party) {
        return party->partyID() == sourcePartyID;
    });

    auto destItr = std::ranges::find_if(m_parties, [&](Party *party) {
        return party->partyID() == destPartyID;
    });

    Q_ASSERT(sourceItr != m_parties.end());
    Q_ASSERT(destItr != m_parties.end());

    (*sourceItr)->duplicateCharacter(sourceCharacterID, *destItr);
}

bool PartyList::isEdited() const
{
    if (m_isEdited)
        return true;

    for (Party *party : m_parties) {
        if (party->isEdited())
            return true;
    }

    return false;
}

QQmlListProperty<Party> PartyList::parties()
{
    return QQmlListProperty<Party>{this, &m_parties};
}

int PartyList::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;

    return m_parties.size();
}

QHash<int, QByteArray> PartyList::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[NameRole] = "name";
    roles[BackgroundRole] = "bgColor";
    roles[InformativeNameRole] = "informativeName";
    return roles;
}

// Qt::ItemFlags PartyList::flags(const QModelIndex &index) const
// {
//     if (!index.isValid())
//         return Qt::NoItemFlags;

//     return Qt::ItemIsSelectable | Qt::ItemIsEditable | Qt::ItemIsEnabled | Qt::ItemNeverHasChildren;
// }

QVariant PartyList::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant{};

    Party *party = m_parties.at(index.row());

    switch (role) {
    case Qt::DisplayRole:
    case NameRole:
        return party->name();

    case Qt::BackgroundRole:
    case BackgroundRole:
        return party->bgColor();

    case InformativeNameRole:
        return party->name() + (party->isEdited() ? QStringLiteral(" *") : "");
    }

    return QVariant{};
}

bool PartyList::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (!index.isValid())
        return false;

    if (role == NameRole || role == Qt::EditRole || role == Qt::DisplayRole) {
        m_parties[index.row()]->setName(value.toString());

        emit dataChanged(index, index, {NameRole, InformativeNameRole});

        return true;
    }

    if (role == BackgroundRole || role == Qt::BackgroundRole) {
        m_parties[index.row()]->setBgColor(value.value<QColor>());

        emit dataChanged(index, index, {BackgroundRole});

        return true;
    }

    return false;
}

bool PartyList::removeRows(int row, int count, const QModelIndex &parent)
{
    if (parent.isValid())
        return false;

    beginRemoveRows(parent, row, row + count - 1);

    m_parties.remove(row, count);
    setIsEdited(true);

    endRemoveRows();

    return true;
}

void PartyList::onPartyIsEditedChanged()
{
    auto itr = std::ranges::find_if(m_parties, [&](Party *party) {
        return sender() == party;
    });

    int row = std::distance(m_parties.begin(), itr);
    QModelIndex idxModel = this->index(row, 0);

    emit dataChanged(idxModel, idxModel, {Qt::DisplayRole, NameRole, InformativeNameRole});
    emit isEditedChanged();
}

void PartyList::setIsEdited(bool newIsEdited)
{
    if (m_isEdited == newIsEdited)
        return;

    m_isEdited = newIsEdited;

    emit isEditedChanged();
}

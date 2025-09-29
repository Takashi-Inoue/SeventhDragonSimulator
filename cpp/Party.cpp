#include "Party.h"
#include "json.h"

#include <algorithm>
#include <QUuid>
#include <QJsonArray>


namespace {
static constexpr char keyID[] = "ID";
static constexpr char keyName[] = "Name";
static constexpr char keyBgColor[] = "BackgroundColor";
static constexpr char keyCharacters[] = "Characters";
}


Party::Party(QObject *parent)
    : QAbstractListModel{parent}
    , m_partyID{QUuid::createUuidV7().toString()}
    , m_name{tr("New Party")}
    , m_bgColor{0xCCCCFF}
{
    m_isEdited = true;
}

Party::Party(const QJsonObject &json, QObject *parent)
    : QAbstractListModel{parent}
    , m_partyID{json[keyID].toString()}
    , m_name{json[keyName].toString()}
    , m_bgColor{json[keyBgColor].toVariant().value<QColor>()}
{
    const QJsonArray jsonArray = json[keyCharacters].toArray();

    for (const QJsonValue &jsonValue : jsonArray) {
        auto character = m_characters.emplaceBack(new Character{jsonValue, this});

        connect(character, &Character::nameChanged, this, &Party::onCharacterEdited);
        connect(character, &Character::characterNumberChanged, this, &Party::onCharacterEdited);
        connect(character, &Character::skillLevelChanged, this, &Party::onCharacterEdited);
        connect(character, &Character::isEnabledChibiTalkChanged, this, &Party::onCharacterEdited);
        connect(character, &Character::memoChanged, this, &Party::onCharacterEdited);
    }
}

Party::Party(const QJsonValue &jsonValue, QObject *parent)
    : Party(jsonValue.toObject(), parent)
{}

QJsonObject Party::toJson() const
{
    QJsonObject json;

    json[keyID] = m_partyID;
    json[keyName] = m_name;
    json[keyBgColor] = toJsonValue(m_bgColor);

    QJsonArray jsonArray;

    for (const Character *character : m_characters)
        jsonArray.append(character->toJson());

    json[keyCharacters] = jsonArray;

    return json;
}

QList<Character *> Party::characters(Character::ClassType classType) const
{
    QList<Character *> list;

    for (Character *character : m_characters) {
        if (character->classType() == classType)
            list.append(character);
    }

    qDebug() << QString("Party: Characters are requested. Class=%1").arg(classType) << list;

    return list;
}

Character *Party::character(const QModelIndex &index) const
{
    if (!index.isValid())
        return nullptr;

    return m_characters.at(index.row());
}

Character *Party::characterFromID(QString characterID) const
{
    int index = indexOf(characterID);

    if (index == -1)
        return nullptr;

    return m_characters.at(index);
}

int Party::indexOf(QString characterID) const
{
    auto itr = std::ranges::find_if(m_characters, [&](Character *character) {
        return character->characterID() == characterID;
    });

    if (itr == m_characters.end())
        return -1;

    return std::distance(m_characters.begin(), itr);
}

void Party::deleteCharacter(QString characterID)
{
    auto itr = std::ranges::find_if(m_characters, [&](Character *character) {
        return character->characterID() == characterID;
    });

    if (itr == m_characters.end())
        return;

    int index = std::distance(m_characters.begin(), itr);

    beginRemoveRows(QModelIndex{}, index, index);
    m_characters.erase(itr);
    endRemoveRows();

    setIsEdited(true);

    emit characterCountChanged();
}

void Party::activateCharacter(int index)
{
    Q_ASSERT(index >= 0 && index < m_characters.size());

    qDebug() << "Party::activateCharacter" << this << index;

    emit characterActivated(m_partyID, m_characters.at(index)->characterID());
}

bool Party::hasClass(Character::ClassType classType) const
{
    auto itr = std::ranges::find_if(m_characters, [&](Character *character) {
        return character->classType() == classType;
    });

    return itr != m_characters.end();
}

void Party::duplicateCharacter(QString sourceCharacterID, Party *destParty) const
{
    auto itr = std::ranges::find_if(m_characters, [&](Character *character) {
        return character->characterID() == sourceCharacterID;
    });

    Q_ASSERT(itr != m_characters.end());

    destParty->addCharacter((*itr)->duplicate());
}

QString Party::partyID() const
{
    return m_partyID;
}

void Party::addCharacter(Character *newCharacter)
{
    Q_ASSERT(newCharacter != nullptr);

    qDebug() << QString("Add a character:") << newCharacter;

    newCharacter->setParent(this);

    int row = m_characters.size();

    beginInsertRows(QModelIndex{}, row, row);

    m_characters.push_back(newCharacter);

    endInsertRows();

    setIsEdited(true);

    emit characterCountChanged();

    connect(newCharacter, &Character::nameChanged, this, &Party::onCharacterEdited);
    connect(newCharacter, &Character::characterNumberChanged, this, &Party::onCharacterEdited);
    connect(newCharacter, &Character::skillLevelChanged, this, &Party::onCharacterEdited);
    connect(newCharacter, &Character::isEnabledChibiTalkChanged, this, &Party::onCharacterEdited);
    connect(newCharacter, &Character::memoChanged, this, &Party::onCharacterEdited);
}

QString Party::name() const
{
    return m_name;
}

void Party::setName(const QString &newName)
{
    if (m_name == newName)
        return;

    qDebug() << QString("Party::setName() %1 to %2").arg(m_name, newName);

    m_name = newName;

    setIsEdited(true);

    emit nameChanged();
}

QColor Party::bgColor() const
{
    return m_bgColor;
}

void Party::setBgColor(const QColor &newBgColor)
{
    if (m_bgColor == newBgColor)
        return;

    m_bgColor = newBgColor;

    setIsEdited(true);

    emit bgColorChanged();
}

bool Party::isEdited() const
{
    return m_isEdited;
}

void Party::setIsEdited(bool newIsEdited)
{
    if (m_isEdited == newIsEdited)
        return;

    m_isEdited = newIsEdited;

    emit isEditedChanged();
}

int Party::rowCount(const QModelIndex &parent) const
{
    return m_characters.size();
}

QHash<int, QByteArray> Party::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[Character::NameRole] = "name";
    roles[Character::ClassTypeRole] = "classType";
    roles[Character::CharacterNumberRole] = "characterNumber";
    return roles;
}

Qt::ItemFlags Party::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::NoItemFlags;

    return Qt::ItemIsSelectable | Qt::ItemIsEditable | Qt::ItemIsEnabled | Qt::ItemNeverHasChildren;
}

QVariant Party::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant{};

    switch (role) {
    case Qt::DisplayRole:
    case Character::NameRole:
        return m_characters.at(index.row())->name();

    case Character::ClassTypeRole:
        return m_characters.at(index.row())->classType();

    case Character::CharacterNumberRole:
        return m_characters.at(index.row())->characterNumber();
    }

    return QVariant{};
}

bool Party::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (!index.isValid())
        return false;

    if (role == Character::NameRole || role == Qt::EditRole || role == Qt::DisplayRole) {
        Character *character = m_characters[index.row()];
        QString newName = value.toString();

        if (character->name() == newName)
            return false;

        character->setName(newName);

        emit dataChanged(index, index, {Character::NameRole});

        setIsEdited(true);

        return true;
    }

    if (role == Character::CharacterNumberRole) {
        Character *character = m_characters[index.row()];
        int newNumber = value.toInt();

        if (character->characterNumber() == newNumber)
            return false;

        character->setCharacterNumber(newNumber);

        emit dataChanged(index, index, {Character::CharacterNumberRole});

        setIsEdited(true);

        return true;
    }

    return false;
}

bool Party::removeRows(int row, int count, const QModelIndex &parent)
{
    if (row >= m_characters.size() || row < 0)
        return false;

    beginRemoveRows(parent, row, row + count - 1);

    m_characters.remove(row, count);

    endRemoveRows();

    setIsEdited(true);

    emit characterCountChanged();

    return true;
}

Character *Party::createNewCharacter(Character::ClassType classType)
{
    qDebug() << QString("Create a character: Type=%1").arg(classType);

    int row = m_characters.size();

    beginInsertRows(QModelIndex{}, row, row);

    auto character = m_characters.emplaceBack(new Character{classType, this});

    endInsertRows();

    setIsEdited(true);

    emit characterCountChanged();

    connect(character, &Character::nameChanged, this, &Party::onCharacterEdited);
    connect(character, &Character::characterNumberChanged, this, &Party::onCharacterEdited);
    connect(character, &Character::skillLevelChanged, this, &Party::onCharacterEdited);
    connect(character, &Character::isEnabledChibiTalkChanged, this, &Party::onCharacterEdited);
    connect(character, &Character::memoChanged, this, &Party::onCharacterEdited);

    return character;
}

void Party::onCharacterEdited()
{
    setIsEdited(true);
}

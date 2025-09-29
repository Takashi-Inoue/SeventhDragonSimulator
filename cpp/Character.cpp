#include "Character.h"

#include <QUuid>


namespace {
static constexpr char keyID[] = "ID";
static constexpr char keyClassType[] = "ClassType";
static constexpr char keyName[] = "Name";
static constexpr char keyCharacterNumber[] = "CharacterNumber";
static constexpr char keyChibiTalk[] = "ChibiTalk";
static constexpr char keyMemo[] = "Memo";
static constexpr char keySkillLevels[] = "SkillLevels";
}


Character::Character(ClassType classType, QObject *parent)
    : QObject{parent}
    , m_characterID(QUuid::createUuidV7().toString())
    , m_classType(classType)
    , m_name(tr("New Character"))
{}

Character::Character(QJsonObject json, QObject *parent)
    : QObject{parent}
    , m_characterID(json[keyID].toString())
    , m_classType(static_cast<ClassType>(json[keyClassType].toInt()))
    , m_name(json[keyName].toString())
    , m_characterNumber(json[keyCharacterNumber].toInt())
    , m_isEnabledChibiTalk(json[keyChibiTalk].toBool())
    , m_memo(json[keyMemo].toString())
    , m_skillLevelHash(json[keySkillLevels].toObject().toVariantHash())
{
    qInfo() << QString("Character is loaded. ID=%1, Class=%2, Name=%3").arg(m_characterID).arg(m_classType).arg(m_name);
}

Character::Character(QJsonValue jsonValue, QObject *parent)
    : Character{jsonValue.toObject(), parent}
{}

QJsonObject Character::toJson() const
{
    QJsonObject json;

    json[keyID] = m_characterID;
    json[keyClassType] = m_classType;
    json[keyName] = m_name;
    json[keyCharacterNumber] = m_characterNumber;
    json[keyChibiTalk] = m_isEnabledChibiTalk;
    json[keyMemo] = m_memo;
    json[keySkillLevels] = QJsonObject::fromVariantHash(m_skillLevelHash);

    return json;
}

Character *Character::duplicate() const
{
    auto character = new Character{m_classType, parent()};

    character->m_name = m_name;
    character->m_characterNumber = m_characterNumber;
    character->m_isEnabledChibiTalk = m_isEnabledChibiTalk;
    character->m_memo = m_memo;
    character->m_skillLevelHash = m_skillLevelHash;

    return character;
}

int Character::skillLevel(QString skillName) const
{
    return m_skillLevelHash.value(skillName, 0).toInt();
}

void Character::setSkillLevel(QString skillName, int level)
{
    auto itr = m_skillLevelHash.find(skillName);

    if (itr != m_skillLevelHash.end()) {
        if (itr.value() == level)
            return;
        else
            itr.value() = level;
    } else {
        m_skillLevelHash.insert(skillName, level);
    }

    qDebug() << this << QString("Changing skill level: %1 %2").arg(skillName).arg(level);

    emit skillLevelChanged();
}

////////////////////// property - getter & setter //////////////////////
QString Character::characterID() const
{
    return m_characterID;
}

Character::ClassType Character::classType() const
{
    return m_classType;
}

QString Character::name() const
{
    return m_name;
}

void Character::setName(QString name)
{
    if (m_name == name)
        return;

    qDebug() << QString("Character::setName() %1 to %2").arg(m_name, name);

    m_name = name;

    emit nameChanged();
}

int Character::characterNumber() const
{
    return m_characterNumber;
}

void Character::setCharacterNumber(int newCharacterNumber)
{
    if (m_characterNumber == newCharacterNumber)
        return;

    qDebug() << this << QString("Changing Character Number: %1 to %2").arg(m_characterNumber).arg(newCharacterNumber);

    m_characterNumber = newCharacterNumber;

    emit characterNumberChanged();
}

bool Character::isEnabledChibiTalk() const
{
    return m_isEnabledChibiTalk;
}

void Character::setIsEnabledChibiTalk(bool newIsEnabledChibiTalk)
{
    if (m_isEnabledChibiTalk == newIsEnabledChibiTalk)
        return;

    m_isEnabledChibiTalk = newIsEnabledChibiTalk;

    emit isEnabledChibiTalkChanged();
}

QString Character::memo() const
{
    return m_memo;
}

void Character::setMemo(const QString &newMemo)
{
    if (m_memo == newMemo)
        return;

    m_memo = newMemo;

    emit memoChanged();
}

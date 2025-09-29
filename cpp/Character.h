#ifndef CHARACTER_H
#define CHARACTER_H

#include <QObject>
#include <QQmlEngine>
#include <QJsonObject>

class Character : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    QML_UNCREATABLE("")

    Q_PROPERTY(QString characterID READ characterID CONSTANT FINAL)
    Q_PROPERTY(ClassType classType READ classType CONSTANT FINAL)
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(int characterNumber READ characterNumber WRITE setCharacterNumber NOTIFY characterNumberChanged FINAL)
    Q_PROPERTY(bool isEnabledChibiTalk READ isEnabledChibiTalk WRITE setIsEnabledChibiTalk NOTIFY isEnabledChibiTalkChanged FINAL)
    Q_PROPERTY(QString memo READ memo WRITE setMemo NOTIFY memoChanged FINAL)
public:
    enum ClassType {
        Fighter = 0,
        Rogue,
        Samurai,
        Knight,
        Mage,
        Healer,
        Princess
    };

    enum CharacterRole {
        NameRole = Qt::UserRole + 1,
        ClassTypeRole,
        CharacterNumberRole
    };

    Q_ENUM(ClassType)
    Q_ENUM(CharacterRole)

    explicit Character(ClassType classType, QObject *parent = nullptr);
    explicit Character(QJsonObject json, QObject *parent = nullptr);
    explicit Character(QJsonValue jsonValue, QObject *parent = nullptr);

    QJsonObject toJson() const;
    Character *duplicate() const;

    Q_INVOKABLE int skillLevel(QString skillName) const;
    Q_INVOKABLE void setSkillLevel(QString skillName, int level);

    // property - getter & setter
    QString characterID() const;
    ClassType classType() const;

    QString name() const;
    void setName(QString name);

    int characterNumber() const;
    void setCharacterNumber(int newCharacterNumber);

    bool isEnabledChibiTalk() const;
    void setIsEnabledChibiTalk(bool newIsEnabledChibiTalk);

    QString memo() const;
    void setMemo(const QString &newMemo);

signals:
    void nameChanged();
    void characterNumberChanged();
    void skillLevelChanged();
    void isEnabledChibiTalkChanged();
    void memoChanged();

private:
    const QString m_characterID;
    const ClassType m_classType;

    QString m_name;
    int m_characterNumber = 0;
    bool m_isEnabledChibiTalk = false;
    QString m_memo;

    QVariantHash m_skillLevelHash;
};

#endif // CHARACTER_H

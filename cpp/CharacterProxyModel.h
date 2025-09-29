#ifndef CHARACTERPROXYMODEL_H
#define CHARACTERPROXYMODEL_H

#include <QQmlEngine>
#include <QSortFilterProxyModel>

#include "Character.h"

class CharacterProxyModel : public QSortFilterProxyModel
{
    Q_OBJECT
    Q_PROPERTY(Character::ClassType classTypeForFilter READ classTypeForFilter WRITE setClassTypeForFilter NOTIFY classTypeForFilterChanged FINAL)
    QML_ELEMENT
public:

    CharacterProxyModel(QObject *parent = nullptr);

    Character::ClassType classTypeForFilter() const;
    void setClassTypeForFilter(const Character::ClassType &newClassTypeForFilter);

signals:
    void classTypeForFilterChanged();

protected:
    bool filterAcceptsRow(int sourceRow, const QModelIndex &sourceParent) const override;

private:
    Character::ClassType m_classTypeForFilter = Character::Fighter;
};

#endif // CHARACTERPROXYMODEL_H

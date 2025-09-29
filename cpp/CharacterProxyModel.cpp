#include "CharacterProxyModel.h"

CharacterProxyModel::CharacterProxyModel(QObject *parent)
    : QSortFilterProxyModel{parent}
{
    setFilterKeyColumn(-1);
}

Character::ClassType CharacterProxyModel::classTypeForFilter() const
{
    return m_classTypeForFilter;
}

void CharacterProxyModel::setClassTypeForFilter(const Character::ClassType &newClassTypeForFilter)
{
    if (m_classTypeForFilter == newClassTypeForFilter)
        return;

    beginFilterChange();
    m_classTypeForFilter = newClassTypeForFilter;
    invalidateRowsFilter();

    emit classTypeForFilterChanged();
}

bool CharacterProxyModel::filterAcceptsRow(int sourceRow, const QModelIndex &sourceParent) const
{
    if (filterKeyColumn() != 0 || sourceParent.isValid())
        return true;

    QModelIndex idxSource = sourceModel()->index(sourceRow, 0, sourceParent);

    auto classType = idxSource.data(Character::ClassTypeRole).value<Character::ClassType>();

    return m_classTypeForFilter == classType;
}

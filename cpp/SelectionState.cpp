#include "SelectionState.h"
#include "Character.h"

SelectionState::SelectionState(QObject *parent)
    : QObject{parent}
{}

void SelectionState::updateSelectedIndex(QString partyID, int selectedIndex)
{
    qDebug() << "SelectionState::update selected index" << partyID << selectedIndex;

    m_selectionMap[partyID] = selectedIndex;
}

void SelectionState::updateFilterIndex(QString partyID, int filterIndex)
{
    qDebug() << "SelectionState::update filter index" << partyID << filterIndex;

    m_filterMap[partyID] = filterIndex;
}

int SelectionState::selectedIndex(QString partyID) const
{
    qDebug() << "SelectionState::selectedIndex: partyID =" << partyID;
    qDebug() << "selectedIndex =" << m_selectionMap.value(partyID);

    return m_selectionMap.value(partyID);
}

int SelectionState::filterIndex(QString partyID) const
{
    qDebug() << "SelectionState::filterIndex: partyID =" << partyID;
    qDebug() << "filterIndex =" << m_selectionMap.value(partyID, Character::Princess + 1);

    return m_filterMap.value(partyID, Character::Princess + 1);
}

#ifndef SELECTIONSTATE_H
#define SELECTIONSTATE_H

#include <QObject>
#include <QQmlEngine>

class SelectionState : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit SelectionState(QObject *parent = nullptr);

    Q_INVOKABLE void updateSelectedIndex(QString partyID, int selectedIndex);
    Q_INVOKABLE void updateFilterIndex(QString partyID, int filterIndex);
    Q_INVOKABLE int selectedIndex(QString partyID) const;
    Q_INVOKABLE int filterIndex(QString partyID) const;

signals:

private:
    QMap<QString, int> m_selectionMap;
    QMap<QString, int> m_filterMap;
};

#endif // SELECTIONSTATE_H

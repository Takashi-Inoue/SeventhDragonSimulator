import QtQuick
import QtCore
import QtQuick.Controls

Item {
    id: root

    property alias iniFileQUrl: settings.location
    property Window window: null
    property SplitView splitView: null

    function load() {
        if (root.splitView != null)
            root.splitView.restoreState(settings.splitView);

        if (root.window != null) {
            if (settings.width != 0) {
                root.window.x = settings.x;
                root.window.width = settings.width;
            }

            if (settings.height != 0) {
                root.window.y = settings.y;
                root.window.height = settings.height;
            }

            root.window.visibility = settings.visibility;
        }
    }

    function save() {
        if (root.splitView != null)
            settings.splitView = root.splitView.saveState()

        if (root.window != null) {
            settings.visibility = root.window.visibility;

            if (root.window.visibility == Window.Windowed) {
                settings.x = root.window.x
                settings.y = root.window.y
                settings.width = root.window.width
                settings.height = root.window.height
            }
        }
    }

    Settings {
        id: settings

        category: "MainWindow"

        property var splitView
        property int visibility: 2
        property int x
        property int y
        property int width
        property int height
    }
}

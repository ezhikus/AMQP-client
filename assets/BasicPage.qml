import bb.cascades 1.0

Page {
    property alias pageTitle: pageTitleBar.title
    titleBar: TitleBar {
        id: pageTitleBar
    }
    paneProperties: NavigationPaneProperties {
        backButton: ActionItem {
            onTriggered: {
                var pg = navigationPane.pop();
                if (pg) pg.destroy();
            }
        }
    }
}

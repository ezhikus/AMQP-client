// Drilldown navigation project template
import bb.cascades 1.0

Page {
    paneProperties: NavigationPaneProperties {
        backButton: ActionItem {
            onTriggered: {
                // define what happens when back button is pressed here
                // in this case the detail page is closed
                var pg = navigationPane.pop();
                if(pg) pg.destroy();
            }
        }
    }
    function setRootPath(path) {
        console.log("setting list view root path to: " + path.join("-"))
        listView.rootIndexPath = path
        if(path.length) {
            lblTitle.text = path.join("-");
        }
        else {
            lblTitle.text = qsTr("root level");
        }
    }
    content: Container {
        Label {
            id: lblTitle
            horizontalAlignment: HorizontalAlignment.Fill
        }
        ListView {
            id: listView
            verticalAlignment: VerticalAlignment.Fill
            horizontalAlignment: HorizontalAlignment.Fill
            layoutProperties: StackLayoutProperties {
                spaceQuota: 1.0
            }
            // use data model defined in C++ using the declarative context, see ApplicationUI.cpp
            dataModel: myListModel

            // Override DataModel::itemType() behaviour
            // 1st level items are always headers
            // 2nd level items are items
            function itemType(data, indexPath) {
                if (indexPath.length - rootIndexPath.length < 2) {
                    return "header";
                }
                return "item";
            }
            // helper function to generate item description from ListItem attachment property
            function itemDescription(list_item) {
                if (list_item.initialized) {
                    var child_count = list_item.initialized ? list_item.view.dataModel.childCount(list_item.indexPath) : 0;
                    var path_str = list_item.indexPath.join("-");
                    return path_str + " " + (child_count == 0 ? qsTr("Leaf") : qsTr("child count: ") + child_count)
                }
            }
            listItemComponents: [
                // define standard components to display header and item type
                ListItemComponent {
                    type: "header"
                    Header {
                        title: ListItemData.title
                        subtitle: ListItem.view.itemDescription(ListItem)
                    }
                },
                ListItemComponent {
                    type: "item"
                    StandardListItem {
                        title: ListItemData.title
                        description: ListItem.view.itemDescription(ListItem)
                    }
                }
            ]
            onTriggered: {
                navigationPane.pushLevel(indexPath)
            }
        }
    }
}

import bb.cascades 1.0

BasicPage {
    pageTitle: "Queues"
    Container {
        ListView {
            id: listView
            verticalAlignment: VerticalAlignment.Fill
            horizontalAlignment: HorizontalAlignment.Fill
            layoutProperties: StackLayoutProperties {
                spaceQuota: 1.0
            }

            dataModel: ArrayDataModel {
                id: theDataModel
            }
            onCreationCompleted: {
                for (var a = 0; a < 10; a ++) {
                    theDataModel.append("Item" + a);
                }
            }

            onTriggered: {
                //navigationPane.pushLevel(indexPath)
            }
        }

    }
}

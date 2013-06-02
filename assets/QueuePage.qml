import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "Queue:"
    }
    Container {
        leftPadding: 10.0
        topPadding: 10.0
        rightPadding: 10.0
        bottomPadding: 10.0
        Label {
            text: "Send"

        }
        TextArea {

        }
        Button {
            text: "Send message"
            horizontalAlignment: HorizontalAlignment.Center
        }
        Divider {
            topMargin: 20.0
            bottomMargin: 20.0

        }
        Label {
            text: "Receive"

        }
        TextArea {
            maximumLength: 1000
            layoutProperties: StackLayoutProperties {
                spaceQuota: 1.0

            }

        }
        Container {
            layoutProperties: StackLayoutProperties {
                spaceQuota: 1.0

            }
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            objectName: "Buttons"
            Button {
                text: "Receive one"
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 3.0
                }
            }
            Button {
                text: "Receive all"
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 3.0
                }
            }
            Button {
                text: "Clear"
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 2.0
                }
            }
        }

    }
}

import bb.cascades 1.0

Container {
    layout: StackLayout {
        orientation: LayoutOrientation.LeftToRight
    }
    
    property alias labelText: label.text
    property alias editText: edit.text
    property alias editInputMode: edit.inputMode
    property bool isEditPassword :  false
    
    function isEmpty() {
        return editText == ""
    }

    topPadding: 10.0
    bottomPadding: 10.0
    Label {
        id: label
        text: "Label"
        verticalAlignment: VerticalAlignment.Center
        layoutProperties: StackLayoutProperties {
            spaceQuota: 2.0
        }
        textStyle.fontSize: FontSize.Large

    }
    TextField {
        id: edit
        verticalAlignment: VerticalAlignment.Center
        layoutProperties: StackLayoutProperties {
            spaceQuota: 5.0
        }
        inputMode: TextFieldInputMode.Default
    }
}
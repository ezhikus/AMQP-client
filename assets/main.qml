import bb.cascades 1.0

NavigationPane {
    id: navigationPane

    LoginPage {
        
    }

    attachedObjects: [
        ComponentDefinition {
            id: levelPageDefinition
            LevelView {
               
            }
        }
    ]
    function pushLevel(path) {
        var page = levelPageDefinition.createObject();
        page.setRootPath(path);
        navigationPane.push(page);
    }
    onCreationCompleted: {
        console.log("Page - onCreationCompleted()")

        // enable layout to adapt to the device rotation
        // don't forget to enable screen rotation in bar-bescriptor.xml (Application->Orientation->Auto-orient)
        OrientationSupport.supportedDisplayOrientation = SupportedDisplayOrientation.All;

        // push the zero level page
        // pushLevel([]);
    }
}

import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "AMQP client"

    }
    Container {
        layout: DockLayout {

        }
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
       
        Container {
            leftPadding: 20.0
            topPadding: 20.0
            rightPadding: 20.0

            bottomPadding: 80.0
            LoginPageElement {
                id: server
                labelText: "Server"
            }

            LoginPageElement {
                id: port
                labelText: "Port"
                editText: "5672"
                editInputMode: TextFieldInputMode.NumbersAndPunctuation
            }

            LoginPageElement {
                id: login
                labelText: "Login"
                editText: "guest"
            }

            LoginPageElement {
                id: password
                labelText: "Password"
                editText: "guest"
                editInputMode: TextFieldInputMode.Password
            }
            
            CheckBox {
                text: "Save"
                leftMargin: 10.0
                checked: true
            }
            Button {
                text: "Login"
                horizontalAlignment: HorizontalAlignment.Center
                topMargin: 50.0
                onClicked: {
                    mainModel.Login(server.editText, port.editText, login.editText, password.editText)
                }
            }

        }
    }
}

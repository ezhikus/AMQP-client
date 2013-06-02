// Drilldown navigation project template
#include "applicationui.hpp"
#include "mylistmodel.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;

ApplicationUI::ApplicationUI(bb::cascades::Application *app)
: QObject(app)
{
    // create scene document from main.qml asset
    // set parent to created document to ensure it exists for the whole application lifetime
     QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);

    // create list view model and populate it with sample data
    MyListModel *list_model = new MyListModel(this);
    // setContextProperty exposes C++ object in QML as an global variable 'myListModel'
    qml->setContextProperty("myListModel", list_model);

    // create root object for the UI
    AbstractPane *root = qml->createRootObject<AbstractPane>();
    // set created root object as a scene
    app->setScene(root);
}

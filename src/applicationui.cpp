#include "applicationui.hpp"
#include "mylistmodel.hpp"
#include "MainModel.h"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;

ApplicationUI::ApplicationUI(bb::cascades::Application *app)
: QObject(app)
{
	QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);

    MainModel *mainModel = new MainModel();
    qml->setContextProperty("mainModel", mainModel);

    AbstractPane *root = qml->createRootObject<AbstractPane>();
    app->setScene(root);
}

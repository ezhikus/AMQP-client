// Drilldown navigation project template
#include "mylistmodel.hpp"

MyListModel::MyListModel(QObject* parent)
: MyListModelSuper()
{
    qDebug() << "Creating MyListModel object:" << this;
    setParent(parent);
}

MyListModel::~MyListModel()
{
    qDebug() << "Destroying MyListModel object:" << this;
}

int MyListModel::childCount(const QVariantList& indexPath)
{
    // generate dynamicaly child count from indexPath to pretend that model contains data
    static const int A = 30;
    static const int B = 2;
    int sum = 0;
    foreach(const QVariant &v, indexPath) sum += v.toInt();
    int n1 = indexPath.length() + 1;
    int n = 1;
    for(int i=0; i<n1; i++) n *= B;
    int cnt = (sum + A) / n;
    return cnt;
}

bool MyListModel::hasChildren(const QVariantList& indexPath)
{
    return childCount(indexPath) > 0;
}

QString MyListModel::itemType(const QVariantList& indexPath)
{
    Q_UNUSED(indexPath);
    // return whatever, item type is handled in QML
    return QString();
}

QVariant MyListModel::data(const QVariantList& indexPath)
{
    QVariantMap ret;
    if(indexPath.length()) {
        ret["title"] = trUtf8("Item %1").arg(indexPath.last().toInt());
        // define more data attributes here
        //ret["attr_name"] = ...;
    }
    return ret;
}


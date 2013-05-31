// Drilldown navigation project template
/*
 * ListModel.h
 */

#ifndef MyListModel_HPP_
#define MyListModel_HPP_

#include <bb/cascades/DataModel>
#include <QObject>

typedef bb::cascades::DataModel MyListModelSuper;

/*!
 * @brief generated list data model implementation
 */
class MyListModel : public MyListModelSuper
{
    Q_OBJECT
public:
 	/// Returns the number of children to the data item specified by indexPath.
    virtual Q_INVOKABLE int childCount(const QVariantList &indexPath);
    /// Indicates whether the data item specified by indexPath has children.
    virtual Q_INVOKABLE bool hasChildren(const QVariantList &indexPath);
    /// Returns the item type for the data item at indexPath.
    virtual Q_INVOKABLE QString itemType(const QVariantList &indexPath);
    /// Returns the item data for the data item at indexPath.
    virtual Q_INVOKABLE QVariant data(const QVariantList &indexPath);
public:
    MyListModel(QObject* parent = NULL);
    virtual ~MyListModel();
};


#endif /* MyListModel_HPP_ */

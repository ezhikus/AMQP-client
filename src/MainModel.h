#ifndef MAINMODEL_H_
#define MAINMODEL_H_

#include <QObject>
#include <QVariant>

class MainModel : public QObject
{
	Q_OBJECT

public:
	MainModel();

	Q_INVOKABLE void Login(QString server, QString port, QString login, QString password);

public slots:
	void Connected();
	void ConnectionError();
};

#endif

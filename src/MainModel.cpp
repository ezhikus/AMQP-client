#include "MainModel.h"

#include <QDebug>
#include <QUrl>
#include "QAMQP/src/qamqp/amqp.h"

MainModel::MainModel()
{
}

void MainModel::Login(QString server, QString port, QString login, QString password)
{
	QString connectionString = QString("amqp://%1:%2@%3:%4/").arg(login).arg(password).arg(server).arg(port);
	QUrl con(connectionString);
	QAMQP::Client *client_ = new QAMQP::Client(this);
	connect(client_, SIGNAL(connected()), this, SLOT(Connected()));
	connect(client_, SIGNAL(connectionError()), this, SLOT(ConnectionError()));
	client_->open(con);
}

void MainModel::Connected()
{
	qDebug() << "Connected";
}

void MainModel::ConnectionError()
{
	qDebug() << "Connection error";
}

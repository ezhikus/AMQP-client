#include "MainModel.h"
#include <QDebug>

MainModel::MainModel()
{
}

void MainModel::Login(QString server, QString port, QString login, QString password)
{
	qDebug() << server << " " << port << " " << login << " " << password;
}

#ifndef FIRSTPAGE_VIEWMODEL_H
#define FIRSTPAGE_VIEWMODEL_H


#include <QObject>

class firstpage_viewmodel : public QObject
{
    Q_OBJECT
public:
    explicit firstpage_viewmodel(QObject *parent = nullptr);

public slots:
    void doSomething();

};

#endif // FIRSTPAGE_VIEWMODEL_H

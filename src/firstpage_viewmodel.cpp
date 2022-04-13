#include <QObject>
#include "firstpage_viewmodel.h"

firstpage_viewmodel::firstpage_viewmodel(QObject *parent) : QObject(parent)
{

    void doSomething();

}

void firstpage_viewmodel::doSomething() {
    printf("Test");
}

#-------------------------------------------------
#
# Project created by QtCreator 2015-09-23T17:47:15
#
#-------------------------------------------------

include(libirc.pri)

QT       -= gui

TEMPLATE = lib


unix {
    target.path = /usr/lib
    INSTALLS += target
}

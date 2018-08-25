#-------------------------------------------------
#
# Project created by QtCreator 2015-09-24T15:15:16
#
#-------------------------------------------------

include(../libirc/libirc.pro)

QT       += network

QT       -= gui

TARGET = libircclient
TEMPLATE = lib

DEFINES += LIBIRCCLIENT_LIBRARY

SOURCES += \
    irceventhandler.cpp \
    parser.cpp \
    generic.cpp

HEADERS += user.h\
        libircclient_global.h \
    irceventhandler.h \
    channel.h \
    mode.h \
    server.h \
    network.h \
    parser.h \
    generic.h \
    priority.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

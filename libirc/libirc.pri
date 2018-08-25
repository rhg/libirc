QT       += network
TARGET = libirc
DEFINES += LIBIRC_LIBRARY

INCLUDEPATH += $$PWD

SOURCES += $$PWD/network.cpp \
    $$PWD/user.cpp \
    $$PWD/server.cpp \
    $$PWD/mode.cpp \
    $$PWD/channel.cpp \
    $$PWD/serializableitem.cpp \
    $$PWD/serveraddress.cpp

HEADERS += $$PWD/network.h\
        $$PWD/libirc_global.h \
    $$PWD/user.h \
    $$PWD/server.h \
    $$PWD/mode.h \
    $$PWD/channel.h \
    $$PWD/error_code.h \
    $$PWD/serializableitem.h \
    $$PWD/serveraddress.h \
    $$PWD/irc_standards.h
QT       += network
TARGET = libirc
DEFINES += LIBIRC_LIBRARY

SOURCES += network.cpp \
    user.cpp \
    server.cpp \
    mode.cpp \
    channel.cpp \
    serializableitem.cpp \
    serveraddress.cpp

HEADERS += network.h\
        libirc_global.h \
    user.h \
    server.h \
    mode.h \
    channel.h \
    error_code.h \
    serializableitem.h \
    serveraddress.h \
    irc_standards.h
//This program is free software: you can redistribute it and/or modify
//it under the terms of the GNU Lesser General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//(at your option) any later version.

//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU Lesser General Public License for more details.

// Copyright (c) Petr Bena 2015 - 2018

#ifndef SERVERADDRESS_H
#define SERVERADDRESS_H

#include "serializableitem.h"
#include "libirc_global.h"
#include <QString>

namespace libirc
{
    class LIBIRCSHARED_EXPORT ServerAddress : public SerializableItem
    {
        public:
            ServerAddress(QString url);
            ServerAddress(QString Host, bool SSL, unsigned int Port, QString Nick = "", QString Password = "");
            ServerAddress(QHash<QString, QVariant> hash);
            virtual ~ServerAddress();
            bool IsValid();
            bool UsingSSL();
            QString GetHost();
            QString GetOriginal();
            void SetNick(QString nick);
            QString GetNick();
            QString GetPassword();
            //! Usually a list of channels to join after connect
            QString GetSuffix();
            void SetSuffix(QString suffix);
            unsigned int GetPort();
            void SetHost(QString host);
            void SetPassword(QString pw);
            void SetPort(unsigned int port);
            void SetSSL(bool ssl);
            void SetRealname(QString name);
            QString GetRealname();
            void LoadHash(QHash<QString, QVariant> hash);
            QHash<QString, QVariant> ToHash();
        private:
            bool IsIPv6();
            unsigned int _port;
            QString _password;
            QString _nick;
            QString _host;
            QString _realname;
            QString _suffix;
            bool _ssl;
            bool _valid;
            bool _ipv6;
            QString _original;
    };
}

#endif // SERVERADDRESS_H

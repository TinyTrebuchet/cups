dnl
dnl "$Id: cups-network.m4 2081 2002-01-27 21:16:14Z mike $"
dnl
dnl   Networking stuff for the Common UNIX Printing System (CUPS).
dnl
dnl   Copyright 1997-2002 by Easy Software Products, all rights reserved.
dnl
dnl   These coded instructions, statements, and computer programs are the
dnl   property of Easy Software Products and are protected by Federal
dnl   copyright law.  Distribution and use rights are outlined in the file
dnl   "LICENSE.txt" which should have been included with this file.  If this
dnl   file is missing or damaged please contact Easy Software Products
dnl   at:
dnl
dnl       Attn: CUPS Licensing Information
dnl       Easy Software Products
dnl       44141 Airport View Drive, Suite 204
dnl       Hollywood, Maryland 20636-3111 USA
dnl
dnl       Voice: (301) 373-9603
dnl       EMail: cups-info@cups.org
dnl         WWW: http://www.cups.org
dnl

NETLIBS=""

if test "$uname" != "IRIX"; then
	AC_CHECK_LIB(socket,socket,NETLIBS="-lsocket")
	AC_CHECK_LIB(nsl,gethostbyaddr,NETLIBS="$NETLIBS -lnsl")
fi

AC_CHECK_FUNCS(rresvport)

AC_SUBST(NETLIBS)

dnl
dnl End of "$Id: cups-network.m4 2081 2002-01-27 21:16:14Z mike $".
dnl
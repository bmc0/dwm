# dwm version
VERSION = 6.4

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = ${X11INC}/freetype2
#MANPREFIX = ${PREFIX}/man

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS}

# flags
LOCAL_CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
#LOCAL_CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${LOCAL_CPPFLAGS}
LOCAL_CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -flto -Os ${INCS} ${CFLAGS} ${LOCAL_CPPFLAGS}
LOCAL_LDFLAGS  = -flto ${LIBS} ${LDFLAGS}

# Solaris
#LOCAL_CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LOCAL_LDFLAGS = ${LIBS}

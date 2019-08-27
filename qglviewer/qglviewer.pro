DEFINES += NO_VECTORIAL_RENDER
DEFINES += QGLVIEWER_STATIC

CONFIG += debug_and_release

CONFIG(release, debug|release) {
	DBGNAME = release
}
else {
	DBGNAME = debug
}
DESTDIR = $${DBGNAME}

win32 {
	TEMPLATE = vclib
}
else {
	TEMPLATE = lib

	macx {
		DEFINES += DARWIN
        QMAKE_CXXFLAGS += 
	}
	else {
		DEFINES += LINUX
	}
}

CONFIG += staticlib
QT += opengl xml
LIBS += -framework GLUT

TARGET = qglviewer

DEPENDPATH += .
INCLUDEPATH += .

#Input
HEADERS += *.h
SOURCES += *.cpp
FORMS += *.ui

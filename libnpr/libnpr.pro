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

TARGET = npr

DEPENDPATH += include
INCLUDEPATH += include
DEPENDPATH += ../libcda/include
INCLUDEPATH += ../libcda/include
DEPENDPATH += ../libgq/include
INCLUDEPATH += ../libgq/include

#Input
HEADERS += include/*.h
SOURCES += libsrc/*.cc

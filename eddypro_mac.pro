# EddyPro qmake project file

TEMPLATE = app

# EddyPro version, not used
VERSION = 6.1.0

# Qt version and path
QT_VER = $$[QT_VERSION]
QT_PATH = $$[QT_INSTALL_PREFIX]

#message(Qt version: $$[QT_VERSION])
#message(Qt is installed in $$[QT_INSTALL_PREFIX])
#message(Qt resources can be found in the following locations:)
#message(Documentation: $$[QT_INSTALL_DOCS])
#message(Header files: $$[QT_INSTALL_HEADERS])
#message(Libraries: $$[QT_INSTALL_LIBS])
#message(Binary files (executables): $$[QT_INSTALL_BINS])
#message(Plugins: $$[QT_INSTALL_PLUGINS])
#message(Data files: $$[QT_INSTALL_DATA])
#message(Translation files: $$[QT_INSTALL_TRANSLATIONS])
#message(Settings: $$[QT_INSTALL_SETTINGS])
#message(Examples: $$[QT_INSTALL_EXAMPLES])
#message(Demonstrations: $$[QT_INSTALL_DEMOS])

# Qt config
QT += core gui widgets network concurrent
CONFIG += warn_on
CONFIG += debug_and_release
CONFIG += c++11

# Build tree with shadow building approach
include(build_tree.pri)

# Include paths
include(includes.pri)

# Libs to build and link
include(libs.pri)

# Platform specific configurations
include(platform.pri)

# Resource files
include(resources.pri)

# Source code files
include(sources.pri)

# Extra targets for automated tests
include(tests.pri)

CONFIG(debug, debug|release) {
    TARGET = eddypro_debug
    CONFIG += console

    DEFINES += QT_DEBUG

    # to suppress qt and 3rdparty library warnings
    QMAKE_CXXFLAGS += -isystem"$$QT_PATH/include"

    QMAKE_CXXFLAGS += -isystem"$$_PRO_FILE_PWD_/../../../../libs/c++/boost_1_59_0/boost/math"
    QMAKE_CXXFLAGS += -isystem"$$_PRO_FILE_PWD_/../../../../libs/c++/boost_1_59_0/boost/numeric/ublas"

    win32 {
        # mingw warnings
        QMAKE_CXXFLAGS_WARN_ON += -pedantic -Wall -Wextra -Wdeprecated -Wcast-qual -Wwrite-strings -fdiagnostics-show-option
        QMAKE_CXXFLAGS_WARN_ON += -O0 -fno-inline -Wunused-result

        # to suppress compiler library warnings
        QMAKE_CXXFLAGS += -isystem"$QT_PATH/../Tools/mingw492_32"
    }
    macx {
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtCore.framework/Headers"
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtCore.framework/Versions/5/Headers"
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtGui.framework/Headers"
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtGui.framework/Versions/5/Headers"
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtWidgets.framework/Headers"
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtWidgets.framework/Versions/5/Headers"
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtConcurrent.framework/Headers"
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtConcurrent.framework/Versions/5/Headers"
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtNetwork.framework/Headers"
        QMAKE_CXXFLAGS += -isystem"$$QT_PATH/lib/QtNetwork.framework/Versions/5/Headers"

        QMAKE_CXXFLAGS_WARN_ON += -Weverything
        QMAKE_CXXFLAGS_WARN_ON += -Wno-c++98-compat -Wno-c++98-compat-pedantic
        QMAKE_CXXFLAGS_WARN_ON += -Wno-padded
        QMAKE_CXXFLAGS_WARN_ON += -Wno-covered-switch-default
        QMAKE_CXXFLAGS_WARN_ON += -Wno-used-but-marked-unused # see http://lists.qt-project.org/pipermail/development/2014-March/016181.html
        QMAKE_CXXFLAGS_WARN_ON += -Wno-global-constructors # static objects
        QMAKE_CXXFLAGS_WARN_ON += -Wno-exit-time-destructors # static objects
        QMAKE_CXXFLAGS_WARN_ON += -Wno-documentation -Wno-documentation-unknown-command -Wno-documentation-deprecated-sync

        QMAKE_PRE_LINK += && $$_PRO_FILE_PWD_/scripts/build/mac-update-translations.sh$$escape_expand(\\n\\t)
    }
} else {
    TARGET = eddypro

    DEFINES -= QT_DEBUG
    DEFINES += QT_NO_DEBUG
    DEFINES += QT_NO_DEBUG_OUTPUT
    DEFINES += QT_NO_WARNING_OUTPUT

    macx {
        QMAKE_PRE_LINK += && $$_PRO_FILE_PWD_/scripts/build/mac-update-translations.sh$$escape_expand(\\n\\t)

        # remove debug symbols
        QMAKE_POST_LINK += && strip -S $$OUT_PWD/release/eddypro.app/Contents/MacOS/eddypro
    }
}

# temporarly necessary with XCode 7 and Qt 5.4.2/QtCreator 3.4.2
# to avoid compilation issues with the shipped makespec
# https://forum.qt.io/topic/58926/solved-xcode-7-and-qt-error/4
#QMAKE_MAC_SDK = macosx10.11

DEFINES += QT_NO_CAST_FROM_ASCII
DEFINES += QT_NO_CAST_FROM_BYTEARRAY
DEFINES += QT_NO_CAST_TO_ASCII
DEFINES += QT_NO_URL_CAST_FROM_STRING
DEFINES += QT_USE_QSTRINGBUILDER

#build_pass:message(QMAKE_CFLAGS: $$QMAKE_CFLAGS)
#build_pass:message(QMAKE_CXXFLAGS: $$QMAKE_CXXFLAGS)
#message(QMAKE_CXXFLAGS: $$QMAKE_CXXFLAGS)

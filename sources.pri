# source code files

# precompiled headers (PCH)
#PRECOMPILED_HEADER = src/stable.h

HEADERS += \
#    src/stable.h \
    src/globalsettings.h \
    src/widget_utils.h \
    src/aboutdialog.h \
    src/anem_delegate.h \
    src/anem_desc.h \
    src/anem_model.h \
    src/anem_tableview.h \
    src/anem_view.h \
    src/binarysettingsdialog.h \
    src/biomitem.h \
    src/biommetadatareader.h \
    src/bminidefs.h \
    src/clicklabel.h \
    src/configstate.h \
    src/customcombomodel.h \
    src/customheader.h \
    src/customsplashscreen.h \
    src/dbghelper.h \
    src/defs.h \
    src/dlinidefs.h \
    src/dlinidialog.h \
    src/dlinstrtab.h \
    src/dlproject.h \
    src/dlprojectstate.h \
    src/dlrawfiledesctab.h \
    src/dlsitetab.h \
    src/docchooser.h \
    src/ecinidefs.h \
    src/ecproject.h \
    src/ecprojectstate.h \
    src/faderwidget.h \
    src/fileutils.h \
    src/infomessage.h \
    src/irga_delegate.h \
    src/irga_desc.h \
    src/irga_model.h \
    src/irga_tableview.h \
    src/irga_view.h \
    src/mainwindow.h \
    src/mymenu.h \
    src/mystyle.h \
    src/mytabwidget.h \
    src/nonzerodoublespinbox.h \
    src/planarfitsettingsdialog.h \
    src/process.h \
    src/proxystyle.h \
    src/QProgressIndicator.h \
    src/rawfilenamedialog.h \
    src/rawfilesettingsdialog.h \
    src/runpage.h \
    src/slowmeasuretab.h \
    src/specgroup.h \
    src/splitter.h \
    src/splitterhandle.h \
    src/stringutils.h \
    src/timelagsettingsdialog.h \
    src/tooltipfilter.h \
    src/variable_delegate.h \
    src/variable_desc.h \
    src/variable_model.h \
    src/variable_tableview.h \
    src/variable_view.h \
    src/wheeleventfilter.h \
    src/smartfluxbar.h \
    src/mainwidget.h \
    src/welcomepage.h \
    src/projectpage.h \
    src/basicsettingspage.h \
    src/advancedsettingspage.h \
    src/advstatisticaloptions.h \
    src/advprocessingoptions.h \
    src/updatedialog.h \
    src/advspectraloptions.h \
    src/advoutputoptions.h \
    src/advsettingscontainer.h \
    src/createpackagedialog.h \
    src/angle_tableview.h \
    src/angle_tablemodel.h \
    src/angles_view.h \
    src/angle_item.h \
    src/ancillaryfiletest.h \
    src/make_unique.h \
    src/customcombobox.h \
    src/advmenudelegate.h \
    src/container_helpers.h \
    src/network_helpers.h \
    src/qt_helpers.h \
    src/customclearlineedit.h \
    src/customresetlineedit.h \
    src/customlineedit.h \
    src/filebrowsewidget.h \
    src/lineeditandbrowsewidget.h \
    src/dirbrowsewidget.h \
    src/fileformatwidget.h \
    src/customdroplineedit.h \
    src/customcheckbox.h \
    src/clickablelabel.h \
    src/hovercheckbox.h \
    src/richtextcheckbox.h \
    src/detectdaterangedialog.h \
    src/downloadmanager.h \
    src/openfilefilter.h \
    src/lisp_parser/xnode.hpp \
    src/lisp_parser/xtree.hpp \
    src/calibrationapi.h \
    src/calibrationinfo.h \
    src/calibrationdialog.h \
    src/calibration.h \
    src/polyfit.hpp \
    src/vector_utils.h \
    src/QScienceSpinBox.h

SOURCES +=  \
    src/globalsettings.cpp \
    src/widget_utils.cpp \
    src/aboutdialog.cpp \
    src/anem_delegate.cpp \
    src/anem_desc.cpp \
    src/anem_model.cpp \
    src/anem_tableview.cpp \
    src/anem_view.cpp \
    src/binarysettingsdialog.cpp \
    src/biommetadatareader.cpp \
    src/clicklabel.cpp \
    src/customcombomodel.cpp \
    src/customheader.cpp \
    src/customsplashscreen.cpp \
    src/dbghelper.cpp \
    src/dlinidialog.cpp \
    src/dlinstrtab.cpp \
    src/dlproject.cpp \
    src/dlrawfiledesctab.cpp \
    src/dlsitetab.cpp \
    src/docchooser.cpp \
    src/ecproject.cpp \
    src/faderwidget.cpp \
    src/fileutils.cpp \
    src/infomessage.cpp \
    src/irga_delegate.cpp \
    src/irga_desc.cpp \
    src/irga_model.cpp \
    src/irga_tableview.cpp \
    src/irga_view.cpp \
    src/main.cpp \
    src/mainwindow.cpp \
    src/nonzerodoublespinbox.cpp \
    src/planarfitsettingsdialog.cpp \
    src/basicsettingspage.cpp \
    src/process.cpp \
    src/proxystyle.cpp \
    src/QProgressIndicator.cpp \
    src/rawfilenamedialog.cpp \
    src/rawfilesettingsdialog.cpp \
    src/runpage.cpp \
    src/slowmeasuretab.cpp \
    src/specgroup.cpp \
    src/splitter.cpp \
    src/splitterhandle.cpp \
    src/stringutils.cpp \
    src/timelagsettingsdialog.cpp \
    src/tooltipfilter.cpp \
    src/variable_delegate.cpp \
    src/variable_desc.cpp \
    src/variable_model.cpp \
    src/variable_tableview.cpp \
    src/variable_view.cpp \
    src/wheeleventfilter.cpp \
    src/smartfluxbar.cpp \
    src/mainwidget.cpp \
    src/welcomepage.cpp \
    src/projectpage.cpp \
    src/advancedsettingspage.cpp \
    src/advstatisticaloptions.cpp \
    src/advprocessingoptions.cpp \
    src/updatedialog.cpp \
    src/advspectraloptions.cpp \
    src/advoutputoptions.cpp \
    src/advsettingscontainer.cpp \
    src/createpackagedialog.cpp \
    src/angle_tableview.cpp \
    src/angles_view.cpp \
    src/angle_tablemodel.cpp \
    src/ancillaryfiletest.cpp \
    src/defs.cpp \
    src/customcombobox.cpp \
    src/advmenudelegate.cpp \
    src/network_helpers.cpp \
    src/qt_helpers.cpp \
    src/customclearlineedit.cpp \
    src/customresetlineedit.cpp \
    src/customlineedit.cpp \
    src/filebrowsewidget.cpp \
    src/lineeditandbrowsewidget.cpp \
    src/dirbrowsewidget.cpp \
    src/mymenu.cpp \
    src/fileformatwidget.cpp \
    src/customdroplineedit.cpp \
    src/customcheckbox.cpp \
    src/clickablelabel.cpp \
    src/hovercheckbox.cpp \
    src/richtextcheckbox.cpp \
    src/detectdaterangedialog.cpp \
    src/downloadmanager.cpp \
    src/openfilefilter.cpp \
    src/lisp_parser/xnode.cpp \
    src/lisp_parser/xtree.cpp \
    src/calibrationapi.cpp \
    src/calibrationinfo.cpp \
    src/calibrationdialog.cpp \
    src/QScienceSpinBox.cpp \
    src/vector_utils.cpp

TRANSLATIONS += $$_PRO_FILE_PWD_/tra/eddypro_en.ts

# other files to show in qtcreator
OTHER_FILES += \
    ACKNOWLEDGEMENTS \
    CHANGELOG \
    LICENSE \
    README.md \
    css/eddypro-mac.qss \
    css/eddypro-win.qss \
    scripts/build/mac-post-link.sh \
    scripts/build/mac-pre-link.sh \
    scripts/build/mac-update-translations.sh \
    scripts/build/win-pre-link-debug.cmd \
    scripts/build/win-pre-link-release.cmd \
    scripts/build/win-pre-link.sh \
    scripts/build/win-build-eddypro.sh \
    scripts/build/win-build-quazip.sh \
    scripts/build/win-build-libs.sh \
    scripts/deploy/eddypro-gui-deploy-win.sh \
    scripts/deploy/mac_deploy.sh \
    scripts/test/run-clang-analyzer.sh \
    win_files/eddypro.rc \
    win_files/eddypro.manifest \
    mac_files/plist/debug/Info.plist \
    mac_files/plist/release/Info.plist \
    eddypro_debug_valgrind.supp

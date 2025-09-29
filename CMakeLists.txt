cmake_minimum_required(VERSION 3.16)

project(SeventhDragonSimulator VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Qml)
find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS QuickControls2)
find_package(Qt6 REQUIRED COMPONENTS LinguistTools)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)

qt_standard_project_setup(REQUIRES 6.8 I18N_TRANSLATED_LANGUAGES ja_JP)

set(app_icon_resource_windows "${CMAKE_CURRENT_SOURCE_DIR}/images/appicon.rc")
qt_add_executable(appSeventhDragonSimulator
    main.cpp
    ${PROJECT_SOURCES}
    ${app_icon_resource_windows}
)

set(qml_singletons
    CharacterIcons.qml Utility.qml
    SkillListFighter.qml
)
set_source_files_properties(${qml_singletons}
    PROPERTIES QT_QML_SINGLETON_TYPE TRUE)

qt_add_qml_module(appSeventhDragonSimulator
    URI SeventhDragonSimulator
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES  DotCounter.qml  FormParty.qml   FormDotCounter.qml  FormSkill.qml FormSkillBase.qml FormSkillFighter.qml FormSkillRogue.qml FourDArrow.qml HLineItem.qml PartyListView.qml Skill.qml SkillLevel.qml SkillListCommon.qml SkillListRogue.qml SkillPointDisplay.qml SkillType.qml SkillTypeList.qml ValueBox.qml VLineItem.qml TextBox.qml MenuButton.qml PartyMemberListView.qml
        QML_FILES FormSkillHealer.qml FormSkillKnight.qml FormSkillMage.qml FormSkillPrincess.qml FormSkillSamurai.qml
        QML_FILES SkillListHealer.qml SkillListKnight.qml SkillListMage.qml SkillListPrincess.qml SkillListSamurai.qml
        SOURCES cpp/Character.cpp cpp/Character.h  cpp/Party.cpp cpp/Party.h cpp/PartyList.cpp cpp/PartyList.h json.h cpp/CharacterProxyModel.h cpp/CharacterProxyModel.cpp cpp/Application.h cpp/Application.cpp
        RESOURCES images/axe.png images/axeEx.png images/axemastery.png images/chivalry.png images/chivalrymastery.png images/cure.png images/cureEx.png images/curemastery.png images/etc.png images/fear.png images/fearEx.png images/fearmastery.png images/flame.png images/flameEx.png images/flamemastery.png images/freeze.png images/freezeEx.png images/freezemastery.png images/guard.png images/guardEx.png images/guardmastery.png images/images.txt images/int.png images/katana.png images/katanaEx.png images/katanamastery.png images/mana.png images/manaEx.png images/manamastery.png images/noble.png images/nobleEx.png images/noblemastery.png images/power.png images/react.png images/shield.png images/shieldEx.png images/shieldmastery.png images/shock.png images/shockEx.png images/shockmastery.png images/shot.png images/shotEx.png images/shotmastery.png images/special.png images/special2.png images/special2Ex.png images/special2mastery.png images/speed.png images/staff.png images/staffEx.png images/switch.png images/sword.png images/swordEx.png images/swordmastery.png images/unarmed.png images/unarmedEx.png images/venom.png images/venommastery.png images/whip.png images/whipEx.png images/whipmastery.png
        RESOURCES images/delete_file.svg images/colors.svg images/app.ico images/reload.svg images/x.svg images/floppy.svg
        RESOURCES images/f1.png images/f2.png images/f3.png images/f4.png images/fc1.png images/fc2.png images/fc3.png images/fc4.png images/h1.png images/h2.png images/h3.png images/h4.png images/hc1.png images/hc2.png images/hc3.png images/hc4.png images/k1.png images/k2.png images/k3.png images/k4.png images/kc1.png images/kc2.png images/kc3.png images/kc4.png images/m1.png images/m2.png images/m3.png images/m4.png images/mc1.png images/mc2.png images/mc3.png images/mc4.png images/p1.png images/p2.png images/p3.png images/p4.png images/pc1.png images/pc2.png images/pc3.png images/pc4.png images/r1.png images/r2.png images/r3.png images/r4.png images/rc1.png images/rc2.png images/rc3.png images/rc4.png images/s1.png images/s2.png images/s3.png images/s4.png images/sc1.png images/sc2.png images/sc3.png images/sc4.png
        RESOURCES images/copy.svg
        QML_FILES ${qml_singletons}
        QML_FILES ImageComboBox.qml
        QML_FILES MemberIconListView.qml
        QML_FILES ClassTabButton.qml
        QML_FILES DialogSelectParty.qml
        QML_FILES DialogDuplicateCharacter.qml
        QML_FILES MenuItemDelegate.qml
        QML_FILES WindowGeometryState.qml
        QML_FILES SkillLink.qml SkillLinkMultiParent.qml
        SOURCES
        SOURCES cpp/SelectionState.h cpp/SelectionState.cpp
)

set(QML_INCLUDES
    ${CMAKE_CURRENT_SOURCE_DIR}/cpp
)

target_include_directories(appSeventhDragonSimulator PRIVATE
   ${QML_INCLUDES}
)

qt_add_translations(TARGETS appSeventhDragonSimulator
    SOURCE_TARGETS appSeventhDragonSimulator
    INCLUDE_DIRECTORIES cpp
    TS_FILE_BASE seventhss
    TS_OUTPUT_DIRECTORY translations
    QM_OUTPUT_DIRECTORY translations
)

add_dependencies(appSeventhDragonSimulator update_translations)
add_dependencies(appSeventhDragonSimulator release_translations)


set_property(TARGET appSeventhDragonSimulator PROPERTY CXX_STANDARD 23)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appSeventhDragonSimulator PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appSeventhDragonSimulator
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appSeventhDragonSimulator
    PRIVATE Qt6::Qml
    PRIVATE Qt6::Quick
    PRIVATE Qt6::QuickControls2
)
target_link_libraries(appSeventhDragonSimulator PRIVATE Qt6::Core)
target_link_libraries(appSeventhDragonSimulator PRIVATE Qt6::Core)
target_link_libraries(appSeventhDragonSimulator PRIVATE Qt6::Core)

include(GNUInstallDirs)
install(TARGETS appSeventhDragonSimulator
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

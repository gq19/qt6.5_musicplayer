cmake_minimum_required(VERSION 3.26)

project(musicplayer VERSION 0.1 LANGUAGES CXX)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appmusicplayer)

target_sources(appmusicplayer
    PRIVATE
        main.cpp
        image.qrc

        
    PUBLIC
        
)

qt_add_qml_module(appmusicplayer
    URI musicplayer
    VERSION 1.0
    QML_FILES 
        Main.qml
        Top.qml
        Bottom.qml
        Left.qml
        RadiusImage.qml
        DetailRecommendPageView.qml
        DetailLocationPageView.qml
        DetailListPageView.qml
        DetailLovePageView.qml
        DetailHistoryPageView.qml
)

target_compile_features(appmusicplayer PRIVATE cxx_std_20)

set_target_properties(appmusicplayer PROPERTIES
    AUTORCC TRUE
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appmusicplayer
    PRIVATE 
        Qt6::Quick
)

install(TARGETS appmusicplayer
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)























































#qt_add_executable(musicplayer)  //Creates and finalizes an application target of a platform-specific type.
#This command performs the following tasks:
#    1. Create a CMake target of the appropriate type for the target platform.
#    2. Link the target to the Qt::Core library.
#    3. Handle finalization of the CMake target.



# qt_standard_project_setup()     #set(CMAKE_AUTOUIC ON)  set(CMAKE_AUTOMOC ON)

# @if %{HasTranslation}
# find_package(Qt6 REQUIRED COMPONENTS Core Quick LinguistTools)
# @else
# find_package(Qt6 REQUIRED COMPONENTS Core Quick)
# @endif

# target_sources(appmusicplayer
#     PRIVATE
#         main.cpp
#         qml.qrc
#     @if %{HasTranslation}
#         %{TsFileName}
#     @endif
#         
#     PUBLIC
#         
# )

# qt_import_qml_plugins(musicplayer)

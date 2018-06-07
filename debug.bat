mingw32-make.exe clean
qmake.exe GSEControlsProgress.pro -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug"
mingw32-make.exe
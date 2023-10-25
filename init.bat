@echo off
ECHO Initializing git submodule
ECHO =============================
git submodule init
git submodule update

ECHO Initializing vcpkg
ECHO =============================
if not exist ./lib mkdir lib
cmd /c "cd lib/vcpkg && bootstrap-vcpkg.bat -disableMetrics"

ECHO Initializing vcpkg packages
ECHO =============================
vcpkg install sfml
vcpkg install imgui
vcpkg install imgui-sfml

ECHO Initializing CMake project
ECHO =============================
mkdir build
cd build
cmake ..

ECHO =============================
ECHO Install done
pause
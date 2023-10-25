echo off
@set CURRENT_PATH=%CD%
pause 

ECHO Initializing git submodule
ECHO =============================
git submodule init
git submodule update

git clone https://github.com/Microsoft/vcpkg.git

ECHO Initializing vcpkg
ECHO =============================
cmd /c "cd vcpkg && bootstrap-vcpkg.bat -disableMetrics"
pause

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
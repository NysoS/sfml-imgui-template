set(SOURCE_DIR "${CMAKE_SOURCE_DIR}/sfml-imgui-template/src")

set(SOURCES
	"${SOURCE_DIR}/main.cpp" 
)

add_executable(sfml-imgui-template ${SOURCES})

set_property(TARGET sfml-imgui-template PROPERTY CXX_STANDARD 20)
cmake_minimum_required(VERSION 3.8)
project(cstr VERSION 0.0)
configure_file(cstr_config.h.in cstr_config.h)
add_library(cstr cstr.c)
add_executable(cstr_demo main.c)
target_link_libraries(cstr_demo PUBLIC cstr)
target_include_directories(cstr_demo PUBLIC
		"${PROJECT_BINARY_DIR}"
		"${PROJECT_SOURCE_DIR}")

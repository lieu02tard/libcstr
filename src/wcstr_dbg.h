// Fancy debug printer
#ifndef _CSTR_DEBUG_H_
#define _CSTR_DEBUG_H_
#include <wchar.h>
#ifndef WCHAR_TYPE
	#define WCHAR_TYPE wchar_t
#endif

#ifdef __cplusplus
extern "C" {
#endif
static const WCHAR_TYPE* c_red = L"\033[;31m";
static const WCHAR_TYPE* c_green = L"\033[;32m";
static const WCHAR_TYPE* c_brown = L"\033[;33m";
static const WCHAR_TYPE* c_blue = L"\033[;34m";
static const WCHAR_TYPE* c_magenta = L"\033[;35m";
static const WCHAR_TYPE* c_cyan = L"\033[;36m";
static const WCHAR_TYPE* c_reset = L"\033[0m";

extern inline void __wcstr_print_debug(const WCHAR_TYPE* title, const WCHAR_TYPE* content);
extern inline void __wcstr_print_title(const WCHAR_TYPE* title);
extern inline void __wcstr_debug(const WCHAR_TYPE* title, const WCHAR_TYPE* content, int code);
#ifdef __cplusplus
}
#endif
#endif

// Fancy debug printer
#ifndef _CSTR_DEBUG_H_
#define _CSTR_DEBUG_H_

#ifdef __cplusplus
extern "C" {
#endif
static const char* c_red = "\033[;31m";
static const char* c_green = "\033[;32m";
static const char* c_brown = "\033[;33m";
static const char* c_blue = "\033[;34m";
static const char* c_magenta = "\033[;35m";
static const char* c_cyan = "\033[;36m";
static const char* c_reset = "\033[0m";

extern inline void __cstr_print_debug(const char* title, const char* content);
extern inline void __cstr_print_title(const char* title);
extern inline void __cstr_debug(const char* title, const char* content, int code);
#ifdef __cplusplus
}
#endif
#endif

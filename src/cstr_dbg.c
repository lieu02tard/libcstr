#include "cstr_dbg.h"
#include <stdlib.h>
#include <stdio.h>

#ifdef CSTR_DEBUG
inline void __cstr_print_title(const char* title)
{
	fputs(c_blue, stdout);
	putc('[', stdout);
	fputs(c_reset, stdout);
	fputs(c_red, stdout);
	fputs(title, stdout);
	fputs(c_reset, stdout);
	fputs(c_blue, stdout);
	putc(']',stdout);
	fputs(c_reset, stdout);
	fputs(": ", stdout);
}

inline void __cstr_print_debug(const char* title, const char* content)
{
	__cstr_print_title(title);
	puts(content);
	putc('\n', stdout);
}
#endif

/**
 * __cstr_debug - Print debug message
 * @title:		Title literal
 * @content:	Content literal
 * @code:		(Exit) code
 *
 * Print formatted debug message to stdout. If @code is not 0, exit program with return code @code
 * Only work if CSTR_DEBUG is turned on
 */
#ifdef CSTR_DEBUG
inline void __cstr_debug(const char* title, const char* content, int code)
{
	__cstr_print_debug(title, content);
	if (code)
		exit(code);
}
#else
inline void __cstr_debug(const char* title, const char* content, int code)
{
	if (code)
		exit(code);
}
#endif

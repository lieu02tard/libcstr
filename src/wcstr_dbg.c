#include "wcstr_dbg.h"
#include <stdlib.h>
#include <stdio.h>
#include <wchar.h>

inline void __wcstr_print_title(const WCHAR_TYPE* title)
{
	fputws(c_blue, stdout);
	putwc('[', stdout);
	fputws(c_reset, stdout);
	fputws(c_red, stdout);
	fputws(title, stdout);
	fputws(c_reset, stdout);
	fputws(c_blue, stdout);
	putwc(']',stdout);
	fputws(c_reset, stdout);
	fputws(L": ", stdout);
}

inline void __wcstr_print_debug(const WCHAR_TYPE* title, const WCHAR_TYPE* content)
{
	__wcstr_print_title(title);
	fputws(content, stdout);
	putwc('\n', stdout);
}

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
inline void __wcstr_debug(const WCHAR_TYPE* title, const WCHAR_TYPE* content, int code)
{
	__wcstr_print_debug(title, content);
	if (code)
		exit(code);
}
#else
inline void __wcstr_debug(const WCHAR_TYPE* title, const WCHAR_TYPE* content, int code)
{
	if (code)
		exit(code);
}
#endif

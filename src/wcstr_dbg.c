/* cstr - C string manipulation library
 * Copyright 2021 friedka
	This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

	This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*
*/
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

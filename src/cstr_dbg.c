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
inline void __cstr_debug(enum CSTR_DEBUG_CODE code)
{
	switch (CSTR_DEBUG_CODE)
	{
		case CSTR_DEBUG_INVALID_STRING_TYPE:
			__cstr_print_debug("cstr", "Invalid string type\n");
			break;
		case CSTR_DEBUG_ALLOC_FAILURE:
			__cstr_print_debug("cstr", "Memory allocation failure\n");
			break;
		case CSTR_DEBUG_OUT_OF_INDEX:
			__cstr_print_debug("cstr", "String access out of index");
			break;
		default:
			break;
	}
	if (code != CSTR_DEBUG_NOTHING)
		exit(code);
}
#else
inline void __cstr_debug(enum CSTR_DEBUG_CODE code)
{
	if (code != CSTR_DEBUG_NOTHING)
		exit(code);
}
#endif

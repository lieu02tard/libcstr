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

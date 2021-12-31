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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef CSTR_DEBUG
static const char* c_red = "\033[;31m";
static const char* c_green = "\033[;32m";
static const char* c_brown = "\033[;33m";
static const char* c_blue = "\033[;34m";
static const char* c_magenta = "\033[;35m";
static const char* c_cyan = "\033[;36m";
static const char* c_reset = "\033[0m";

extern inline void __cstr_print_debug(const char* title, const char* content);
extern inline void __cstr_print_title(const char* title);
#endif

extern inline void __cstr_debug(const char* title, const char* content, int code);
#ifdef __cplusplus
}
#endif
#endif

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
#ifndef _CSTR_UTILITY_H_
#define _CSTR_UTILITY_H_
#include "cstr.h"

#ifdef __cplusplus
extern "C" {
#endif
// Manipulation function
//
// Overwrite
extern char* cstrcpy(cstr_t *dest, cstr_t *src);		// Transfer ownership
extern char* cstrdcpy(cstr_t *dest, cstr_t src);		// Deep copy
extern char* cstrdgcpy(cstr_t *dest, const char* src);	// From literal

extern char* cstrncpy(cstr_t *dest, cstr_t* src, size_t nbytes);	// Transfer ownership
extern char* cstrndcpy(cstr_t *dest, cstr_t src, size_t nbytes);	// Deep copy
extern char* cstrndgcpy(cstr_t *dest, const char* src, size_t nbytes);	// From literal

// Append
extern char* cstrcat(cstr_t *dest, cstr_t src);
extern char* cstrgcat(cstr_t *dest, const char* src);

extern char* cstrncat(cstr_t *dest, cstr_t src, size_t nbytes);
extern char* cstrngcat(cstr_t *dest, const char* src, size_t nbytes);
#ifdef __cplusplus
}
#endif
#endif

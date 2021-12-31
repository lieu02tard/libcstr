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
#include "config.h"
#include "wcstr.h"

#ifdef __cplusplus
extern "C" {
#endif
// Manipulation function
//
// Overwrite
extern WCHAR_TYPE* wcstrcpy(wcstr_t *dest, wcstr_t *src);		// Transfer ownership
extern WCHAR_TYPE* wcstrdcpy(wcstr_t *dest, const wcstr_const_t src);		// Deep copy
extern WCHAR_TYPE* wcstrdgcpy(wcstr_t *dest, const WCHAR_TYPE* src);	// From literal

extern WCHAR_TYPE* wcstrncpy(wcstr_t *dest, wcstr_t* src, size_t nbytes);	// Transfer ownership
extern WCHAR_TYPE* wcstrndcpy(wcstr_t *dest, const wcstr_const_t src, size_t nbytes);	// Deep copy
extern WCHAR_TYPE* wcstrndgcpy(wcstr_t *dest, const WCHAR_TYPE* src, size_t nbytes);	// From literal

// Append
extern WCHAR_TYPE* wcstrcat(wcstr_t *dest, const wcstr_const_t src);
extern WCHAR_TYPE* wcstrgcat(wcstr_t *dest, const WCHAR_TYPE* src);

extern WCHAR_TYPE* wcstrncat(wcstr_t *dest, const wcstr_const_t , size_t nbytes);
extern WCHAR_TYPE* wcstrngcat(wcstr_t *dest, const WCHAR_TYPE* src, size_t nbytes);
#ifdef __cplusplus
}
#endif
#endif

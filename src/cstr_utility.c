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
#define __need_struct
#define __need_cstr_inner_func

#include "cstr_utility.h"
#include "config.h"

#include <string.h>
#include <stdlib.h>
#ifdef CSTR_DEBUG
	#include <stdio.h>
	#include "cstr_dbg.h"
#endif

#define MIN(a, b) ((a < b) ? a : b)
char* cstrcpy(cstr_t *dest, cstr_t *src)
{
	if (dest == src || *dest == *src)
		return NULL;
	cstr_t tmp = *src;
	*src = NULL;
	*dest = tmp;
	return *dest;
}

char* cstrdcpy(cstr_t* dest, cstr_t src)
{
	if (*dest == src)
		return NULL;
	__cstr_resize_from(dest, src, __cstr_relsiz(src), 1);
	return *dest;
}

char* cstrdgcpy(cstr_t* dest, const char* src)
{
	if (*dest == src)
		return NULL;
	__cstr_resize_from(dest, src, strnlen(src, BUFSIZ), 1);
	return *dest;
}

char* cstrncpy(cstr_t *dest, cstr_t *src, size_t nbytes)
{
	if (dest == src || *dest == *src)
		return NULL;
	cstr_t tmp = *src;
	*src = NULL;
	*dest = tmp;
	__cstr_resize_from(dest, NULL, nbytes, 1);
	return *dest;
}

char* cstrndcpy(cstr_t *dest, cstr_t src, size_t nbytes)
{
	if (*dest == src)
		return NULL;
	__cstr_resize_from(dest, src, nbytes, 1);
	return *dest;
}

char* cstrndgcpy(cstr_t *dest, const char* src, size_t nbytes)
{
	if (*dest == src)
		return NULL;
	__cstr_resize_from(dest, src, nbytes, 1);
	return *dest;
}

char* cstrcat(cstr_t *dest, cstr_t src)
{
	if (!*dest)
	{
		*dest = ncstrcpy(src);
		return *dest;
	}

	cstr_wrapper src_len = __cstr_relsiz(src);
	if (!src_len)
		return *dest;

	//enum cstr_tt otype = __cstr_type(*dest);
	cstr_wrapper dest_len = __cstr_relsiz(*dest);
	__cstr_resize_from(dest, NULL, dest_len + src_len, 1);
	memcpy(*dest + dest_len, src, src_len);
	return *dest;
}

char* cstrgcat(cstr_t *dest, const char* src)
{
	if (!*dest)
	{
		*dest = ncstr_from(src);
		return *dest;
	}

	cstr_wrapper src_len = strnlen(src, BUFSIZ);
	if (!src_len)
		return *dest;

//	enum cstr_tt otype = __cstr_type(*dest);
	cstr_wrapper dest_len = __cstr_relsiz(*dest);
	__cstr_resize_from(dest, NULL, dest_len + src_len, 1);
	memcpy(*dest + dest_len, src, src_len);
	(*dest)[dest_len + src_len - 1] = '\0';
	return *dest;
}

char* cstrncat(cstr_t *dest, cstr_t src, size_t nbytes)
{
	cstr_wrapper src_len = strnlen(src, BUFSIZ);
	cstr_wrapper isrc_len = MIN(nbytes, src_len);
	if (!isrc_len)
		return *dest;
	if (!*dest)
	{
		 __cstr_resize_from(dest, NULL, isrc_len, 1);
		return *dest;
	}

	cstr_wrapper dest_len = __cstr_relsiz(*dest);
	__cstr_resize_from(dest, NULL, dest_len + isrc_len, 1);
	memcpy(*dest + dest_len , src, isrc_len);
	(*dest)[dest_len + isrc_len - 1] = '\0';
	return *dest;
}

char* cstrngcat(cstr_t *dest, const char* src, size_t nbytes)
{
	cstr_wrapper src_len = strnlen(src, BUFSIZ);
	cstr_wrapper isrc_len = MIN(nbytes, src_len);
	if (!isrc_len)
		return *dest;
	if (!*dest)
	{
		__cstr_resize_from(dest, NULL, isrc_len, 1);
		return *dest;
	}

	cstr_wrapper dest_len = __cstr_relsiz(*dest);
	__cstr_resize_from(dest, NULL, dest_len + isrc_len, 1);
	memcpy(*dest + dest_len, src, isrc_len);
	(*dest)[dest_len + isrc_len - 1] = '\0';
	return *dest;
}

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
#define __need_wcstr_inner_func

#include "config.h"
#include "wcstr_utility.h"

#include <string.h>
#include <stdlib.h>
#include "cstr_dbg.h"

#define MIN(a, b) ((a < b) ? a : b)
WCHAR_TYPE* wcstrcpy(wcstr_t *dest, wcstr_t *src)
{
	if (dest == src || *dest == *src)
		return NULL;
	wcstr_t tmp = *src;
	*src = NULL;
	*dest = tmp;
	return *dest;
}

WCHAR_TYPE* wcstrdcpy(wcstr_t* dest, const wcstr_const_t src)
{
	if (*dest == src)
		return NULL;
	__wcstr_resize_from(dest, src, __wcstr_relsiz(src), 1);
	return *dest;
}

WCHAR_TYPE* wcstrdgcpy(wcstr_t* dest, const WCHAR_TYPE* src)
{
	if (*dest == src)
		return NULL;
	__wcstr_resize_from(dest, src, wcsnlen(src, BUFSIZ), 1);
	return *dest;
}

WCHAR_TYPE* wcstrncpy(wcstr_t *dest, wcstr_t* src, size_t nbytes)
{
	if (*dest == *src || dest == src)
		return NULL;
	wcstr_t tmp = *src;
	*src = NULL;
	*dest = tmp;
	__wcstr_resize_from(dest, NULL, nbytes, 1);
	return *dest;
}

WCHAR_TYPE* wcstrndcpy(wcstr_t *dest, const WCHAR_TYPE* src, size_t nbytes)
{
	if (*dest == src)
		return NULL;
	__wcstr_resize_from(dest, src, nbytes, 1);
	return *dest;
}

WCHAR_TYPE* wcstrndgcpy(wcstr_t *dest, const WCHAR_TYPE* src, size_t nbytes)
{
	if (*dest == src)
		return NULL;
	__wcstr_resize_from(dest, src, nbytes, 1);
	return *dest;
}

WCHAR_TYPE* wcstrcat(wcstr_t *dest, const wcstr_const_t src)
{
	if (!*dest)
	{
		*dest = nwcstrcpy(src);
		return *dest;
	}

	wcstr_wrapper src_len = __wcstr_relsiz(src);
	if (!src_len)
		return *dest;

	//enum wcstr_tt otype = __cstr_type(*dest);
	wcstr_wrapper dest_len = __wcstr_relsiz(*dest);
	__wcstr_resize_from(dest, NULL, dest_len + src_len, 1);
	memcpy(*dest + dest_len, src, src_len * sizeof(WCHAR_TYPE));
	return *dest;
}

WCHAR_TYPE* wcstrgcat(wcstr_t *dest, const WCHAR_TYPE* src)
{
	if (!*dest)
	{
		*dest = nwcstr_from(src);
		return *dest;
	}

	wcstr_wrapper src_len = wcsnlen(src, BUFSIZ);
	if (!src_len)
		return *dest;

//	enum wcstr_tt otype = __cstr_type(*dest);
	wcstr_wrapper dest_len = __wcstr_relsiz(*dest);
	__wcstr_resize_from(dest, NULL, dest_len + src_len, 1);
	memcpy(*dest + dest_len, src, src_len * sizeof(WCHAR_TYPE));
	(*dest)[dest_len + src_len - 1] = '\0';
	return *dest;
}

WCHAR_TYPE* wcstrncat(wcstr_t *dest, const wcstr_const_t src, size_t nbytes)
{
	wcstr_wrapper src_len = wcsnlen(src, BUFSIZ);
	wcstr_wrapper isrc_len = MIN(nbytes, src_len);
	if (!isrc_len)
		return *dest;
	if (!*dest)
	{
		 __wcstr_resize_from(dest, NULL, isrc_len, 1);
		return *dest;
	}

	wcstr_wrapper dest_len = __wcstr_relsiz(*dest);
	__wcstr_resize_from(dest, NULL, dest_len + isrc_len, 1);
	memcpy(*dest + dest_len , src, isrc_len);
	(*dest)[dest_len + isrc_len - 1] = '\0';
	return *dest;
}

WCHAR_TYPE* wcstrngcat(wcstr_t *dest, const WCHAR_TYPE* src, size_t nbytes)
{
	wcstr_wrapper src_len = wcsnlen(src, BUFSIZ);
	wcstr_wrapper isrc_len = MIN(nbytes, src_len);
	if (!isrc_len)
		return *dest;
	if (!*dest)
	{
		__wcstr_resize_from(dest, NULL, isrc_len, 1);
		return *dest;
	}

	wcstr_wrapper dest_len = __wcstr_relsiz(*dest);
	__wcstr_resize_from(dest, NULL, dest_len + isrc_len, 1);
	memcpy(*dest + dest_len, src, isrc_len * sizeof(WCHAR_TYPE));
	(*dest)[dest_len + isrc_len - 1] = '\0';
	return *dest;
}

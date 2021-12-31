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
#include "wcstr.h"

#include <wchar.h>
#include <stdlib.h>

#include "cstr_dbg.h"

#include <string.h>
#include <errno.h>

#define HEADER_TYPE(n) struct head##n

/* -----------Inner function------------*/

/**
 * __wcstr_type - Return type of a &cstr_t string
 * @p:		String
 *
 * Return type of string
 */
__attribute__((always_inline))
inline enum wcstr_tt __wcstr_type(const wcstr_const_t p)
{
	return *((uint8_t*)(p) - 1) & __CSTR_TYPE_MASK;
}

/**
 * __wcstr_head - return head position
 * @p:		string
 * @type:	type
 *
 * Return the position that is allocate for string @p
 */
__attribute__((always_inline))
inline void* __wcstr_head(const wcstr_const_t p , enum wcstr_tt type)
{
	return (void*)p - __wcstr_datoff(type);
}

/**
 * __wcstr_type_wn - return type (with number)
 * @n:		size of string
 *
 * Return type of string that @n characters fit in
 */
__attribute__((always_inline))
inline enum wcstr_tt __wcstr_type_wn(size_t n)
{
#ifdef HAVE_64_BITS
	return (n <= T0_MAX) ? WCSTR_TYPE_0 : 
		((n <= T1_MAX) ? WCSTR_TYPE_1 :
		((n <= T2_MAX) ? WCSTR_TYPE_2 : 
		((n <= T3_MAX) ? WCSTR_TYPE_3 : WCSTR_TYPE_INVALID)));
#else
	return (n <= T0_MAX) ? WCSTR_TYPE_0 :
		(n <= T1_MAX) ? WCSTR_TYPE_1 :
		(n <= T2_MAX) ? WCSTR_TYPE_2 : WCSTR_TYPE_INVALID;
#endif
}

/**
 * __wcstr_nofbuf - get nofbuf metadata
 * @p:		string
 * @type:	type of string
 *
 * Return nofbuf metadata
 */
__attribute__((always_inline))
inline wcstr_lower __wcstr_nofbuf(const wcstr_const_t p, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			return ((HEADER_TYPE(0)*)p - 1)->nofbuf;
		case WCSTR_TYPE_1:
			return ((HEADER_TYPE(1)*)p - 1)->nofbuf;
		case WCSTR_TYPE_2:
			return ((HEADER_TYPE(2)*)p - 1)->nofbuf;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			return ((HEADER_TYPE(3)*)p - 1)->nofbuf;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
			
	}
}

/**
 * __wcstr_relsiz - get relsiz metadata
 * @p:		string
 * @type:	type of string
 *
 * return relsiz metadata
 */
inline wcstr_wrapper __wcstr_relsiz(const wcstr_const_t p, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			return ((HEADER_TYPE(0)*)p - 1)->relsiz;
		case WCSTR_TYPE_1:
			return ((HEADER_TYPE(1)*)p - 1)->relsiz;
		case WCSTR_TYPE_2:
			return ((HEADER_TYPE(2)*)p - 1)->relsiz;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			return ((HEADER_TYPE(3)*)p - 1)->relsiz;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

/**
 * __wcstr_flag - get flag
 * @p:		string
 * @type:	type of string
 *
 * return flag metadata
 */
inline wcstr_lower __wcstr_flag(const wcstr_const_t p, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			return ((HEADER_TYPE(0)*)p - 1)->flag;
		case WCSTR_TYPE_1:
			return ((HEADER_TYPE(1)*)p - 1)->flag;
		case WCSTR_TYPE_2:
			return ((HEADER_TYPE(2)*)p - 1)->flag;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			return ((HEADER_TYPE(3)*)p - 1)->flag;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

/**
 * __wcstr_datoff - get data offset (of type)
 * @type:	type
 *
 * return data offset (or the size of header/metadata) of certain type
 */
inline wcstr_lower __wcstr_datoff(enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			return sizeof(HEADER_TYPE(0));
		case WCSTR_TYPE_1:
			return sizeof(HEADER_TYPE(1));
		case WCSTR_TYPE_2:
			return sizeof(HEADER_TYPE(2));
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			return sizeof(HEADER_TYPE(3));
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

/**
 * __wcstr_datoff_wn - get data offsert (of number)
 * @nbytes:		size
 *
 * return data offsert of the string that fit @nbytes of characters
 */
inline wcstr_lower __wcstr_datoff_wn(size_t nbytes)
{
	return __wcstr_datoff(__wcstr_type_wn(nbytes));
}

/**
 * __wcstr_datbuf - get data buffer (of type)
 * @type:		type
 *
 * return buffer size of a certain type
 */
inline wcstr_lower __wcstr_datbuf(enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			return T0_BUFFER;
		case WCSTR_TYPE_1:
			return T1_BUFFER;
		case WCSTR_TYPE_2:
			return T2_BUFFER;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			return T3_BUFFER;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

/**
 * __wcstr_datbuf_wn - get data buffer (of number)
 * @nbytes:		size
 *
 * return buffer size of certain string size
 */
inline wcstr_lower __wcstr_datbuf_wn(size_t nbytes)
{
	return __wcstr_datbuf(__wcstr_type_wn(nbytes));
}

/**
 * __wcstr_set_nofbuf - set nofbuf metadata
 * @p:			string
 * @val:		value to set
 * @type:		type of string
 *
 * set nofbuf metadata
 */
inline void __wcstr_set_nofbuf(const wcstr_const_t p, wcstr_lower val, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			((HEADER_TYPE(0)*)p - 1)->nofbuf = val;
			return;
		case WCSTR_TYPE_1:
			((HEADER_TYPE(1)*)p - 1)->nofbuf = val;
			return;
		case WCSTR_TYPE_2:
			((HEADER_TYPE(2)*)p - 1)->nofbuf = val;
			return;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			((HEADER_TYPE(3)*)p - 1)->nofbuf = val;
			return;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
			return;
	}
}

/**
 * __wcstr_set_relsiz - set relsiz metadata
 * @p:			string
 * @val:		value to set
 * @type:		type of string
 *
 * set relsiz metadata
 */
inline void __wcstr_set_relsiz(const wcstr_const_t p, wcstr_wrapper val, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			((HEADER_TYPE(0)*)p - 1)->nofbuf = val;
			return;
		case WCSTR_TYPE_1:
			((HEADER_TYPE(1)*)p - 1)->nofbuf = val;
			return;
		case WCSTR_TYPE_2:
			((HEADER_TYPE(2)*)p - 1)->nofbuf = val;
			return;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			((HEADER_TYPE(3)*)p - 1)->nofbuf = val;
			return;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
			return;
	}
}

/**
 * __wcstr_header - get header of string
 * @head:	pointer to header position
 * @p:		string
 * @type:	type of string
 *
 * get &header_cnt header of a string
 */
inline void __wcstr_header(header_cnt* head, const wcstr_const_t p, enum wcstr_tt type)
{
	__wcstr_header_from(head, __cstr_head(p, type), type);
}

/**
 * __wcstr_header_from - get header from certain memory pointer
 * @head:	pointer to header position
 * @p:		pointer to the header memory
 * @type:	type of header/string
 *
 * get &header_cnt encapsulate from certain memory location
 */
inline void __wcstr_header_from(header_cnt* head, void* p, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			while(0){}
			HEADER_TYPE(0) *tmp1 = (HEADER_TYPE(0)*)p;
			head->nofbuf = tmp1->nofbuf;
			head->relsiz = tmp1->relsiz;
			head->flag = tmp1->flag;
		case WCSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp2 = (HEADER_TYPE(1)*)p;
			head->nofbuf = tmp2->nofbuf;
			head->relsiz = tmp2->relsiz;
			head->flag = tmp2->flag;
		case WCSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp3 = (HEADER_TYPE(2)*)p;
			head->nofbuf = tmp3->nofbuf;
			head->relsiz = tmp3->relsiz;
			head->flag	= tmp3->flag;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp4 = (HEADER_TYPE(3)*)p;
			head->nofbuf = tmp4->nofbuf;
			head->relsiz = tmp4->relsiz;
			head->flag	= tmp4->flag;
			};
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

/**
 * __wcstr_getman - Get alloc_man from size
 * @man:		&struct_man
 * @nbytes:		size
 *
 * Get alloc_man for string of size @nbytes
 */
inline void __wcstr_getman(struct alloc_man *man, size_t nbytes)
{
	enum wcstr_tt type = __wcstr_type_wn(nbytes);
	man->relsiz = nbytes;
	man->flag = __wcstr_toflag(type);
	man->datoff = __wcstr_datoff(type);
	man->type = type;
	man->nofbuf	= __wcstr_nof_buffer(nbytes, type);
	man->nofblk	= __wcstr_datbuf(type) * man->nofbuf + man->datoff;
}

/**
 * __wcstr_getman - Get alloc_man from a string
 * @man:		pointer to &struct_man
 * @p:			string
 * @type:		string type
 *
 * Get allocation manual for a string
 */
inline void __wcstr_getman_wp(struct alloc_man* man, const wcstr_const_t p, enum wcstr_tt type)
{
	switch(type)
	{
		case WCSTR_TYPE_0:
			while(0) {}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p - 1;
			man->relsiz = tmp0->relsiz;
			man->nofbuf = tmp0->nofbuf;
			man->flag = tmp0->flag;
			man->datoff = sizeof(HEADER_TYPE(0));
			break;
		case WCSTR_TYPE_1:
			while(0) {}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p - 1;
			man->relsiz = tmp1->relsiz;
			man->nofbuf = tmp1->nofbuf;
			man->flag = tmp1->flag;
			man->datoff =sizeof(HEADER_TYPE(1));
			break;
		case WCSTR_TYPE_2:
			while(0) {}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p - 1;
			man->relsiz = tmp2->relsiz;
			man->nofbuf = tmp2->nofbuf;
			man->flag = tmp2->flag;
			man->datoff = sizeof(HEADER_TYPE(2));
			break;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			while(0) {}
			HEADER_TYPE(3) *tmp3 = (HEADER_TYPE(3)*)p - 1;
			man->relsiz = tmp3->relsiz;
			man->nofbuf = tmp3->nofbuf;
			man->flag = tmp3->flag;
			man->datoff = sizeof(HEADER_TYPE(3));
			break;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
	man->type = type;
	man->nofblk = man->nofbuf * __wcstr_datbuf(type) + man->datoff;
}

/**
 * __wcstr_getman_wh - get alloc_man from a header
 * @man:		pointer to the &struct_man
 * @head:		header
 * @type:		header type
 *
 * get allocation manual for a header
 */
inline void __wcstr_getman_wh(struct alloc_man* man, header_cnt *head, enum wcstr_tt type)
{
	man->relsiz = head->relsiz;
	man->nofbuf = head->nofbuf;
	man->flag = head->flag;
	man->type = type;
	man->datoff = __wcstr_datoff(type);
	man->nofblk = man->nofbuf * __wcstr_datbuf(type) + man->datoff;
}

/**
 * __wcstr_set_header - set header
 * @p:			header position
 * @man:		pointer to &alloc_man to allocate
 * @type:		type of string
 *
 * set header at position @p to @man's content
 */
__attribute__((always_inline))
inline void* __wcstr_set_header(void* p , struct alloc_man* man, enum wcstr_tt type)
{
	switch(type)
	{
		case WCSTR_TYPE_0:
			while(0) {}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p;
			tmp0->nofbuf	= man->nofbuf;
			tmp0->relsiz	= man->relsiz;
			tmp0->flag		= *((uint8_t*)&man->flag + sizeof(man->flag) - 1);
			return (void*)(tmp0 + 1);
		case WCSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p;
			tmp1->nofbuf	= man->nofbuf;
			tmp1->relsiz	= man->relsiz;
			tmp1->flag		= *((uint8_t*)&man->flag + sizeof(man->flag) - 1);
			return (void*)(tmp1 + 1);
		case WCSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p;
			tmp2->nofbuf	= man->nofbuf;
			tmp2->relsiz	= man->relsiz;
			tmp2->flag		= *((uint8_t*)&man->flag + sizeof(man->flag) - 1);
			return (void*)(tmp2 + 1);
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp3 = (HEADER_TYPE(3)*)p;
			tmp3->nofbuf	= man.nofbuf;
			tmp3->relsiz	= man.relsiz;
			tmp3->flag		= *((uint8_t*)&man->flag + sizeof(man->flag) - 1);
			return (void*)(tmp3 + 1);
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
			
	}
}

/**
 * __wcstr_set_header_wh - set header from &header_cnt struct
 * @p:		header position
 * @head:	header struct
 * @type:	header type
 *
 * set header at position @p to @head's content
 */
__attribute__((always_inline))
inline void* __wcstr_set_header_wh(void* p, header_cnt* head, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			while(0){}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p;
			tmp0->nofbuf	= head->nofbuf;
			tmp0->relsiz	= head->relsiz;
			tmp0->flag		= *((uint8_t*)&head->flag + sizeof(head->flag) - 1);
			return (void*)(tmp0 + 1);
		case WCSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p;
			tmp1->nofbuf	= head->nofbuf;
			tmp1->relsiz	= head->relsiz;
			tmp1->flag		= *((uint16_t*)&head->flag + sizeof(head->flag) - 1);
			return (void*)(tmp1 + 1);
		case WCSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p;
			tmp2->nofbuf	= head->nofbuf;
			tmp2->relsiz	= head->relsiz;
			tmp2->flag		= *((uint32_t*)&head->flag + sizeof(head->flag) - 1);
			return (void*)(tmp2 + 1);
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp3 = (HEADER_TYPE(3)*)p;
			tmp3->nofbuf	= head->nofbuf;
			tmp3->relsiz	= head->relsiz;
			tmp3->flag		= *((uint64_t*)&head->flag + sizeof(head->flag) - 1);
			return (void*)(tmp3 + 1);
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

/**
 * __wcstr_toflag - convert type to flag
 * @type:		type
 *
 * Convert @type to useable flag in a header
 */
inline wcstr_lower __wcstr_toflag(enum wcstr_tt type)
{
	wcstr_lower tmp = 0;
	uint8_t* ret = (uint8_t*)&tmp + sizeof(tmp) - 1;
	*ret = type;
	return tmp;
}

/**
 * __cstr_from_flag - convert flag to type
 * @flag:		flag
 *
 * Convert raw @flag to type
 */
inline enum wcstr_tt __wcstr_from_flag(wcstr_lower flag)
{
	uint8_t* ret = (uint8_t*)&flag + sizeof(flag) - 1;
	return *ret;
}

/**
 * __cstr_nof_buffer - count the number of buffer to allocate
 * @nbytes:		size
 * @type:		type
 *
 * Count the number of buffer to allocate for @nbytes characters
 */
inline wcstr_lower __wcstr_nof_buffer(size_t nbytes, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			return (nbytes >> T0_MASK) + 1;
		case WCSTR_TYPE_1:
			return (nbytes >> T1_MASK) + 1;
		case WCSTR_TYPE_2:
			return (nbytes >> T2_MASK) + 1;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			return (nbytes >> T3_MASK) + 1;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

inline wcstr_lower __wcstr_nof_buffer_alone(size_t nbytes)
{
	return __wcstr_nof_buffer(nbytes, __wcstr_type_wn(nbytes));
}

/* ----------- API functions ------------------ */
inline size_t wcstr_buf(const wcstr_const_t p)
{
	return __wcstr_nofbuf(p, __wcstr_type(p));
}

inline size_t wcstr_len(const wcstr_const_t p)
{
	return __wcstr_relsiz(p, __wcstr_type(p));
}

inline size_t wcstr_rmn(const wcstr_const_t p)
{
	enum wcstr_tt type = __wcstr_type(p);
	return __wcstr_nofbuf(p, type) * __wcstr_datbuf(type) - __wcstr_relsiz(p, type);
}


inline void wcstr_free(wcstr_t p)
{
	CSTR_FREE(
		__wcstr_head(p, __wcstr_type(p)));
}

__attribute__((warn_unused_result))
wcstr_t nwcstr_mt()
{
	struct alloc_man man;
	__wcstr_getman(&man, 1);
	WCHAR_TYPE* _alloc = (WCHAR_TYPE*) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
	if (_alloc)
	{
		__wcstr_set_header((void*)_alloc, &man, WCSTR_TYPE_0);
		_alloc[man.nofblk - 1] = '\0';
		return (wcstr_t)(_alloc + man.datoff);
	}
	else 
		__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
}

__attribute__((warn_unused_result))
wcstr_t nwcstr_new(size_t nbytes)
{
	struct alloc_man man;
	__wcstr_getman(&man, nbytes);
	WCHAR_TYPE* _alloc = (WCHAR_TYPE*) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
	if (_alloc)
	{
		wcstr_t _return = (wcstr_t)__wcstr_set_header((void*)_alloc, &man, man.type);
		_alloc[man.nofblk - 1] = '\0';
		return _return;
	}
	else
		__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
}

__attribute__((warn_unused_result))
wcstr_t nwcstr_from(const WCHAR_TYPE* s)
{
	wcstr_wrapper len = wcsnlen(s, BUFSIZ);
	struct alloc_man man;
	__wcstr_getman(&man, len);
	WCHAR_TYPE* _alloc = (WCHAR_TYPE*) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
	if (_alloc)
	{
		wcstr_t _return = (wcstr_t)__wcstr_set_header((void*)_alloc, &man, man.type);
		memcpy(_return, s, len * sizeof(WCHAR_TYPE));
		_alloc[man.nofblk - 1] = '\0';
		return _return;
	}
	else
		__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
}

__attribute__((warn_unused_result))
wcstr_t nwcstrcpy(wcstr_t p)
{
	struct alloc_man man;
	__wcstr_getman_wp(&man, p, __wcstr_type(p));
	wcstr_t _alloc = (wcstr_t) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
	if (_alloc)
	{
		memcpy(_alloc, __wcstr_head(p, __wcstr_type(p)), man.nofblk  * sizeof(WCHAR_TYPE));
		return _alloc + man.datoff;
	}
	else
		__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
}

__attribute__((warn_unused_result))
wcstr_t nwcstrdup(wcstr_t* p)
{
	wcstr_t _return = *p;
	*p = NULL;
	return _return;
}

/**
 * __wcstr_resize_from - Resize and move string
 * @p:		Pointer to &wcstr_t string
 * @src:	Source string
 * @capacity: Length to move
 * @create:	Whether to create a new string if *@p is NULL
 *
 * Resize @*p to a @capacity. If @src is not NULL, then copy @capacity characters from @src to @*p
 * *@p might be changed with realloc()
 */
void __wcstr_resize_from(wcstr_t* p, const WCHAR_TYPE* src, size_t capacity, int create)
{
	if (!p)
		return;
	if (*p == NULL && create)
	{
		struct alloc_man man;
		__wcstr_getman(&man, capacity);
		wcstr_t _alloc = (wcstr_t) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		*p = __wcstr_set_header(_alloc, &man, man.type);
		if (src)
			memcpy(*p, src, capacity * sizeof(WCHAR_TYPE));
		_alloc[man.nofblk - 1] = '\0';
		return;
	}
	else if (*p == NULL)
		return;

	enum wcstr_tt otype = __wcstr_type(*p);
	if (__wcstr_relsiz(*p, otype) == capacity)
	{
		size_t real_len = (src) ? wcsnlen(src, BUFSIZ) : capacity;
		if (src)
			memcpy(*p, src, real_len * sizeof(WCHAR_TYPE));
		__wcstr_set_relsiz(*p, real_len, otype);
		(*p)[capacity - 1] = '\0';	// Maybe optional
		return;
	}

	void* head = __wcstr_head(*p, otype);
	struct alloc_man man;
	__wcstr_getman(&man, capacity);
	if (otype == man.type)
	{
		wcstr_t _alloc = (wcstr_t) CSTR_REALLOC(head, man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		*p = __wcstr_set_header(_alloc, &man, man.type);
		if (src)
		{
			size_t tmp = wcsnlen(src, BUFSIZ);
			memcpy(*p, src, tmp * sizeof(WCHAR_TYPE));
			__wcstr_set_relsiz(*p, tmp, man.type);
		}
		return;
	}
	else
	{
		wcstr_t _alloc = (wcstr_t) CSTR_REALLOC(*p, man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		*p = __wcstr_set_header(_alloc, &man, man.type);
		if (src)
		{
			size_t tmp = wcsnlen(src, BUFSIZ);
			memcpy(*p, src, tmp * sizeof(WCHAR_TYPE));
			__wcstr_set_relsiz(*p, tmp, man.type);
		}
		else
			memmove(_alloc + __wcstr_datoff(otype), _alloc + man.datoff, man.relsiz * sizeof(WCHAR_TYPE));
		_alloc[man.nofblk - 1] = '\0';	
		return;
	}
}

void wcstr_resize(wcstr_t *p, size_t capacity)
{
	__wcstr_resize_from(p, NULL, capacity, 0);
}

void wcstr_trim(wcstr_t* p)
{
	if (!p)
		return;
	enum wcstr_tt otype = __wcstr_type(*p);
	struct alloc_man man;
	__wcstr_getman(&man, __wcstr_relsiz(*p, otype));
	if (man.nofbuf == __wcstr_nofbuf(*p, otype))
		return;
	if (otype == man.type)
	{
		wcstr_t _alloc = (wcstr_t) CSTR_REALLOC(*p, man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		*p = _alloc + man.datoff;
		return;
	}
	else
	{
		wcstr_t _alloc = (wcstr_t) CSTR_REALLOC(*p, man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		memmove(_alloc + __wcstr_datoff(otype), _alloc + man.datoff, man.relsiz * sizeof(WCHAR_TYPE));
		_alloc[man.nofblk - 1] = '\0';
		__wcstr_set_header(_alloc, &man, man.type);
		*p = _alloc + man.datoff;
		return;
	}
}


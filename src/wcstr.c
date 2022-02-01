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
	struct head0 *pc = (struct head0*)p;
	--pc;
	return pc->flag & __CSTR_TYPE_MASK;
}

#define m_wcstr_type ({\
		struct head0 *__p = (struct head0*)p; \
		--__p; __p->flag & __CSTR_TYPE_MASK;})

/**
 * __wcstr_head - return head position
 * @p:		string
 *
 * Return the position that is allocate for string @p
 */
__attribute__((always_inline))
inline void* __wcstr_head(const wcstr_const_t p)
{
	return (void*)p - sizeof(struct head0);
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
 *
 * Return nofbuf metadata
 */
__attribute__((always_inline))
inline wcstr_lower __wcstr_nofbuf(const wcstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	return pc->nofbuf;
}
#define m_wcstr_getmeta(p, member) ({ \
		struct head0 *pc = (struct head0*)p; \
		--pc; pc->member })

#define m_wcstr_nofbuf(p) m_wcstr_getmeta(p, nofbuf)
/**
 * __wcstr_relsiz - get relsiz metadata
 * @p:		string
 *
 * return relsiz metadata
 */
inline wcstr_wrapper __wcstr_relsiz(const wcstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	return pc->relsiz;
}
#define m_wcstr_relsiz(p) m_wcstr_getmeta(p, relsiz)

/**
 * __wcstr_flag - get flag
 * @p:		string
 *
 * return flag metadata
 */
inline wcstr_lower __wcstr_flag(const wcstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	return pc->flag;
}
#define m_wcstr_flag(p) m_wcstr_getmeta(p, flag)

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
#ifdef HAVE_64_BITS
#define m_wcstr_datbuf(type) \
	((type == CSTR_TYPE_0) ? T0_BUFFER :	\
	 (type == CSTR_TYPE_1) ? T1_BUFFER :	\
	 (type == CSTR_TYPE_2) ? T2_BUFFER :	\
	 (type == CSTR_TYPE_3) ? T3_BUFFER : 0)
#else /* 32 bits system */
#define m_wcstr_datbuf(type) \
	((type == CSTR_TYPE_0) ? T0_BUFFER :	\
	 (type == CSTR_TYPE_1) ? T1_BUFFER :	\
	 (type == CSTR_TYPE_2) ? T2_BUFFER : 0)
#endif

/**
 * __wcstr_datbuf_wn - get data buffer (of number)
 * @nbytes:		size
 *
 * return buffer size of certain string size
 */
inline wcstr_lower __wcstr_datbuf_wn(size_t nbytes)
{
#ifdef HAVE_64_BITS
	return (nbytes <= T0_MAX) ? T0_BUFFER :
		(nbytes <= T1_MAX) ? T1_BUFFER :
		(nbytes <= T2_MAX) ? T2_BUFFER :
		(nbytes <= T3_MAX) ? T3_BUFFER : 0;
#else
	return (nbytes <= T0_MAX) ? T0_BUFFER :
		(nbytes <= T1_MAX) ? T1_BUFFER :
		(nbytes <= T2_MAX) ? T2_BUFFER : 0;
}

/**
 * __wcstr_set_nofbuf - set nofbuf metadata
 * @p:			string
 * @val:		value to set
 *
 * set nofbuf metadata
 */
inline void __wcstr_set_nofbuf(const wcstr_const_t p, wcstr_lower val)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	pc->nofbuf = val;
}
#define m_wcstr_setmeta(p, val, member) do {\
	struct head0 *pc = (struct head0*)p; \
	--pc; pc->member = val; } while(0)

#define m_wcstr_nofbuf(p, val) m_wcstr_setmeta(p, val, nofbuf)

/**
 * __wcstr_set_relsiz - set relsiz metadata
 * @p:			string
 * @val:		value to set
 *
 * set relsiz metadata
 */
inline void __wcstr_set_relsiz(const wcstr_const_t p, wcstr_wrapper val)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	pc->nofbuf = val;
}
#define m_wcstr_set_relsiz(p, val) m_wcstr_setmeta(p, val, relsiz)

/**
 * __wcstr_header - get header of string
 * @head:	pointer to header position
 * @p:		string
 *
 * get &header_cnt header of a string
 */
inline void __wcstr_header(header_cnt* head, const wcstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	*head = *pc;
}

#define m_wcstr_header(head, p) do \
{	struct head0 *pc = (struct head0*)p;	\
	--p; head = *pc; } while(0)

/**
 * __wcstr_mask - Get bit shift pattern
 *
 * Get bit shift pattern
 */
__attribute__((always_inline))
inline size_t __wcstr_mask(enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			return T0_MASK;
		case WCSTR_TYPE_1:
			return T1_MASK;
		case WCSTR_TYPE_2:
			return T2_MASK;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			return T3_MASK;
#endif
		default:
			__wcstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

/**
 * __wcstr_getman - Get alloc_man from size
 * @man:		&struct_man
 * @nbytes:		size
 *
 * Get alloc_man for string of size @nbytes
 */
__attribute__((always_inline))
inline void __wcstr_getman(struct alloc_man *man, size_t nbytes)
{
	enum wcstr_tt type = __wcstr_type_wn(nbytes);
	man->relsiz = nbytes;
	man->type = type;
	man->nofbuf = __wcstr_nof_buffer(nbytes, type);
	man->nofblk = man->nofbuf << __wcstr_mask(type);
}
#define m_wcstr_getman(man, nbytes) do \
{	enum cstr_tt type = __wcstr_type_wn(nbytes);	\
	man.relsiz = nbytes;	\
	man.type = type;	\
	man.nofbuf = __wcstr_nof_buffer(nbytes, type);	\
	man.nofblk = man.nofbuf << __cstr_mask(type); } while(0)

/**
 * __wcstr_getman_wp - Get alloc_man from a string
 * @man:		pointer to &struct_man
 * @p:			string
 *
 * Get allocation manual for a string
 */
inline void __wcstr_getman_wp(struct alloc_man* man, const wcstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	
	man->relsiz = pc->relsiz;
	man->nofbuf = pc->nofbuf;
	man->type = __wcstr_from_flag(pc->flag);
	man->nofblk = man->nofbuf << __wcstr_mask(man->type);
}
#define m_wcstr_getman_wp(man, p) do \
{	struct head0 *pc = (struct head0*)p; --pc;	\
	man.relsiz = pc->relsiz;	\
	man.nofbuf = pc->nofbuf;	\
	man.type = __wcstr_from_flag(pc->flag);	\
	man.nofblk = man.nofbuf << __wcstr_mask(man.type) } while(0)

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
	man->type = __wcstr_from_flag(head->flag);
	man->nofblk = man->nofbuf << __wcstr_mask(man->type); 
}
#define m_wcstr_getman_wh(man, head) do \
{	man.relsiz	= head.relsiz;	\
	man.nofbuf	= head.nofbuf;	\
	man.type = __wcstr_from_flag(head.flag)	\
	man.nofblk = man.nofbuf << __wcstr_mask(man->type); } while(0)

/**
 * __wcstr_set_header - set header
 * @p:			header position
 * @man:		pointer to &alloc_man to allocate
 * @type:		type of string
 *
 * set header at position @p to @man's content
 */
__attribute__((always_inline))
inline void* __wcstr_set_header(void* p , struct alloc_man* man)
{
	struct head0 *pc = (struct head0*)p;
	pc->nofbuf = man->nofbuf;
	pc->relsiz = man->relsiz;
	pc->flag = __wcstr_toflag(man->type);

	++pc;
	return pc;
}
#define m_wcstr_set_header(p, man) ({\
		struct head0 *__tmp = (struct head0*)p;	\
		__tmp->nofbuf = man.nofbuf;		\
		__tmp->relsiz = man.relsiz;		\
		__tmp->flag = __wcstr_toflag(man.type);	\
		++pc; })

/**
 * __wcstr_set_header_wh - set header from &header_cnt struct
 * @p:		header position
 * @head:	header struct
 *
 * set header at position @p to @head's content
 */
__attribute__((always_inline))
inline void* __wcstr_set_header_wh(void* p, header_cnt* head)
{
	struct head0 *pc = (struct head0*)p;
	*pc = *head;
	return ++pc;
}

/**
 * __wcstr_toflag - convert type to flag
 * @type:		type
 *
 * Convert @type to useable flag in a header
 */
inline wcstr_lower __wcstr_toflag(enum wcstr_tt type)
{
	return type;
}

/**
 * __wcstr_from_flag - convert flag to type
 * @flag:		flag
 *
 * Convert raw @flag to type
 */
inline enum wcstr_tt __wcstr_from_flag(wcstr_lower flag)
{
	return flag;
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
			__wcstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

inline wcstr_lower __wcstr_nof_buffer_alone(size_t nbytes)
{
	return __wcstr_nof_buffer(nbytes, __wcstr_type_wn(nbytes));
}

/* ----------- API functions ------------------ */
inline size_t wcstr_buf(const wcstr_const_t p)
{
	return __wcstr_nofbuf(p);
}

inline size_t wcstr_len(const wcstr_const_t p)
{
	return __wcstr_relsiz(p);
}

inline size_t wcstr_rmn(const wcstr_const_t p)
{
	enum wcstr_tt type = __wcstr_type(p);
	return __wcstr_nofbuf(p) * __wcstr_datbuf(type) - __wcstr_relsiz(p);
}


inline void wcstr_free(wcstr_t p)
{
	CSTR_FREE(__wcstr_head(p));
}

__attribute__((warn_unused_result))
wcstr_t nwcstr_mt()
{
	struct alloc_man man;
	__wcstr_getman(&man, 1);
	WCHAR_TYPE* _alloc = (WCHAR_TYPE*) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
	if (_alloc)
	{
		__wcstr_set_header((void*)_alloc, &man);
		_alloc[man.nofblk - 1] = '\0';
		return (void*)_alloc + sizeof(struct head0);
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
		wcstr_t _return = (wcstr_t)__wcstr_set_header((void*)_alloc, &man);
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
		wcstr_t _return = (wcstr_t)__wcstr_set_header((void*)_alloc, &man);
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
		memcpy(_alloc, __wcstr_head(p), man.nofblk  * sizeof(WCHAR_TYPE));
		return (void*)_alloc + sizeof(struct head0);
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
		*p = __wcstr_set_header(_alloc, &man);
		if (src)
			memcpy(*p, src, capacity * sizeof(WCHAR_TYPE));
		_alloc[man.nofblk - 1] = '\0';
		return;
	}
	else if (*p == NULL)
		return;

	struct alloc_man man;
	__wcstr_getman_wp(&man, *p);

	enum wcstr_tt cap_type = __wcstr_type_wn(capacity);
	wcstr_lower real_buf = __wcstr_nof_buffer(capacity, cap_type);


	if ((real_buf <= man.nofbuf) && (cap_type == man.type))
	{
		if (src)
			memcpy(*p - sizeof(struct head0), src, capacity * sizeof(WCHAR_TYPE));
		(*p)[capacity - 1] = '\0';
		return;
	}
	else
	{
		__wcstr_getman(&man, capacity);
		WCHAR_TYPE* _alloc = (WCHAR_TYPE*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		*p = __wcstr_set_header(_alloc, &man);
		if (src)
			memcpy(_alloc, src, capacity * sizeof(WCHAR_TYPE));
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
	__wcstr_getman(&man, __wcstr_relsiz(*p));
	if (man.nofbuf == __wcstr_nofbuf(*p))
		return;
	if (otype == man.type)
	{
		wcstr_t _alloc = (wcstr_t) CSTR_REALLOC(*p, man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		*p = (void*)_alloc + sizeof(struct head0);
		return;
	}
	else
	{
		wcstr_t _alloc = (wcstr_t) CSTR_REALLOC(*p, man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		__wcstr_set_header(_alloc, &man);
		*p = (void*)_alloc + sizeof(struct head0);
		return;
	}
}

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
__attribute__((pure, always_inline))
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
__attribute__((pure, always_inline))
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
__attribute__((const, always_inline))
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
__attribute__((pure, always_inline))
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
__attribute__((const, always_inline))
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
__attribute__((const, always_inline))
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
__attribute__((const, always_inline))
inline wcstr_lower __wcstr_datbuf(enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0: return T0_BUFFER;
		case WCSTR_TYPE_1: return T1_BUFFER;
		case WCSTR_TYPE_2: return T2_BUFFER;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3: return T3_BUFFER;
#endif
		default: __cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
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
__attribute__((const, always_inline))
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
#endif
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

#define m_wcstr_set_nofbuf(p, val) m_wcstr_setmeta(p, val, nofbuf)

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
__attribute__((const, always_inline))
inline size_t __wcstr_mask(enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0: return T0_BUFFER_MASK;
		case WCSTR_TYPE_1: return T1_BUFFER_MASK;
		case WCSTR_TYPE_2: return T2_BUFFER_MASK;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3: return T3_MASK;
#endif
		default: __cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
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
inline void __wcstr_getman_wh(struct alloc_man* man, header_cnt *head)
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
 * __wcstr_getman_app_wh - get alloc_man from a header appended a number of bytes
 * @man:	&alloc_man
 * @head:	header
 * @size:	size to append
 *
 */
__attribute__((always_inline))
inline void __wcstr_getman_app_wh(struct alloc_man *man, header_cnt *head, size_t app)
{
	__cstr_getman(man, head->relsiz + app);
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
__attribute__((const, always_inline))
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
__attribute__((const, always_inline))
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
__attribute__((const, always_inline))
inline wcstr_lower __wcstr_nof_buffer(size_t nbytes, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0: return (nbytes >> T0_BUFFER_MASK) + 1;
		case WCSTR_TYPE_1: return (nbytes >> T1_BUFFER_MASK) + 1;
		case WCSTR_TYPE_2: return (nbytes >> T2_BUFFER_MASK) + 1;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3: return (nbytes >> T3_MASK) + 1;
#endif
		default: __cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

__attribute__((const, always_inline))
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
	__wcstr_getman_wp(&man, p);
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

/**
 * wcstr_room - Room free to write
 * @p:	string
 *
 * Return number of bytes still free to write
 * This is to serve extra-fast writing
 */
__attribute__((always_inline))
inline size_t wcstr_room(const wcstr_const_t p)
{
	struct head0 head = *((struct head0*)p - 1);
	return (head.nofbuf << __wcstr_mask(__wcstr_from_flag(head.flag))) - head.relsiz;	// Would it be better that we store remain bytes instead of occupied bytes
}

/**
 * wcstr_alloc_space - Space allocated
 * @p:	string
 *
 * Return number of bytes allocated and safe to write
 */
__attribute__((always_inline))
inline size_t wcstr_alloc_space(const wcstr_const_t p)
{
	struct head0 head = *((struct head0*)p - 1);
	return head.nofbuf << __wcstr_mask(__wcstr_from_flag(head.flag));
}

/**
 * wcstr_write0_fast -  Write fast at abitrary position
 * @p:		string
 * @src:	data source
 * @size:	size to write
 * @pos:	write position
 *
 * Write at abitrary position without size checking overhead.
 * The user held respobility for size checking
 */
__attribute__((always_inline))
inline void wcstr_write0_fast(wcstr_t p , void* src, size_t size, size_t pos)
{
	memcpy(p + pos, src, size);
	struct head0 *pc = (struct head0*)p;
	--pc;
	pc->relsiz += size;
}

/**
 * wcstr_grow0_fast - Growing fast
 * @p:		string
 * @src:	data source
 * @size:	size to write
 *
 * Write at the end of string without size checking overhead
 */
inline void wcstr_grow0_fast(wcstr_t p, void* src, size_t size)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	memcpy(p + pc->relsiz, src, size);
	pc->relsiz += size;
}

/**
 * wcstr_blankw_fast - Fill blank space fast
 * @p:		string
 * @size:	size to fill
 * @pos:	position
 *
 * Fill @size bytes of blank space at @pos position
 */
inline void wcstr_blankw_fast(wcstr_t p, size_t size, size_t pos)
{
	memset(p + pos, '\0', size);
	struct head0 *pc = (struct head0*)p;
	--pc;
	pc->relsiz += size;
}

/**
 * wcstr_blank_fast - Grow blank spaces fast
 * @p:		string
 * @size:	size to fill
 * 
 * Grow @size bytes of blank spaces at the end of string
 */
inline void wcstr_blank_fast(wcstr_t p, size_t size)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	memset(p + pc->relsiz, '\0', size);
	pc->relsiz += size;
}

/**
 * wcstr_blank - Grow blank spaces
 * @p:		pointer to &cstr_t string
 * @size:	size to grow
 *
 * Grow @size bytes of blank spaces at the end of string
 */
void wcstr_blank(wcstr_t *p, size_t size)
{
	struct head0* pc = (struct head0*)(*p);
	--pc;
	struct alloc_man man;
	__wcstr_getman_app_wh(&man, pc, size);
	if (((man.type == __wcstr_from_flag(pc->flag)) && (man.nofbuf > pc->nofbuf)) || (man.type > __wcstr_from_flag(pc->flag)))
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(pc, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		memset(_alloc + sizeof(struct head0) + pc->relsiz, '\0', size);
		*p = (wcstr_t) __wcstr_set_header(_alloc, &man);
		return;
	}
	else	/* No allocation needed */
	{
		memset(*p + pc->relsiz,  '\0', size);
		return;
	}
}

/**
 * wcstr_grow0 - Grow with copied data
 * @p:		pointer to &cstr_t string
 * @src:	data source
 * @size:	data size
 *
 * Append @size bytes of @src
 */
void wcstr_grow0(wcstr_t *p, void* src, size_t size)
{
	struct head0 *pc = (struct head0*)(*p);
	--pc;
	struct alloc_man man;
	__wcstr_getman_app_wh(&man, pc, size);
	if (((man.type == __wcstr_from_flag(pc->flag)) && (man.nofbuf > pc->nofbuf)) || (man.type > __wcstr_from_flag(pc->flag)))
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(pc, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		memcpy(_alloc + sizeof(struct head0) + pc->relsiz, src, size);
		*p = (wcstr_t) __wcstr_set_header(_alloc, &man);
		return;
	}
	else
	{
		memcpy(*p + pc->relsiz, src, size);
		return;
	}
}

/**
 * wcstr_grow_block - Growing by blocks
 * @p:		pointer to &cstr_t string
 * @nofblk:	number of blocks to grow
 * 
 * Grow @size blocks
 * If @size exceed the blocks limit of a type, only add 1 blocks of the higher type. If @size exceed the block limit of the highest type, allocate the maximum number of memory availble
 */
void wcstr_grow_block(wcstr_t *p, size_t nofbuf)
{
	struct head0 *pc = (struct head0*)(*p);
	--pc;
	struct head0 tmp = *pc;
	size_t man_nofbuf = nofbuf + tmp.nofbuf;
	if (man_nofbuf > __wcstr_max_buffer(__wcstr_from_flag(pc->flag))) /* type changing */
	{
		if (__wcstr_from_flag(pc->flag) != WCSTR_TYPE_MAX) /* not largest type */
		{
			enum wcstr_tt new_type = __wcstr_from_flag(pc->flag) + 1;
			size_t new_nofbuf = 1 + 
				(man_nofbuf >> __wcstr_buffer_align_mask(new_type));
			size_t new_nofblk = new_nofbuf << __wcstr_mask(new_type);
			uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, new_nofblk * sizeof(char));
			if (!_alloc)
				__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
			pc = (struct head0*)_alloc;

			pc->nofbuf = new_nofbuf;
			pc->flag = __cstr_toflag(new_type);
			
			_alloc[new_nofblk - 1] = '\0';
			
			++pc;
			*p = (wcstr_t)pc;
			return;
		}
		else /* Allocate largest space possible */
			__cstr_alloc_max(p);
	}
	else /* type not changed */
	{
		size_t new_nofblk = man_nofbuf <<  __wcstr_mask(
				__wcstr_from_flag(pc->flag));
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, new_nofblk * sizeof(char));
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		pc = (struct head0*)_alloc;
		
		pc->relsiz = tmp.relsiz;
		pc->nofbuf = man_nofbuf;
		pc->flag = tmp.flag;

		_alloc[new_nofblk - 1] = '\0';

		++pc;
		*p = (wcstr_t)pc;
		return;
	}
}

inline size_t __cstr_max_buffer(enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0: return T0_MAX_BUFFER;
		case WCSTR_TYPE_1: return T1_MAX_BUFFER;
		case WCSTR_TYPE_2: return T2_MAX_BUFFER;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3: return T3_MAX_BUFFER;
#endif
		default: __cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

inline size_t __cstr_buffer_align_mask(enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0: return 0;
		case WCSTR_TYPE_1: return T1_BUFFER_ALIGN_MASK;
		case WCSTR_TYPE_2: return T2_BUFFER_ALIGN_MASK;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3: return T3_BUFFER_ALIGN_MASK;
#endif
		default: __cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);

	}
}

inline void __cstr_alloc_max(wcstr_t *p)
{
	struct head0 *pc = (struct head0*)(*p);
	--pc;
	
	uint8_t *_alloc = (uint8_t*) CSTR_REALLOC(pc, WCSTR_MAX_SIZE);
	if (!_alloc)
		__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
	pc = (struct head0*)_alloc;
	pc->nofbuf = WCSTR_MAXTYPE_MAX_BUFFER;
	pc->flag = __wcstr_toflag(WCSTR_TYPE_MAX);

	_alloc[WCSTR_MAX_SIZE - 1] = '\0';
	++pc;
	*p = (wcstr_t)pc;
}

extern void cstr_exp_grow(wcstr_t *p)
{
	struct head0 *pc = (struct head0*)(*p);
	--pc;

	size_t man_nofbuf = pc->nofbuf * 2;
	if (man_nofbuf > __wcstr_max_buffer(__wcstr_from_flag(pc->flag)))
	{
		if (__cwstr_from_flag(pc->flag) != WCSTR_TYPE_MAX) /* not largest type */
		{
			enum wcstr_tt new_type = __wcstr_from_flag(pc->flag) + 1;
			size_t new_nofbuf = 1 + 
				(man_nofbuf >> __wcstr_buffer_align_mask(new_type));
			size_t new_nofblk = new_nofbuf << __wcstr_mask(new_type);
			uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, new_nofblk * sizeof(char));
			if (!_alloc)
				__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
			pc = (struct head0*)_alloc;

			pc->nofbuf = new_nofbuf;
			pc->flag = __wcstr_toflag(new_type);
			
			_alloc[new_nofblk - 1] = '\0';
			
			++pc;
			*p = (wcstr_t)pc;
			return;
		}
		else /* Allocate largest space possible */
			__cstr_alloc_max(p);
	}
}

/**
 * cstr_make_room - Allocate space
 * @p:		string
 * @size:	size to make
 *
 */
inline void cstr_make_room(wcstr_t *p, size_t size)
{
	struct alloc_man man_0;
	__wcstr_getman(&man_0, size);

	struct head0 *pc = (struct head0*)p;
	--pc;

	struct alloc_man man_1;
	__wcstr_getman_wh(&man_1, pc);

	if (man_1.nofblk > man_0.nofblk)
	{
		uint8_t *_alloc = (uint8_t*) CSTR_REALLOC(*p, man_1.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		
		pc = (struct head0*)_alloc;
		pc->flag = __wcstr_toflag(man_1.type);
		pc->nofbuf = man_1.nofbuf;

		_alloc[man_1.nofblk - 1] = '\0';

		++pc;
		*p = (wcstr_t)pc;
	}
}


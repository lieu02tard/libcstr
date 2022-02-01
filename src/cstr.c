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


#include "cstr.h"
#include "config.h"

#include "cstr_dbg.h"

#include <stdlib.h>
#include <string.h>
#include <errno.h>

/* -----------Inner function------------*/

/**
 * __cstr_type - Return type of a &cstr_t string
 * @p:		String
 *
 * Return type of string
 */
__attribute__((always_inline))
inline enum cstr_tt __cstr_type(const cstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	return pc->flag & __CSTR_TYPE_MASK;
}

/**
 * macro equivalent of __cstr_type
 */
#define m_cstr_type(p) ({ \
		struct head0 *__p = (struct head0*)p; \
		--pc; pc->flag & __CSTR_TYPE_MASK;})

/**
 * __cstr_head - return head position
 * @p:		string
 *
 * Return the position that is allocate for string @p
 */
__attribute__((always_inline))
inline void* __cstr_head(const cstr_const_t p)
{
	return (void*)p - sizeof(struct head0);
}
#define m_cstr_head(p, type) ((void*)p - sizeof(struct head0))

/**
 * __cstr_type_wn - return type (with number)
 * @n:		size of string
 *
 * Return type of string that @n characters fit in
 */
__attribute__((always_inline))
inline enum cstr_tt __cstr_type_wn(size_t n)
{
#ifdef HAVE_64_BITS
	return (n <= T0_MAX) ? CSTR_TYPE_0 : 
		((n <= T1_MAX) ? CSTR_TYPE_1 :
		((n <= T2_MAX) ? CSTR_TYPE_2 : 
		((n <= T3_MAX) ? CSTR_TYPE_3 : CSTR_TYPE_INVALID)));
#else
	return (n <= T0_MAX) ? CSTR_TYPE_0 :
		(n <= T1_MAX) ? CSTR_TYPE_1 :
		(n <= T2_MAX) ? CSTR_TYPE_2 : CSTR_TYPE_INVALID;
#endif
}

/**
 * __cstr_nofbuf - get nofbuf metadata
 * @p:		string
 * @type:	type of string
 *
 * Return nofbuf metadata
 */
__attribute__((always_inline))
inline cstr_lower __cstr_nofbuf(const cstr_const_t p)
{
	/* gcc should be able to optiomize away these lines */
	struct head0 *pc = (struct head0*)p;
	--pc;
	return pc->nofbuf;
}

#define m_cstr_getmeta(p, member) ({ \
		struct head0 *pc = (struct head0*)p; \
		--pc; return pc->member	})

#define m_cstr_nofbuf(p) m_cstr_getmeta(p, nofbuf)

/**
 * __cstr_relsiz - get relsiz metadata
 * @p:		string
 * @type:	type of string
 *
 * return relsiz metadata
 */
__attribute__((always_inline))
inline cstr_wrapper __cstr_relsiz(const cstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	return pc->relsiz;
}

#define m_cstr_relsiz(p, type) m_cstr_getmeta(p, relsiz)

/**
 * __cstr_flag - get flag
 * @p:		string
 * @type:	type of string
 *
 * return flag metadata
 */
__attribute__((always_inline))
inline cstr_lower __cstr_flag(const cstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	return pc->flag;
}

#define m_cstr_flag(p, type) m_cstr_getmeta(p, flag)

/**
 * __cstr_datbuf - get data buffer (of type)
 * @type:		type
 *
 * return buffer size of a certain type
 */
__attribute__((always_inline))
inline cstr_lower __cstr_datbuf(enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			return T0_BUFFER;
		case CSTR_TYPE_1:
			return T1_BUFFER;
		case CSTR_TYPE_2:
			return T2_BUFFER;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			return T3_BUFFER;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
#if 0
	/* Lookup table implementation */
#ifdef HAVE_64_BITS
	static const cstr_lower __return[4] =
	{T0_BUFFER, T1_BUFFER, T2_BUFFER, T3_BUFFER};
#else
	static const cstr_lower __return[3] =
	{T0_BUFFER, T1_BUFFER, T2_BUFFER};
#endif
	return __return[type];
#endif
}

#ifdef HAVE_64_BITS
#define m_cstr_datbuf(type) \
	((type == CSTR_TYPE_0) ? T0_BUFFER :	\
	 (type == CSTR_TYPE_1) ? T1_BUFFER :	\
	 (type == CSTR_TYPE_2) ? T2_BUFFER :	\
	 (type == CSTR_TYPE_3) ? T3_BUFFER : 0)
#else /* 32 bits system */
#define m_cstr_datbuf(type) \
	((type == CSTR_TYPE_0) ? T0_BUFFER :	\
	 (type == CSTR_TYPE_1) ? T1_BUFFER :	\
	 (type == CSTR_TYPE_2) ? T2_BUFFER : 0)
#endif

/**
 * __cstr_datbuf_wn - get data buffer (of number)
 * @nbytes:		size
 *
 * return buffer size of certain string size
 */
__attribute__((always_inline))
inline cstr_lower __cstr_datbuf_wn(size_t nbytes)
{
#ifdef HAVE_64_BITS
	return (nbytes <= T0_MAX) ? T0_BUFFER :
		(nbytes <= T1_MAX) ? T1_BUFFER :
		(nbytes <= T2_MAX) ? T2_BUFFER :
		(nbytes <= T3_MAX) ? T3_BUFFER : CSTR_TYPE_INVALID;
#else
	return (nbytes <= T0_MAX) ? T0_BUFFER :
		(nbytes <= T1_MAX) ? T1_BUFFER :
		(nbytes <= T2_MAX) ? T2_BUFFER : CSTR_TYPE_INVALID;
#endif
}

/**
 * __cstr_set_nofbuf - set nofbuf metadata
 * @p:			string
 * @val:		value to set
 * @type:		type of string
 *
 * set nofbuf metadata
 */
__attribute__((always_inline))
inline void __cstr_set_nofbuf(const cstr_const_t p, cstr_lower val)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	pc->nofbuf = val;
}

#define m_cstr_setmeta(p, val, member)	\
	do { struct head0 *pc = p;	\
		--pc; pc->member = val; } while(0)

#define m_cstr_set_nofbuf(p, val) m_cstr_setmeta(p, val, nofbuf)
/**
 * __cstr_set_relsiz - set relsiz metadata
 * @p:			string
 * @val:		value to set
 * @type:		type of string
 *
 * set relsiz metadata
 */
__attribute__((always_inline))
inline void __cstr_set_relsiz(const cstr_const_t p, cstr_wrapper val)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	pc->relsiz = val;
}

#define m_cstr_set_relsiz(p, val) m_cstr_setmeta(p, val, relsiz)

/**
 * __cstr_header - get header of string
 * @head:	pointer to header
 * @p:		string
 *
 * get &header_cnt header of a string
 */
__attribute__((always_inline))
inline void __cstr_header(header_cnt* head, const cstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	*head = *pc;
}

/**
 * m_cstr_header_from - get header of string
 * @head:	header (NOT pointer)
 * @p:		string
 *
 * get &header_cnt header of a string
 */
#define m_cstr_header_from(head, p) do \
{	struct head0 *pc = (struct head0*)p;	\
	--p; head = *pc; } while(0)

/**
 * __cstr_mask - Get bit shift pattern
 *
 * Get bit shift pattern (or logarithm base 2 of data buffer) for type
 */
__attribute__((always_inline))
inline size_t __cstr_mask(enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			return T0_MASK;
		case CSTR_TYPE_1:
			return T1_MASK;
		case CSTR_TYPE_2:
			return T2_MASK;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			return T3_MASK;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

/**
 * __cstr_getman - Get alloc_man from size
 * @man:		pointer to &alloc_man
 * @nbytes:		size
 *
 * Get alloc_man for string of size @nbytes
 */
__attribute__((always_inline))
inline void __cstr_getman(struct alloc_man* man, size_t nbytes)
{
	enum cstr_tt type = __cstr_type_wn(nbytes);
	man->relsiz = nbytes;
	man->type = type;
	man->nofbuf	= __cstr_nof_buffer(nbytes, type);
	man->nofblk	= man->nofbuf << __cstr_mask(type); // Number of bytes to allocate should be multiplier of a power of 2 (datbuf)
}

#define m_cstr_getman(man, nbytes) do \
{	enum cstr_tt type = __cstr_type_wn(nbytes);	\
	man.relsiz = nbytes;	\
	man.type = type;	\
	man.nofbuf = __cstr_nof_buffer(nbytes, type);	\
	man.nofblk = man.nofbuf << __cstr_mask(type);}

/**
 * __cstr_getman_wp - Get alloc_man from a string
 * @man:		pinter to &alloc_man
 * @p:			string
 * @type:		string type
 *
 * Get allocation manual for a string
 */
__attribute__((always_inline))
inline void __cstr_getman_wp(struct alloc_man *man, const cstr_const_t p)
{
	struct head0 *pc = (struct head0*)p;
	--pc;

	man->relsiz = pc->relsiz;
	man->nofbuf = pc->nofbuf;
	man->type = __cstr_from_flag(pc->flag);
	man->nofblk	= man->nofbuf << __cstr_mask(man->type);
}

#define m_cstr_getman_wp(man, p) do \
{	head##type *tmp = (struct head0*)p;	\
	--tmp;					\
	man.relsiz = tmp->relsiz;		\
	man.nofbuf = tmp->nofbuf;		\
	man.type = __cstr_from_flag(pc->flag);	\
	man.nofblk = man.noblk << __cstr_mask(man->type); } while(0)

/**
 * __cstr_getman_wh - get alloc_man from a header
 * @head:		header
 * @type:		header type
 *
 * get allocation manual for a header
 */

__attribute__((always_inline))
inline void __cstr_getman_wh(struct alloc_man *man, header_cnt *head)
{
	man->relsiz	= head->relsiz;
	man->nofbuf	= head->nofbuf;
	man->type	= __cstr_from_flag(head->flag);
	man->nofblk	= man->nofbuf << __cstr_mask(man->type);
}

#define m_cstr_getman_wh(man, head, type) do \
{	man.relsiz = head.relsiz;	\
	man.nofbuf = head.nofbuf;	\
	man.type = __cstr_from_flag(head->flag)	\
	man.nofblk = man.nofbuf << __cstr_mask(man->type); } while(0)

/**
 * __cstr_set_header - set header
 * @p:			header position
 * @man:		pointer to &alloc_man to allocate
 * @type:		type of string
 *
 * set header at position @p to @man's content
 */
__attribute__((always_inline))
inline void* __cstr_set_header(void* p , struct alloc_man* man)
{
	struct head0 *pc = (struct head0*)p;
	
	pc->nofbuf	= man->nofbuf;
	pc->relsiz	= man->relsiz;
	pc->flag	= __cstr_toflag(man->type);
	
	++pc;
	return pc;
}

#define m_cstr_set_header(p, man, type)	\
({ struct head0 *tmp = (struct head0*)p;	\
	tmp->nofbuf = man.nofbuf;		\
	tmp->relsiz = man.relsiz;		\
	tmp->flag = __cstr_toflag(man.type);	\
	++pc; })


/**
 * __cstr_set_header_wh - set header from &header_cnt struct
 * @p:		header position
 * @head:	header struct
 * @type:	header type
 *
 * set header at position @p to @head's content
 */
__attribute__((always_inline))
inline void* __cstr_set_header_wh(void* p, header_cnt* head)
{
	struct head0 *pc = (struct head0*)p;
	*pc = *head;
	++pc;
	return pc;
}


/**
 * __cstr_toflag - convert type to flag
 * @type:		type
 *
 * Convert @type to useable flag in a header
 * 
 */
inline cstr_lower __cstr_toflag(enum cstr_tt type)
{
	// Flag hasn't been used for anything except type
	return type;
}


/**
 * __cstr_from_flag - convert flag to type
 * @flag:		flag
 *
 * Convert raw @flag to type
 */
__attribute__((always_inline))
inline enum cstr_tt __cstr_from_flag(cstr_lower flag)
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
__attribute__((always_inline))
inline cstr_lower __cstr_nof_buffer(size_t nbytes, enum cstr_tt type)
{
	size_t n = nbytes + sizeof(struct head0);
	switch (type)
	{
		case CSTR_TYPE_0:
			return (n >> T0_MASK) + 1;
		case CSTR_TYPE_1:
			return (n >> T1_MASK) + 1;
		case CSTR_TYPE_2:
			return (n >> T2_MASK) + 1;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			return (n >> T3_MASK) + 1;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}
#define m_cstr_nof_buffer(nbytes, type) ((nbytes >> T0_MASK) + 1)

__attribute__((always_inline))
inline cstr_lower __cstr_nof_buffer_alone(size_t nbytes)
{
	return __cstr_nof_buffer(nbytes, __cstr_type_wn(nbytes));
}

/* ----------- API functions ------------------ */
inline size_t cstr_buf(const cstr_const_t p)
{
	return __cstr_nofbuf(p);
}

inline size_t cstr_len(const cstr_const_t p)
{
	return __cstr_relsiz(p);
}

inline size_t cstr_rmn(const cstr_const_t p)
{
	enum cstr_tt type = __cstr_type(p);
	return __cstr_nofbuf(p) * __cstr_datbuf(type) - __cstr_relsiz(p);
}


inline void cstr_free(cstr_t p)
{
	CSTR_FREE(__cstr_head(p));
}

__attribute__((warn_unused_result))
cstr_t ncstr_mt()
{
	struct alloc_man man;
	__cstr_getman(&man, 1);
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		__cstr_set_header(_alloc, &man);
		_alloc[man.nofblk - 1] = '\0';
		return (char*)_alloc + sizeof(struct head0);
	}
	else 
		__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
}

__attribute__((warn_unused_result))
cstr_t ncstr_new(size_t nbytes)
{
	struct alloc_man man;
	__cstr_getman(&man, nbytes);
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		cstr_t _return = (cstr_t)__cstr_set_header(_alloc, &man);
		_alloc[man.nofblk - 1] = '\0';
		return _return;
	}
	else
		__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
}

__attribute__((warn_unused_result))
cstr_t ncstr_from(const char* s)
{
	cstr_wrapper len = strnlen(s, BUFSIZ);
	struct alloc_man man;
	__cstr_getman(&man, len);
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		cstr_t _return = (cstr_t)__cstr_set_header(_alloc, &man);
		memcpy(_return, s, len);
		_alloc[man.nofblk - 1] = '\0';
		return _return;
	}
	else
		__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
}

__attribute__((warn_unused_result))
cstr_t ncstrcpy(cstr_t p)
{
	struct alloc_man man;
	__cstr_getman_wp(&man, p);
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		memcpy(_alloc, __cstr_head(p), man.nofblk);
		return (char*)_alloc + sizeof(struct head0);
	}
	else
		__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
}

__attribute__((warn_unused_result))
cstr_t ncstrdup(cstr_t* p)
{
	cstr_t _return = *p;
	*p = NULL;
	return _return;
}

void __cstr_make_room(cstr_t* p, const char* src, size_t capacity)
{
	
}
/**
 * __cstr_resize_from - Resize and move string
 * @p:		Pointer to &cstr_t string
 * @src:	Source string
 * @capacity: Length to move
 * @create:	Whether to create a new string if *@p is NULL
 *
 * Resize @*p to a @capacity. If @src is not NULL, then copy @capacity characters from @src to @*p
 * *@p might be changed with realloc()
 */
void __cstr_resize_from(cstr_t* p, const char* src, size_t capacity, int create)
{
	if (!p)
		return;
	if (*p == NULL && create)
	{
		struct alloc_man man;
		__cstr_getman(&man, capacity);
		uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		*p = __cstr_set_header(_alloc, &man);
		if (src)
			memcpy(*p, src, capacity);
		_alloc[man.nofblk - 1] = '\0';
		return;
	}
	else if (*p == NULL)
		return;

	struct alloc_man man;
	__cstr_getman_wp(&man, *p);

	enum cstr_tt cap_type = __cstr_type_wn(capacity);
	cstr_lower real_buf = __cstr_nof_buffer(capacity, cap_type);

	if ((real_buf <= man.nofbuf) && (cap_type == man.type))	// Do not allocate when memory required is less than allocated
	{
		if (src)
			memcpy(*p - sizeof(struct head0), src, capacity);
		(*p)[capacity - 1] = '\0';
		return;
	}
	else
	{
		__cstr_getman(&man, capacity);
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		*p = __cstr_set_header(_alloc, &man);
		if (src)
			memcpy(_alloc, src, capacity);
		_alloc[man.nofblk - 1] = '\0';
		return;
	}
}

void cstr_resize(cstr_t *p, size_t capacity)
{
	__cstr_resize_from(p, NULL, capacity, 0);
}

void cstr_trim(cstr_t* p)
{
	if (!p)
		return;
	enum cstr_tt otype = __cstr_type(*p);
	struct alloc_man man;
	__cstr_getman(&man, __cstr_relsiz(*p));
	if (man.nofbuf == __cstr_nofbuf(*p))
		return;
	if (otype == man.type)
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		*p = (char*)_alloc + sizeof(struct head0);
		return;
	}
	else
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		__cstr_set_header(_alloc, &man);
		*p = (char*)_alloc + sizeof(struct head0);
		return;
	}
}

#ifdef __get_write_enum
/**
 * __cstr_write - Write a string to abitrary position in a string
 * @p:		pointer to &cstr_t
 * @src:	source string
 * @cap:	length to write
 * @pos:	write position
 * @mode:	write mode
 *
 * Write @cap of @src string into @p. The position it write into is determine as follow:
 * 
 * Write @cap of @src's character into @p at position @pos.
 * If @mode contain WRITE_ERASE, erase all content from the end of newly-inserted string until the end of character array
 * If @mode contain WRITE_NULLP, erase all content except the newly-inserted string
 * 
 * If @pos is negative, count from the end so that -1 denote the last position.
 * If @mode contain WRITE_APPEND, the last position denote the terminate '\0' or that denote by relsiz metadata.
 * Otherwise, the last position denote the last position in entire string allocated. If @mode doesn't contain WRITE_APPEND, it is obvious that new memory will be allocated
 */

#endif

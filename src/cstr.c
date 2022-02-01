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
#include <endian.h>

#if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
	#define __CSTR_LITTLE_ENDIAN
#else
	#define __CSTR_BIG_ENDIAN
#endif

#define HEADER_TYPE(n) struct head##n

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
	return *((uint8_t*)(p) - 1) & __CSTR_TYPE_MASK;
}

/**
 * macro equivalent of __cstr_type
 */
#define m_cstr_type(p) (*((uint8_t*)(p) - 1) & __CSTR_TYPE_MASK)

/**
 * __cstr_head - return head position
 * @p:		string
 * @type:	type
 *
 * Return the position that is allocate for string @p
 */
__attribute__((always_inline))
inline void* __cstr_head(const cstr_const_t p , enum cstr_tt type)
{
	return (void*)p - __cstr_datoff(type);
}
#define m_cstr_head(p, type) ((void*)p - __cstr_datoff(type))

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
#define m_cstr_type_wn(n) ((n <= T0_MAX) ? CSTR_TYPE_0 :\
				((n <= T1_MAX) ? CSTR_TYPE_1:\
				((n <= T2_MAX) ? CSTR_TYPE_2:\
				((n <= T3_MAX) ? CSTR_TYPE_3: CSTR_TYPE_INVALID))))

/**
 * __cstr_nofbuf - get nofbuf metadata
 * @p:		string
 * @type:	type of string
 *
 * Return nofbuf metadata
 */
__attribute__((always_inline))
inline cstr_lower __cstr_nofbuf(const cstr_const_t p, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			return ((HEADER_TYPE(0)*)p - 1)->nofbuf;
		case CSTR_TYPE_1:
			return ((HEADER_TYPE(1)*)p - 1)->nofbuf;
		case CSTR_TYPE_2:
			return ((HEADER_TYPE(2)*)p - 1)->nofbuf;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			return ((HEADER_TYPE(3)*)p - 1)->nofbuf;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

#define m_cstr_nofbuf(p, type) (((struct head##type*)p - 1)->nofbuf)

/**
 * __cstr_relsiz - get relsiz metadata
 * @p:		string
 * @type:	type of string
 *
 * return relsiz metadata
 */
__attribute__((always_inline))
inline cstr_wrapper __cstr_relsiz(const cstr_const_t p, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			return ((HEADER_TYPE(0)*)p - 1)->relsiz;
		case CSTR_TYPE_1:
			return ((HEADER_TYPE(1)*)p - 1)->relsiz;
		case CSTR_TYPE_2:
			return ((HEADER_TYPE(2)*)p - 1)->relsiz;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			return ((HEADER_TYPE(3)*)p - 1)->relsiz;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

#define m_cstr_relsiz(p, type) (((struct head##type*)p - 1)->nofbuf)
/**
 * __cstr_flag - get flag
 * @p:		string
 * @type:	type of string
 *
 * return flag metadata
 */
__attribute__((always_inline))
inline cstr_lower __cstr_flag(const cstr_const_t p, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			return ((HEADER_TYPE(0)*)p - 1)->flag;
		case CSTR_TYPE_1:
			return ((HEADER_TYPE(1)*)p - 1)->flag;
		case CSTR_TYPE_2:
			return ((HEADER_TYPE(2)*)p - 1)->flag;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			return ((HEADER_TYPE(3)*)p - 1)->flag;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}

#define m_cstr_flag(p, type) (((struct head##type*)p - 1)->flag)

/**
 * __cstr_datoff - get data offset (of type)
 * @type:	type
 *
 * return data offset (or the size of header/metadata) of certain type
 */
__attribute__((always_inline))
inline cstr_lower __cstr_datoff(enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			return sizeof(HEADER_TYPE(0));
		case CSTR_TYPE_1:
			return sizeof(HEADER_TYPE(1));
		case CSTR_TYPE_2:
			return sizeof(HEADER_TYPE(2));
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			return sizeof(HEADER_TYPE(3));
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}

}

/* Alternative version of __cstr_datoff */
__attribute__((always_inline))
inline cstr_lower __cstr_datoff_alt(enum cstr_tt type)
{
#ifndef HAVE_64_BITS
	static const size_t size[3] = {sizeof(HEADER_TYPE(0)), sizeof(HEADER_TYPE(1)), sizeof(HEADER_TYPE(2))};
	return size[type - 1];
#else /* 32 bits system */
	static const size_t size[4] = {sizeof(HEADER_TYPE(0)), sizeof(HEADER_TYPE(1)), sizeof(HEADER_TYPE(2)), sizeof(HEADER_TYPE(3))};
	return size[type - 1];
#endif
}

#define m_cstr_datoff(type) sizeof(struct head##type)

/**
 * __cstr_datoff_wn - get data offsert (of number)
 * @nbytes:		size
 *
 * return data offsert of the string that fit @nbytes of characters
 */

__attribute__((always_inline))
inline cstr_lower __cstr_datoff_wn(size_t nbytes)
{
	return __cstr_datoff(__cstr_type_wn(nbytes));
}

#define m_cstr_datoff_wn(nbytes) __cstr_datoff(__cstr_type_wn(nbytes));

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
}


/**
 * __cstr_datbuf_wn - get data buffer (of number)
 * @nbytes:		size
 *
 * return buffer size of certain string size
 */
__attribute__((always_inline))
inline cstr_lower __cstr_datbuf_wn(size_t nbytes)
{
	return __cstr_datbuf(__cstr_type_wn(nbytes));
}

#define m_cstr_datbuf_wn(nbytes) __cstr_datbuf(__cstr_type_wn(nbytes))

/**
 * __cstr_set_nofbuf - set nofbuf metadata
 * @p:			string
 * @val:		value to set
 * @type:		type of string
 *
 * set nofbuf metadata
 */
__attribute__((always_inline))
inline void __cstr_set_nofbuf(const cstr_const_t p, cstr_lower val, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			((HEADER_TYPE(0)*)p - 1)->nofbuf = val;
			return;
		case CSTR_TYPE_1:
			((HEADER_TYPE(1)*)p - 1)->nofbuf = val;
			return;
		case CSTR_TYPE_2:
			((HEADER_TYPE(2)*)p - 1)->nofbuf = val;
			return;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			((HEADER_TYPE(3)*)p - 1)->nofbuf = val;
			return;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
			return;
	}
}

/**
 * m_cstr_setmeta - Set metadata
 * @p:		string
 * @val:	value to set
 * @type:	type of string
 * @member:	type of value to set
 */
#define m_cstr_setmeta(p, val, type, member) do {((head##type*)p - 1)->member = val} while(0)

#define m_cstr_set_nofbuf(p, val, type) m_cstr_setmeta(p, val, type, nofbuf)
/**
 * __cstr_set_relsiz - set relsiz metadata
 * @p:			string
 * @val:		value to set
 * @type:		type of string
 *
 * set relsiz metadata
 */
__attribute__((always_inline))
inline void __cstr_set_relsiz(const cstr_const_t p, cstr_wrapper val, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			((HEADER_TYPE(0)*)p - 1)->relsiz = val;
			return;
		case CSTR_TYPE_1:
			((HEADER_TYPE(1)*)p - 1)->relsiz = val;
			return;
		case CSTR_TYPE_2:
			((HEADER_TYPE(2)*)p - 1)->relsiz = val;
			return;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			((HEADER_TYPE(3)*)p - 1)->relsiz = val;
			return;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
			return;
	}
}

#define m_cstr_set_relsiz(p, val, type) m_cstr_setmeta(p, val, type, relsiz)

/**
 * __cstr_header - get header of string
 * @p:		string
 * @type:	type of string
 *
 * get &header_cnt header of a string
 */
__attribute__((always_inline))
inline void __cstr_header(header_cnt* head, const cstr_const_t p, enum cstr_tt type)
{
	__cstr_header_from(head, __cstr_head(p, type), type);
}

/**
 * __cstr_header_from - get header from certain memory pointer
 * @p:		pointer to the header memory
 * @type:	type of header/string
 *
 * get &header_cnt encapsulate from certain memory location
 */
__attribute__((always_inline))
inline void __cstr_header_from(header_cnt* head, void* p, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			while(0){}	// Some C grammar require a Label must be followed by an expression, not a declaration. The compiler should be able to optiomize out this
			HEADER_TYPE(0) *tmp1 = (HEADER_TYPE(0)*)p;
			head->nofbuf = tmp1->nofbuf;
			head->relsiz = tmp1->relsiz;
			head->flag = tmp1->flag;
		case CSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp2 = (HEADER_TYPE(1)*)p;
			head->nofbuf = tmp2->nofbuf;
			head->relsiz = tmp2->relsiz;
			head->flag = tmp2->flag;
		case CSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp3 = (HEADER_TYPE(2)*)p;
			head->nofbuf = tmp3->nofbuf;
			head->relsiz = tmp3->relsiz;
			head->flag	= tmp3->flag;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp4 = (HEADER_TYPE(3)*)p;
			head->nofbuf = tmp4->nofbuf;
			head->relsiz = tmp4->relsiz;
			head->flag	= tmp4->flag;
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
	}
}
#define m_cstr_header_from(head, p, type) do \
{	head##type tmp = head##type(p);	\
	head.nofbuf = tmp->nofbuf;	\
	head.relsiz = tmp->relsiz;	\
	head.flag = tmp->flag;		} while (0)

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
	man->flag = __cstr_toflag(type);
	man->datoff = __cstr_datoff(type);
	man->type = type;
	man->nofbuf	= __cstr_nof_buffer(nbytes, type);
	man->nofblk	= __cstr_datbuf(type) * man->nofbuf + man->datoff;
}

#define m_cstr_getman(man, nbytes) do \
{	enum cstr_tt __type = __cstr_type_wn(nbytes);	\
	man.relsiz = nbytes;				\
	man.flag = __cstr_toflag(__type);		\
	man.datoff = __cstr_datoff(__type);		\
	man.type = __type;				\
	man.nofbuf = __cstr_nof_buffer(nbytes, type);	\
	man.nofblk = __cstr_datbuf(type) * man->nofbuf + man->datoff;}

/**
 * __cstr_getman - Get alloc_man from a stringa
 * @man:		pinter to &alloc_man
 * @p:			string
 * @type:		string type
 *
 * Get allocation manual for a string
 */
__attribute__((always_inline))
inline void __cstr_getman_wp(struct alloc_man *man, const cstr_const_t p, enum cstr_tt type)
{
	switch(type)
	{
		case CSTR_TYPE_0:
			while(0) {}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p - 1;
			man->relsiz = tmp0->relsiz;
			man->nofbuf = tmp0->nofbuf;
			man->flag = tmp0->flag;
			man->datoff = sizeof(HEADER_TYPE(0));
			break;
		case CSTR_TYPE_1:
			while(0) {}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p - 1;
			man->relsiz = tmp1->relsiz;
			man->nofbuf = tmp1->nofbuf;
			man->flag = tmp1->flag;
			man->datoff =sizeof(HEADER_TYPE(1));
			break;
		case CSTR_TYPE_2:
			while(0) {}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p - 1;
			man->relsiz = tmp2->relsiz;
			man->nofbuf = tmp2->nofbuf;
			man->flag = tmp2->flag;
			man->datoff = sizeof(HEADER_TYPE(2));
			break;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
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
	man->nofblk	= man->nofbuf * __cstr_datbuf(type) + man->datoff;
}

#define m_cstr_getman_wp(man, p, type) do \
{	head##type *tmp = (head##type*)p - 1;	\
	man.relsiz = tmp->relsiz;		\
	man.nofbuf = tmp->nofbuf;		\
	man.flag = tmp->flag;			\
	man.datoff = sizeof(head##type);} while (0)

/**
 * __cstr_getman_wh - get alloc_man from a header
 * @head:		header
 * @type:		header type
 *
 * get allocation manual for a header
 */
__attribute__((always_inline))
inline void __cstr_getman_wh(struct alloc_man *man, header_cnt *head, enum cstr_tt type)
{
	man->relsiz = head->relsiz;
	man->nofbuf = head->nofbuf;
	man->flag = head->flag;
	man->type = type;
	man->datoff = __cstr_datoff(type);
	man->nofblk = man->nofbuf * __cstr_datbuf(type) + man->datoff;
}

#define m_cstr_getman_wh(man, head, type) do \
{	man.relsiz = head.relsiz;	\
	man.nofbuf = head.nofbuf;	\
	man.flag = head.flag;		\
	man.type = type;		\
	man.datoff = __cstr_datoff(type);\
	man.nofblk = man.nofbuf * __cstr_datbuf(type) + man.datoff } while(0)

/**
 * __cstr_set_header - set header
 * @p:			header position
 * @man:		pointer to &alloc_man to allocate
 * @type:		type of string
 *
 * set header at position @p to @man's content
 */
__attribute__((always_inline))
inline void* __cstr_set_header(void* p , struct alloc_man* man, enum cstr_tt type)
{
	switch(type)
	{
		case CSTR_TYPE_0:
			while(0) {}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p;
			tmp0->nofbuf	= man->nofbuf;
			tmp0->relsiz	= man->relsiz;
			tmp0->flag	= *((uint8_t*)&man->flag + sizeof(man->flag) - 1);
			return (void*)(tmp0 + 1);
		case CSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p;
			tmp1->nofbuf	= man->nofbuf;
			tmp1->relsiz	= man->relsiz;
			tmp1->flag	= *((uint8_t*)&man->flag + sizeof(man->flag) - 1);
			return (void*)(tmp1 + 1);
		case CSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p;
			tmp2->nofbuf	= man->nofbuf;
			tmp2->relsiz	= man->relsiz;
			tmp2->flag	= *((uint8_t*)&man->flag + sizeof(man->flag) - 1);
			return (void*)(tmp2 + 1);
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp3 = (HEADER_TYPE(3)*)p;
			tmp3->nofbuf	= man->nofbuf;
			tmp3->relsiz	= man->relsiz;
			tmp3->flag	= *((uint8_t*)&man->flag + sizeof(man->flag) - 1);
			return (void*)(tmp3 + 1);
#endif
		default:
			__cstr_debug(CSTR_DEBUG_INVALID_STRING_TYPE);
			
	}
}

#define m_cstr_set_header(p, man, type)	\
({ head##type tmp = (head##type*)p;	\
	tmp->nofbuf = man.nofbuf;		\
	tmp->relsiz = man.relsiz;		\
	tmp->flag = *((uint8_t*)&man->flag + sizeof(man->flag) - 1); (void*)(tmp+1);})


/**
 * __cstr_set_header_wh - set header from &header_cnt struct
 * @p:		header position
 * @head:	header struct
 * @type:	header type
 *
 * set header at position @p to @head's content
 */
__attribute__((always_inline))
inline void* __cstr_set_header_wh(void* p, header_cnt* head, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			while(0){}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p;
			tmp0->nofbuf	= head->nofbuf;
			tmp0->relsiz	= head->relsiz;
			tmp0->flag		= *((uint8_t*)&head->flag + sizeof(head->flag) - 1);
			return (void*)(tmp0 + 1);
		case CSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p;
			tmp1->nofbuf	= head->nofbuf;
			tmp1->relsiz	= head->relsiz;
			tmp1->flag		= *((uint16_t*)&head->flag + sizeof(head->flag) - 1);
			return (void*)(tmp1 + 1);
		case CSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p;
			tmp2->nofbuf	= head->nofbuf;
			tmp2->relsiz	= head->relsiz;
			tmp2->flag		= *((uint32_t*)&head->flag + sizeof(head->flag) - 1);
			return (void*)(tmp2 + 1);
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
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
 * __cstr_toflag - convert type to flag
 * @type:		type
 *
 * Convert @type to useable flag in a header
 */
inline cstr_lower __cstr_toflag(enum cstr_tt type)
{
	/*
	cstr_lower tmp = 0;
	uint8_t* ret = (uint8_t*)&tmp + sizeof(tmp) - 1;
	*ret = type;
	return tmp;
	*/
#if 0
#ifdef __CSTR_LITTLE_ENDIAN
	#ifdef HAVE_64_BITS
		static const cstr_lower __return[4] = 
		{ 0x01000000, 0x02000000, 0x03000000, 0x04000000 };
	#else	/* 32 bits system */
		static const cstr_lower __return[3] = 
		{ 0x01000000, 0x02000000, 0x03000000 };
	#endif
#else /* big endianess */
	#ifdef HAVE_64_BITS
		static const cstr_lower __return[4] = 
		{ 0x00000001, 0x00000002, 0x00000003, 0x00000004 };
	#else	/* 32 bits system */
		static const cstr_lower __return[3] = 
		{ 0x00000001, 0x00000002, 0x00000003 };
	#endif
#endif
		return __return[type];
#endif
	/* Another implementation */

#ifdef __CSTR_LITTLE_ENDIAN
	return type >> 24;
#else
	return type;
#endif

}

	

#define m_cstr_toflag(type) ({cstr_lower tmp = 0;\
		uint8_t* ret = (uint8_t*)&tmp + sizeof(tmp) - 1;\
		*ret = type;			\
		tmp})

/**
 * __cstr_from_flag - convert flag to type
 * @flag:		flag
 *
 * Convert raw @flag to type
 */
__attribute__((always_inline))
inline enum cstr_tt __cstr_from_flag(cstr_lower flag)
{
	/*
	uint8_t* ret = (uint8_t*)&flag + sizeof(flag) - 1;
	return *ret;
	*/
#ifdef __CSTR_LITTLE_ENDIAN
	return flag << 24;
#else
	return flag;
#endif
}
#define m_cstr_from_flag(flag) ({\
		uint8_t* ret = (uint8_t*)&flag + sizeof(flag) - 1;\
		*ret;})

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
	switch (type)
	{
		case CSTR_TYPE_0:
			return (nbytes >> T0_MASK) + 1;
		case CSTR_TYPE_1:
			return (nbytes >> T1_MASK) + 1;
		case CSTR_TYPE_2:
			return (nbytes >> T2_MASK) + 1;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			return (nbytes >> T3_MASK) + 1;
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
	return __cstr_nofbuf(p, __cstr_type(p));
}

inline size_t cstr_len(const cstr_const_t p)
{
	return __cstr_relsiz(p, __cstr_type(p));
}

inline size_t cstr_rmn(const cstr_const_t p)
{
	enum cstr_tt type = __cstr_type(p);
	return __cstr_nofbuf(p, type) * __cstr_datbuf(type) - __cstr_relsiz(p, type);
}


inline void cstr_free(cstr_t p)
{
	CSTR_FREE(
		__cstr_head(p, __cstr_type(p)));
}

__attribute__((warn_unused_result))
cstr_t ncstr_mt()
{
	struct alloc_man man;
	__cstr_getman(&man, 1);
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		__cstr_set_header((void*)_alloc, &man, CSTR_TYPE_0);
		_alloc[man.nofblk - 1] = '\0';
		return (char*)_alloc + man.datoff;
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
		cstr_t _return = (cstr_t)__cstr_set_header((void*)_alloc, &man, man.type);
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
		cstr_t _return = (cstr_t)__cstr_set_header((void*)_alloc, &man, man.type);
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
	__cstr_getman_wp(&man, p, __cstr_type(p));
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		memcpy(_alloc, __cstr_head(p, __cstr_type(p)), man.nofblk);
		return (char*)_alloc + man.datoff;
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
		*p = __cstr_set_header(_alloc, &man, man.type);
		if (src)
			memcpy(*p, src, capacity);
		_alloc[man.nofblk - 1] = '\0';
		return;
	}
	else if (*p == NULL)
		return;


	enum cstr_tt otype = __cstr_type(*p);
	if (__cstr_relsiz(*p, otype) == capacity)
	{
		size_t real_len = (src) ? strnlen(src, BUFSIZ) : capacity;
		if (src)
			memcpy(*p, src, real_len);
		__cstr_set_relsiz(*p, real_len, otype);
		*p[capacity - 1] = '\0';
		return;
	}

	void* head = __cstr_head(*p, otype);
	struct alloc_man man;
	__cstr_getman(&man, capacity);
	if (otype == man.type)
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(head, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		*p = __cstr_set_header(_alloc, &man, man.type);
		if (src)
		{
			size_t tmp = strnlen(src, BUFSIZ);
			memcpy(*p, src, tmp);
			__cstr_set_relsiz(*p, tmp, man.type);
		}
		return;
	}
	else
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		*p = __cstr_set_header(_alloc, &man, man.type);
		if (src)
		{
			size_t tmp = strnlen(src, BUFSIZ);
			memcpy(*p, src, tmp);
			__cstr_set_relsiz(*p, tmp, man.type);
		}
		else
			memmove(_alloc + __cstr_datoff(otype), _alloc + man.datoff, man.relsiz);
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
	__cstr_getman(&man, __cstr_relsiz(*p, otype));
	if (man.nofbuf == __cstr_nofbuf(*p, otype))
		return;
	if (otype == man.type)
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		_alloc[man.nofblk - 1] = '\0';
		*p = (char*)_alloc + man.datoff;
		return;
	}
	else
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
		memmove(_alloc + __cstr_datoff(otype), _alloc + man.datoff, man.relsiz);
		_alloc[man.nofblk - 1] = '\0';
		__cstr_set_header(_alloc, &man, man.type);
		*p = (char*)_alloc + man.datoff;
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

#include "cstr.h"

#include <stdlib.h>
#ifdef CSTR_DEBUG
	#include <stdio.h>
	#include "cstr_dbg.h"
#endif
#include <string.h>
#include <errno.h>

#define HEADER_TYPE(n) struct head##n

/* -----------Inner function------------*/

/**
 * __cstr_debug - Print debug message
 * @title:		Title literal
 * @content:	Content literal
 * @code:		(Exit) code
 *
 * Print formatted debug message to stdout. If @code is not 0, exit program with return code @code
 * Only work if CSTR_DEBUG is turned on
 */
#ifdef CSTR_DEBUG
inline void __cstr_debug(const char* title, const char* content, int code)
{
	__cstr_print_debug(title, content);
	if (code)
		exit(code);
}
#else
inline void __cstr_debug(const char* title, const char* content, int code)
{
	if (code)
		exit(code);
}
#endif

inline enum cstr_tt __cstr_type(const cstr_const_t p)
{
	return *((uint8_t*)(p) - 1) & __CSTR_TYPE_MASK;
}

/**
 * __cstr_head - return head position
 * @p:		string
 * @type:	type
 *
 * Return the position that is allocate for string @p
 */
inline void* __cstr_head(const cstr_const_t p , enum cstr_tt type)
{
	return (void*)p - __cstr_datoff(type);
}

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

inline cstr_wrapper __cstr_nofbuf(const cstr_const_t p, enum cstr_tt type)
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
			__cstr_debug("__cstr_nofbuf", "Invalid string type", 1);
	}
}

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
			__cstr_debug("__cstr_relsiz", "Invalid string type", 1);
	}
}

inline cstr_wrapper __cstr_flag(const cstr_const_t p, enum cstr_tt type)
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
			__cstr_debug("__cstr_flag", "Invalid string type", 1);
	}
}

inline cstr_wrapper __cstr_datoff(enum cstr_tt type)
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
			__cstr_debug("__cstr_datoff", "Invalid string type", 1);
	}
}

inline cstr_wrapper __cstr_datoff_wn(size_t nbytes)
{
	return __cstr_datoff(__cstr_type_wn(nbytes));
}

inline cstr_wrapper __cstr_datbuf(enum cstr_tt type)
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
			__cstr_debug("__cstr_datbuf", "Invalid string type", 1);
	}
}

inline cstr_wrapper __cstr_datbuf_wn(size_t nbytes)
{
	return __cstr_datbuf(__cstr_type_wn(nbytes));
}

inline void __cstr_set_nofbuf(const cstr_const_t p, cstr_wrapper val, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			((HEADER_TYPE(0)*)__cstr_head(p, type))->nofbuf = val;
			return;
		case CSTR_TYPE_1:
			((HEADER_TYPE(1)*)__cstr_head(p, type))->nofbuf = val;
			return;
		case CSTR_TYPE_2:
			((HEADER_TYPE(2)*)__cstr_head(p, type))->nofbuf = val;
			return;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			((HEADER_TYPE(3)*)__cstr_head(p, type))->nofbuf = val;
			return;
#endif
		default:
			__cstr_debug("__cstr_set_nofbuf", "Invalid string type", 1);
			return;
	}
}

inline void __cstr_set_relsiz(const cstr_const_t p, cstr_wrapper val, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			((HEADER_TYPE(0)*)__cstr_head(p, type))->nofbuf = val;
			return;
		case CSTR_TYPE_1:
			((HEADER_TYPE(1)*)__cstr_head(p, type))->nofbuf = val;
			return;
		case CSTR_TYPE_2:
			((HEADER_TYPE(2)*)__cstr_head(p, type))->nofbuf = val;
			return;
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			((HEADER_TYPE(3)*)__cstr_head(p, type))->nofbuf = val;
			return;
#endif
		default:
			__cstr_debug("__cstr_set_relsiz", "Invalid string type", 1);
			return;
	}
}

inline header_cnt __cstr_header(const cstr_const_t p, enum cstr_tt type)
{
	return __cstr_header_from(__cstr_head(p, type), type);
}

inline header_cnt __cstr_header_from(void* p, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			while(0){}
			HEADER_TYPE(0) *tmp1 = (HEADER_TYPE(0)*)p;
			return (header_cnt)
			{
				.nofbuf = tmp1->nofbuf,
				.relsiz = tmp1->relsiz,
				.flag = tmp1->flag
			};
		case CSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp2 = (HEADER_TYPE(1)*)p;
			return (header_cnt)
			{
				.nofbuf = tmp2->nofbuf,
				.relsiz = tmp2->relsiz,
				.flag = tmp2->flag
			};
		case CSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp3 = (HEADER_TYPE(2)*)p;
			return (header_cnt)
			{
				.nofbuf = tmp3->nofbuf,
				.relsiz = tmp3->relsiz,
				.flag	= tmp3->flag
			};
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp4 = (HEADER_TYPE(3)*)p;
			return (header_cnt)
			{
				.nofbuf = tmp4->nofbuf,
				.relsiz = tmp4->relsiz,
				.flag	= tmp4->flag
			};
#endif
		default:
			__cstr_debug("__cstr_header_from", "Invalid string type", 1);
	}
}

inline struct alloc_man __cstr_getman(size_t nbytes)
{
	enum cstr_tt type = __cstr_type_wn(nbytes);
	struct alloc_man _return = {
		.relsiz = nbytes,
		.flag = __cstr_toflag(type),
		.datoff = __cstr_datoff(type),
		.type = type
	};
	_return.nofbuf	= __cstr_nof_buffer(nbytes, type);
	_return.nofblk	= __cstr_datbuf(type) * _return.nofbuf + _return.datoff;
	return _return;
}

inline struct alloc_man __cstr_getman_wp(const cstr_const_t p, enum cstr_tt type)
{
	struct alloc_man _return = {
		.relsiz = __cstr_relsiz(p, type),
		.nofbuf = __cstr_nofbuf(p, type),
		.flag	= __cstr_flag(p, type),
		.datoff = __cstr_datoff(type),
		.type = type
	};
	_return.nofblk	= _return.nofbuf * __cstr_datoff(type) + _return.datoff;
	return _return;
}

inline struct alloc_man __cstr_getman_wh(header_cnt head, enum cstr_tt type)
{
	struct alloc_man _return = {
		.relsiz = head.relsiz,
		.nofbuf = head.nofbuf,
		.flag = head.flag,
		.type = type,
		.datoff = __cstr_datoff(type)
	};
	_return.nofblk = _return.nofbuf * __cstr_datoff(type) + _return.datoff;
	return _return;
}

inline void* __cstr_set_header(void* p , struct alloc_man man, enum cstr_tt type)
{
	switch(type)
	{
		case CSTR_TYPE_0:
			while(0) {}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p;
			tmp0->nofbuf	= man.nofbuf;
			tmp0->relsiz	= man.relsiz;
			tmp0->flag		= *((uint8_t*)&man.flag + sizeof(man.flag) - 1);
			return (void*)(tmp0 + 1);
		case CSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p;
			tmp1->nofbuf	= man.nofbuf;
			tmp1->relsiz	= man.relsiz;
			tmp1->flag		= *((uint8_t*)&man.flag + sizeof(man.flag) - 1);
			return (void*)(tmp1 + 1);
		case CSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p;
			tmp2->nofbuf	= man.nofbuf;
			tmp2->relsiz	= man.relsiz;
			tmp2->flag		= *((uint8_t*)&man.flag + sizeof(man.flag) - 1);
			return (void*)(tmp2 + 1);
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp3 = (HEADER_TYPE(3)*)p;
			tmp3->nofbuf	= man.nofbuf;
			tmp3->relsiz	= man.relsiz;
			tmp3->flag		= *((uint8_t*)&man.flag + sizeof(man.flag) - 1);
			return (void*)(tmp3 + 1);
#endif
		default:
			__cstr_debug("__cstr_set_header", "Invalid string type", 1);
			
	}
}

inline void* __cstr_set_header_wh(void* p, header_cnt head, enum cstr_tt type)
{
	switch (type)
	{
		case CSTR_TYPE_0:
			while(0){}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p;
			tmp0->nofbuf	= head.nofbuf;
			tmp0->relsiz	= head.relsiz;
			tmp0->flag		= *((uint8_t*)&head.flag + sizeof(head.flag) - 1);
			return (void*)(tmp0 + 1);
		case CSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p;
			tmp1->nofbuf	= head.nofbuf;
			tmp1->relsiz	= head.relsiz;
			tmp1->flag		= *((uint16_t*)&head.flag + sizeof(head.flag) - 1);
			return (void*)(tmp1 + 1);
		case CSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p;
			tmp2->nofbuf	= head.nofbuf;
			tmp2->relsiz	= head.relsiz;
			tmp2->flag		= *((uint32_t*)&head.flag + sizeof(head.flag) - 1);
			return (void*)(tmp2 + 1);
#ifdef HAVE_64_BITS
		case CSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp3 = (HEADER_TYPE(3)*)p;
			tmp3->nofbuf	= head.nofbuf;
			tmp3->relsiz	= head.relsiz;
			tmp3->flag		= *((uint64_t*)&head.flag + sizeof(head.flag) - 1);
			return (void*)(tmp3 + 1);
#endif
		default:
			__cstr_debug("__cstr_set_header_wh", "Invalid string type", 1);
	}
}

inline cstr_wrapper __cstr_toflag(enum cstr_tt type)
{
	cstr_wrapper tmp = 0;
	uint8_t* ret = (uint8_t*)&tmp + sizeof(tmp) - 1;
	*ret = type;
	return tmp;
}

inline enum cstr_tt __cstr_from_flag(cstr_wrapper flag)
{
	uint8_t* ret = (uint8_t*)&flag + sizeof(flag) - 1;
	return *ret;
}

inline cstr_wrapper __cstr_nof_buffer(size_t nbytes, enum cstr_tt type)
{
	return nbytes/__cstr_datbuf(type) + 1;
}

inline cstr_wrapper __cstr_nof_buffer_alone(size_t nbytes)
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
	struct alloc_man man = __cstr_getman(1);
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		__cstr_set_header((void*)_alloc, man, CSTR_TYPE_0);
		_alloc[man.nofblk - 1] = '\0';
		return (char*)_alloc + man.datoff;
	}
	else 
		__cstr_debug("ncstr_mt", "Allocation failure", 2);
}

__attribute__((warn_unused_result))
cstr_t ncstr_new(size_t nbytes)
{
	struct alloc_man man = __cstr_getman(nbytes);
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		cstr_t _return = (cstr_t)__cstr_set_header((void*)_alloc, man, man.type);
		_alloc[man.nofblk - 1] = '\0';
		return _return;
	}
	else
		__cstr_debug("ncstr_new", "Allocation failure", 2);
}

__attribute__((warn_unused_result))
cstr_t ncstr_from(const char* s)
{
	cstr_wrapper len = strnlen(s, BUFSIZ);
	struct alloc_man man =__cstr_getman(len);
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		cstr_t _return = (cstr_t)__cstr_set_header((void*)_alloc, man, man.type);
		memcpy(_return, s, len);
		_alloc[man.nofblk - 1] = '\0';
		return _return;
	}
	else
		__cstr_debug("ncstr_from", "Allocation failure", 2);
}

__attribute__((warn_unused_result))
cstr_t ncstrcpy(cstr_t p)
{
	struct alloc_man man = __cstr_getman_wp(p, __cstr_type(p));
	uint8_t* _alloc = (uint8_t*) CSTR_MALLOC(man.nofblk * sizeof(char));
	if (_alloc)
	{
		memcpy(_alloc, p, man.nofblk);
		return (char*)_alloc + man.datoff;
	}
	else
		__cstr_debug("ncstrcpy", "Allocation failure", 2);
}

__attribute__((always_inline))
cstr_t ncstrdup(cstr_t* p)
{
	cstr_t _return = *p;
	*p = NULL;
	return _return;
}

void cstr_resize(cstr_t* p, size_t capacity)
{
	if (!p)
		return;
	enum cstr_tt otype = __cstr_type(*p);
	if (otype == capacity)
		return;
	struct alloc_man man = __cstr_getman(capacity);
	if (otype == man.type)
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug("cstr_resize", "Allocation failed", 2);
		_alloc[man.nofblk - 1] = '\0';
		*p = (char*)_alloc + man.datoff;
		return;
	}
	else
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug("cstr_resize", "Allocation failed", 2);
		memmove(_alloc + __cstr_datoff(otype), _alloc + man.datoff, man.relsiz);
		_alloc[man.nofblk - 1] = '\0';	
		__cstr_set_header(_alloc, man, man.type);
		*p = (char*)_alloc + man.datoff;
		return;
	}
}

void cstr_trim(cstr_t* p)
{
	if (!p)
		return;
	enum cstr_tt otype = __cstr_type(*p);
	struct alloc_man man = __cstr_getman(__cstr_relsiz(*p, otype));
	if (man.nofbuf == __cstr_nofbuf(p, otype))
		return;
	if (otype == man.type)
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug("cstr_trim", "Allocation failed", 2);
		_alloc[man.nofblk - 1] = '\0';
		*p = (char*)_alloc + man.datoff;
		return;
	}
	else
	{
		uint8_t* _alloc = (uint8_t*) CSTR_REALLOC(*p, man.nofblk);
		if (!_alloc)
			__cstr_debug("cstr_trim", "Allocation failed", 2);
		memmove(_alloc + __cstr_datoff(otype), _alloc + man.datoff, man.relsiz);
		_alloc[man.nofblk - 1] = '\0';
		__cstr_set_header(_alloc, man, man.type);
		*p = (char*)_alloc + man.datoff;
		return;
	}
}


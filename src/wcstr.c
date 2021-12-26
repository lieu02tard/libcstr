#define __need_struct
#define __need_wcstr_inner_func
#include "wcstr.h"

#include <wchar.h>
#include <stdlib.h>
#ifdef Wwcstr_DEBUG
	#include <stdio.h>
	#include "wcstr_dbg.h"
#endif
#include <string.h>
#include <errno.h>

#define HEADER_TYPE(n) struct head##n

/* -----------Inner function------------*/

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
inline void* __wcstr_head(const wcstr_const_t p , enum wcstr_tt type)
{
	return (void*)p - __wcstr_datoff(type);
}

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

inline wcstr_wrapper __cstr_nofbuf(const wcstr_const_t p, enum wcstr_tt type)
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
			__wcstr_debug("__cstr_nofbuf", "Invalid string type", 1);
	}
}

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
			__wcstr_debug("__cstr_relsiz", "Invalid string type", 1);
	}
}

inline wcstr_wrapper __cstr_flag(const wcstr_const_t p, enum wcstr_tt type)
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
			__wcstr_debug("__cstr_flag", "Invalid string type", 1);
	}
}

inline wcstr_wrapper __wcstr_datoff(enum wcstr_tt type)
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
			__wcstr_debug("__cstr_datoff", "Invalid string type", 1);
	}
}

inline wcstr_wrapper __wcstr_datoff_wn(size_t nbytes)
{
	return __wcstr_datoff(__wcstr_type_wn(nbytes));
}

inline wcstr_wrapper __wcstr_datbuf(enum wcstr_tt type)
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
			__wcstr_debug("__cstr_datbuf", "Invalid string type", 1);
	}
}

inline wcstr_wrapper __cstr_datbuf_wn(size_t nbytes)
{
	return __wcstr_datbuf(__wcstr_type_wn(nbytes));
}

inline void __wcstr_set_nofbuf(const wcstr_const_t p, wcstr_wrapper val, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			((HEADER_TYPE(0)*)__wcstr_head(p, type))->nofbuf = val;
			return;
		case WCSTR_TYPE_1:
			((HEADER_TYPE(1)*)__wcstr_head(p, type))->nofbuf = val;
			return;
		case WCSTR_TYPE_2:
			((HEADER_TYPE(2)*)__wcstr_head(p, type))->nofbuf = val;
			return;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			((HEADER_TYPE(3)*)__wcstr_head(p, type))->nofbuf = val;
			return;
#endif
		default:
			__wcstr_debug("__cstr_set_nofbuf", "Invalid string type", 1);
			return;
	}
}

inline void __wcstr_set_relsiz(const wcstr_const_t p, wcstr_wrapper val, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			((HEADER_TYPE(0)*)__wcstr_head(p, type))->nofbuf = val;
			return;
		case WCSTR_TYPE_1:
			((HEADER_TYPE(1)*)__wcstr_head(p, type))->nofbuf = val;
			return;
		case WCSTR_TYPE_2:
			((HEADER_TYPE(2)*)__wcstr_head(p, type))->nofbuf = val;
			return;
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			((HEADER_TYPE(3)*)__wcstr_head(p, type))->nofbuf = val;
			return;
#endif
		default:
			__wcstr_debug("__cstr_set_relsiz", "Invalid string type", 1);
			return;
	}
}

inline header_cnt __wcstr_header(const wcstr_const_t p, enum wcstr_tt type)
{
	return __wcstr_header_from(__cstr_head(p, type), type);
}

inline header_cnt __wcstr_header_from(void* p, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			while(0){}
			HEADER_TYPE(0) *tmp1 = (HEADER_TYPE(0)*)p;
			return (header_cnt)
			{
				.nofbuf = tmp1->nofbuf,
				.relsiz = tmp1->relsiz,
				.flag = tmp1->flag
			};
		case WCSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp2 = (HEADER_TYPE(1)*)p;
			return (header_cnt)
			{
				.nofbuf = tmp2->nofbuf,
				.relsiz = tmp2->relsiz,
				.flag = tmp2->flag
			};
		case WCSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp3 = (HEADER_TYPE(2)*)p;
			return (header_cnt)
			{
				.nofbuf = tmp3->nofbuf,
				.relsiz = tmp3->relsiz,
				.flag	= tmp3->flag
			};
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
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
			__wcstr_debug("__cstr_header_from", "Invalid string type", 1);
	}
}

inline struct alloc_man __wcstr_getman(size_t nbytes)
{
	enum wcstr_tt type = __wcstr_type_wn(nbytes);
	struct alloc_man _return = {
		.relsiz = nbytes,
		.flag = __wcstr_toflag(type),
		.datoff = __wcstr_datoff(type),
		.type = type
	};
	_return.nofbuf	= __wcstr_nof_buffer(nbytes, type);
	_return.nofblk	= __wcstr_datbuf(type) * _return.nofbuf + _return.datoff;
	return _return;
}

inline struct alloc_man __wcstr_getman_wp(const wcstr_const_t p, enum wcstr_tt type)
{
	struct alloc_man _return = {
		.relsiz = __wcstr_relsiz(p, type),
		.nofbuf = __wcstr_nofbuf(p, type),
		.flag	= __wcstr_flag(p, type),
		.datoff = __wcstr_datoff(type),
		.type = type
	};
	_return.nofblk	= _return.nofbuf * __wcstr_datbuf(type) + _return.datoff;
	return _return;
}

inline struct alloc_man __wcstr_getman_wh(header_cnt head, enum wcstr_tt type)
{
	struct alloc_man _return = {
		.relsiz = head.relsiz,
		.nofbuf = head.nofbuf,
		.flag = head.flag,
		.type = type,
		.datoff = __wcstr_datoff(type)
	};
	_return.nofblk = _return.nofbuf * __wcstr_datbuf(type) + _return.datoff;
	return _return;
}

inline void* __wcstr_set_header(void* p , struct alloc_man man, enum wcstr_tt type)
{
	switch(type)
	{
		case WCSTR_TYPE_0:
			while(0) {}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p;
			tmp0->nofbuf	= man.nofbuf;
			tmp0->relsiz	= man.relsiz;
			tmp0->flag		= *((uint8_t*)&man.flag + sizeof(man.flag) - 1);
			return (void*)(tmp0 + 1);
		case WCSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p;
			tmp1->nofbuf	= man.nofbuf;
			tmp1->relsiz	= man.relsiz;
			tmp1->flag		= *((uint8_t*)&man.flag + sizeof(man.flag) - 1);
			return (void*)(tmp1 + 1);
		case WCSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p;
			tmp2->nofbuf	= man.nofbuf;
			tmp2->relsiz	= man.relsiz;
			tmp2->flag		= *((uint8_t*)&man.flag + sizeof(man.flag) - 1);
			return (void*)(tmp2 + 1);
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp3 = (HEADER_TYPE(3)*)p;
			tmp3->nofbuf	= man.nofbuf;
			tmp3->relsiz	= man.relsiz;
			tmp3->flag		= *((uint8_t*)&man.flag + sizeof(man.flag) - 1);
			return (void*)(tmp3 + 1);
#endif
		default:
			__wcstr_debug("__cstr_set_header", "Invalid string type", 1);
			
	}
}

inline void* __wcstr_set_header_wh(void* p, header_cnt head, enum wcstr_tt type)
{
	switch (type)
	{
		case WCSTR_TYPE_0:
			while(0){}
			HEADER_TYPE(0) *tmp0 = (HEADER_TYPE(0)*)p;
			tmp0->nofbuf	= head.nofbuf;
			tmp0->relsiz	= head.relsiz;
			tmp0->flag		= *((uint8_t*)&head.flag + sizeof(head.flag) - 1);
			return (void*)(tmp0 + 1);
		case WCSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1) *tmp1 = (HEADER_TYPE(1)*)p;
			tmp1->nofbuf	= head.nofbuf;
			tmp1->relsiz	= head.relsiz;
			tmp1->flag		= *((uint16_t*)&head.flag + sizeof(head.flag) - 1);
			return (void*)(tmp1 + 1);
		case WCSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2) *tmp2 = (HEADER_TYPE(2)*)p;
			tmp2->nofbuf	= head.nofbuf;
			tmp2->relsiz	= head.relsiz;
			tmp2->flag		= *((uint32_t*)&head.flag + sizeof(head.flag) - 1);
			return (void*)(tmp2 + 1);
#ifdef HAVE_64_BITS
		case WCSTR_TYPE_3:
			while(0){}
			HEADER_TYPE(3) *tmp3 = (HEADER_TYPE(3)*)p;
			tmp3->nofbuf	= head.nofbuf;
			tmp3->relsiz	= head.relsiz;
			tmp3->flag		= *((uint64_t*)&head.flag + sizeof(head.flag) - 1);
			return (void*)(tmp3 + 1);
#endif
		default:
			__wcstr_debug("__cstr_set_header_wh", "Invalid string type", 1);
	}
}

inline wcstr_wrapper __wcstr_toflag(enum wcstr_tt type)
{
	wcstr_wrapper tmp = 0;
	uint8_t* ret = (uint8_t*)&tmp + sizeof(tmp) - 1;
	*ret = type;
	return tmp;
}

inline enum wcstr_tt __wcstr_from_flag(wcstr_wrapper flag)
{
	uint8_t* ret = (uint8_t*)&flag + sizeof(flag) - 1;
	return *ret;
}

inline wcstr_wrapper __wcstr_nof_buffer(size_t nbytes, enum wcstr_tt type)
{
	return nbytes/__wcstr_datbuf(type) + 1;
}

inline wcstr_wrapper __wcstr_nof_buffer_alone(size_t nbytes)
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
	struct alloc_man man = __wcstr_getman(1);
	WCHAR_TYPE* _alloc = (WCHAR_TYPE*) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
	if (_alloc)
	{
		__wcstr_set_header((void*)_alloc, man, WCSTR_TYPE_0);
		_alloc[man.nofblk - 1] = '\0';
		return (wcstr_t)(_alloc + man.datoff);
	}
	else 
		__wcstr_debug("ncstr_mt", "Allocation failure", 2);
}

__attribute__((warn_unused_result))
wcstr_t ncstr_new(size_t nbytes)
{
	struct alloc_man man = __wcstr_getman(nbytes);
	WCHAR_TYPE* _alloc = (WCHAR_TYPE*) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
	if (_alloc)
	{
		wcstr_t _return = (wcstr_t)__wcstr_set_header((void*)_alloc, man, man.type);
		_alloc[man.nofblk - 1] = '\0';
		return _return;
	}
	else
		__wcstr_debug("ncstr_new", "Allocation failure", 2);
}

__attribute__((warn_unused_result))
wcstr_t nwcstr_from(const WCHAR_TYPE* s)
{
	wcstr_wrapper len = wcsnlen(s, BUFSIZ);
	struct alloc_man man =__wcstr_getman(len);
	WCHAR_TYPE* _alloc = (WCHAR_TYPE*) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
	if (_alloc)
	{
		wcstr_t _return = (wcstr_t)__wcstr_set_header((void*)_alloc, man, man.type);
		memcpy(_return, s, len * sizeof(WCHAR_TYPE));
		_alloc[man.nofblk - 1] = '\0';
		return _return;
	}
	else
		__wcstr_debug("ncstr_from", "Allocation failure", 2);
}

__attribute__((warn_unused_result))
wcstr_t nwcstrcpy(wcstr_t p)
{
	struct alloc_man man = __wcstr_getman_wp(p, __wcstr_type(p));
	wcstr_t _alloc = (wcstr_t) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
	if (_alloc)
	{
		memcpy(_alloc, __wcstr_head(p, __wcstr_type(p)), man.nofblk  * sizeof(WCHAR_TYPE));
		return _alloc + man.datoff;
	}
	else
		__wcstr_debug("ncstrcpy", "Allocation failure", 2);
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
		struct alloc_man man = __wcstr_getman(capacity);
		wcstr_t _alloc = (wcstr_t) CSTR_MALLOC(man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__wcstr_debug("cstr_resize","Allocation failed", 2);
		*p = __wcstr_set_header(_alloc, man, man.type);
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
	struct alloc_man man = __wcstr_getman(capacity);
	if (otype == man.type)
	{
		wcstr_t _alloc = (wcstr_t) CSTR_REALLOC(head, man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__wcstr_debug("cstr_resize", "Allocation failed", 2);
		_alloc[man.nofblk - 1] = '\0';
		*p = __wcstr_set_header(_alloc, man, man.type);
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
			__wcstr_debug("cstr_resize", "Allocation failed", 2);
		*p = __wcstr_set_header(_alloc, man, man.type);
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
	struct alloc_man man = __wcstr_getman(__wcstr_relsiz(*p, otype));
	if (man.nofbuf == __wcstr_nofbuf(*p, otype))
		return;
	if (otype == man.type)
	{
		wcstr_t _alloc = (wcstr_t) CSTR_REALLOC(*p, man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__wcstr_debug("cstr_trim", "Allocation failed", 2);
		_alloc[man.nofblk - 1] = '\0';
		*p = _alloc + man.datoff;
		return;
	}
	else
	{
		wcstr_t _alloc = (wcstr_t) CSTR_REALLOC(*p, man.nofblk * sizeof(WCHAR_TYPE));
		if (!_alloc)
			__wcstr_debug("cstr_trim", "Allocation failed", 2);
		memmove(_alloc + __wcstr_datoff(otype), _alloc + man.datoff, man.relsiz * sizeof(WCHAR_TYPE));
		_alloc[man.nofblk - 1] = '\0';
		__wcstr_set_header(_alloc, man, man.type);
		*p = _alloc + man.datoff;
		return;
	}
}


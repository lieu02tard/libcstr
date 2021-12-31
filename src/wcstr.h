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
/**
 * ===================STRUCTURE===========================================
 * _______________________________
 * |            |                 |
 * | Header     |  char array     |
 * |____________|_________________|
 *              |-> cstr_t pointer return to the developer
 *
 * ==============================================================EOF======
 * */
#ifndef FLIB_WCSTR_H
#define FLIB_WCSTR_H

#include "config.h"
#include <stdint.h>
#include <stddef.h>

#ifndef BUFSIZ
	#define BUFSIZ 8192
#endif


#ifndef WCHAR_TYPE
#define WCHAR_TYPE wchar_t
#endif

typedef WCHAR_TYPE* wcstr_t;
typedef const WCHAR_TYPE* wcstr_const_t;

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __need_struct
#ifndef __get_struct
#define __get_struct
struct head0 {
	uint8_t nofbuf;
	uint8_t relsiz;
	uint8_t flag;
};
#define T0_MAX	(uint8_t)(-1)
#ifndef T0_BUFFER
    #define T0_BUFFER 0x10
#endif

struct head1 {
	uint16_t nofbuf;
	uint16_t relsiz;
	uint16_t flag;
};

#define T1_MAX (uint16_t)(-1)
#ifndef T1_BUFFER 
    #define T1_BUFFER 0x400
#endif

struct head2 {
	uint32_t nofbuf;
	uint32_t relsiz;
	uint32_t flag;
};

#define T2_MAX (uint32_t)(-1)
#ifndef T2_BUFFER
    #define T2_BUFFER 0x1000
#endif

#ifdef  HAVE_64_BITS
struct head3 {
	uint64_t nofbuf;
	uint64_t relsiz;
	uint64_t flag;
};

#define T3_MAX (uint64_t)(-1)
#ifndef T3_BUFFER
	#define T3_BUFFER 0x1000000
#endif

#endif /* HAVE_64_BITS */


enum wcstr_tt {
	WCSTR_TYPE_INVALID = 0x00,
	WCSTR_TYPE_0 = 0x01,
	WCSTR_TYPE_1 = 0x02,
	WCSTR_TYPE_2 = 0x03
#ifdef HAVE_64_BITS
	, WCSTR_TYPE_3 = 0x04
#endif
};

#ifdef HAVE_64_BITS
typedef struct head3 header_cnt;
#else
typedef struct head2 header_cnt;
#endif

#ifdef HAVE_64_BITS
typedef uintmax_t wcstr_wrapper;
#else
typedef unsigned int wcstr_wrapper;
#endif
typedef unsigned int wcstr_lower;

struct alloc_man {
	wcstr_wrapper	relsiz;
	wcstr_wrapper	nofblk;
	wcstr_lower		nofbuf;
	wcstr_lower		flag;
	wcstr_lower		datoff;
	enum wcstr_tt type;
};
#endif /* __get_struct */
#endif /* __need_struct */
// Generate
extern wcstr_t nwcstr_mt();
extern wcstr_t nwcstr_new (size_t);
extern wcstr_t nwcstr_from (const WCHAR_TYPE*);		// From literal
extern wcstr_t nwcstrcpy (wcstr_t);			// Deep copy
extern wcstr_t nwcstrdup (wcstr_t*);			// Transfer ownership

// Adjust
extern void wcstr_resize(wcstr_t*, size_t capacity);
extern void	wcstr_trim(wcstr_t*);

//Free
extern inline void	wcstr_free (wcstr_t);

//Examination
//
//Assess
extern inline size_t wcstr_buf (const wcstr_const_t);		//Number of bufers allocated
extern inline size_t wcstr_len(const wcstr_const_t);		//Length in use by string
extern inline size_t wcstr_rmn (const wcstr_const_t);		//Remain size
extern inline void wcstr_reeval(const wcstr_const_t);

/** 
 * Inner function
 * These function are used when several infomation are presented
 * Not recommend to use directly
 */

#if defined __get_struct  && defined __need_wcstr_inner_func
#ifndef __get_wcstr_inner_func
#define __get_wcstr_inner_func

#define __CSTR_TYPE_MASK 0x03

extern inline enum wcstr_tt __wcstr_type(const wcstr_const_t);
extern inline void* __cstr_head(const wcstr_const_t, enum wcstr_tt);
extern inline enum wcstr_tt __wcstr_type_wn(size_t);

extern inline wcstr_lower __wcstr_nofbuf(const wcstr_const_t, enum wcstr_tt);
extern inline wcstr_wrapper __wcstr_relsiz(const wcstr_const_t, enum wcstr_tt);
extern inline wcstr_lower __wcstr_flag(const wcstr_const_t, enum wcstr_tt);
extern inline void __wcstr_set_nofbuf(const wcstr_const_t, wcstr_lower, enum wcstr_tt);
extern inline void __wcstr_set_relsiz(const wcstr_const_t, wcstr_wrapper, enum wcstr_tt);
extern inline void __wcstr_set_flag(const wcstr_const_t, wcstr_lower, enum wcstr_tt);

extern inline wcstr_lower __wcstr_datoff(enum wcstr_tt);
extern inline wcstr_lower __wcstr_datoff_wn(size_t);

extern inline wcstr_lower __wcstr_datbuf(enum wcstr_tt);
extern inline wcstr_lower __wcstr_datbuf_wn(size_t);

extern inline void* __wcstr_head(const wcstr_const_t p, enum wcstr_tt type);
extern inline header_cnt __wcstr_header_from(void*, enum wcstr_tt);
extern inline header_cnt __wcstr_header(const wcstr_const_t, enum wcstr_tt);

extern inline struct alloc_man __wcstr_getman(size_t);
extern inline struct alloc_man __wcstr_getman_wp(const wcstr_const_t, enum wcstr_tt);
extern inline struct alloc_man __wcstr_getman_wh(header_cnt, enum wcstr_tt);
extern inline void* __wcstr_set_header(void*, struct alloc_man*, enum wcstr_tt);
extern inline void* __wcstr_set_header_wh(void*, header_cnt*, enum wcstr_tt);

extern inline wcstr_lower __wcstr_toflag(enum wcstr_tt);
extern inline enum wcstr_tt __wcstr_from_flag(wcstr_lower);
extern inline wcstr_lower __wcstr_nof_buffer(size_t, enum wcstr_tt);
extern inline wcstr_lower __wcstr_nof_buffer_alone(size_t);

extern void __wcstr_resize_from(wcstr_t* p, const WCHAR_TYPE* src, size_t cap, int create);
#endif /* __get_wcstr_inner_func */
#endif

#ifdef __cplusplus
}
#endif
#endif

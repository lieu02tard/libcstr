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
	uint32_t nofbuf;
	uint32_t relsiz;
	uint32_t flag;
};
/* Type is now use for buffering purposes */
#define T0_MAX	0xff
#ifndef T0_BUFFER
	#define T0_BUFFER 256	/* Aka 2**8 */
	#define T0_BUFFER_MASK 8
	#define T0_MAX_BUFFER 1 
#endif

#define T1_MAX (uint16_t)(-1)
#ifndef T1_BUFFER 
	#define T1_BUFFER 4096		// Size of buffers
	#define T1_BUFFER_MASK 12	// 2 ** 12 = 4096. Get it ?
	#define T1_BUFFER_ALIGN 16	// Differences between preceed type and this type 's buffer size, aka 4096/256
	#define T1_BUFFER_ALIGN_MASK 4	// 2 ** 4 = 16
	#define T1_ATTEMPT_ALLOC 1	// Number of buffers to allocate if exceed the maximum size of the preceding type
	#define T1_MAX_BUFFER 16	// Maximum number of buffers
#endif

#define T2_MAX (uint32_t)(-1)
#ifndef T2_BUFFER
	#define T2_BUFFER 65536
	#define T2_BUFFER_MASK 16
	#define T2_BUFFER_ALIGN 16
	#define T2_BUFFER_ALIGN_MASK 4
	#define T2_ATTEMPT_ALLOC 2
	#define T2_MAX_BUFFER 16
#endif

#ifdef  HAVE_64_BITS

#define T3_MAX (uint64_t)(-1)
#ifndef T3_BUFFER
	#define T3_BUFFER 0x1000000
	#define T3_BUFFER_MASK 24
	#define T3_BUFFER_ALIGN 256
	#define T3_BUFFER_ALIGN_MASK 8
	#define T3_ATTEMP_ALLOC 513
	#define T3_MAX_BUFFER 40
#endif

#endif 

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
	#define WCSTR_TYPE_MAX WCSTR_TYPE_3
	#define WCSTR_MAXTYPE_MAX_BUFFER T3_MAX_BUFFER
	#define WCSTR_MAX_SIZE T3_MAX
#else
	#define WCSTR_TYPE_MAX WCSTR_TYPE_2
	#define WCSTR_MAXTYPE_MAX_BUFFER T2_MAX_BUFFER
	#define WCSTR_MAX_SIZE T2_MAX
#endif


typedef struct head0 header_cnt;

typedef unsigned int wcstr_wrapper;
typedef unsigned int wcstr_lower;

struct alloc_man {
	wcstr_wrapper	relsiz;
	wcstr_wrapper	nofblk;
	wcstr_lower	nofbuf;
	wcstr_lower	datbuf;
	enum wcstr_tt 	type;
};

#ifndef __get_write_enum
#define __get_write_enum
enum write_mode {
	WRITE_APPEND	= 0x01,
	WRITE_OVERWRITE
};
#endif

#endif /* __get_struct */
#endif /* __need_struct */
/* Generate function */
extern wcstr_t nwcstr_mt();
extern wcstr_t nwcstr_new (size_t);
extern wcstr_t nwcstr_from (const WCHAR_TYPE*);		// From literal
extern wcstr_t nwcstrcpy (wcstr_t);			// Deep copy
extern wcstr_t nwcstrdup (wcstr_t*);			// Transfer ownership

/* General size adjust */
extern void wcstr_resize(wcstr_t*, size_t capacity);
extern void	wcstr_trim(wcstr_t*);

/* Size growing */
extern void cstr_blank(wcstr_t*, size_t);		// Growing with blank spaces
extern void cstr_grow0(wcstr_t*, void*, size_t);		// Growing with copied data
extern void cstr_grow_block(wcstr_t*, size_t);		// Growing by blocks
extern void cstr_exp_grow(wcstr_t*);			// Growing exponentially
extern void cstr_make_room(wcstr_t*, size_t);		// Make room

/* Extra fast growing */
extern inline size_t cstr_room(const wcstr_const_t);	// Room available for writing
extern inline size_t cstr_alloc_space(const wcstr_const_t); // Space allocated
extern inline void cstr_grow0_fast(wcstr_t, void*, size_t);	// Growing with copied data
extern inline void cstr_write0_fast(wcstr_t, void*, size_t size, size_t pos); // Write fast at abitrary position
extern inline void cstr_blank_fast(wcstr_t, size_t);		// Growing with blank spaces
extern inline void cstr_blankw_fast(wcstr_t, size_t size, size_t pos);	// Fill blank spaces at abitrary position


/* Writing */
extern void* cstr_write(wcstr_t*, void*, size_t size, size_t pos);
extern void* cstr_append(wcstr_t*, void*, size_t size);

/* Free */
extern inline void	wcstr_free (wcstr_t);

/* Examination */
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
extern inline void* __wcstr_head(const wcstr_const_t);
extern inline enum wcstr_tt __wcstr_type_wn(size_t);

extern inline wcstr_lower __wcstr_nofbuf(const wcstr_const_t);
extern inline wcstr_wrapper __wcstr_relsiz(const wcstr_const_t);
extern inline wcstr_lower __wcstr_flag(const wcstr_const_t);
extern inline void __wcstr_set_nofbuf(const wcstr_const_t, wcstr_lower);
extern inline void __wcstr_set_relsiz(const wcstr_const_t, wcstr_wrapper);
extern inline void __wcstr_set_flag(const wcstr_const_t, wcstr_lower);

extern inline wcstr_lower __wcstr_datbuf(enum wcstr_tt);
extern inline wcstr_lower __wcstr_datbuf_wn(size_t);

extern inline void __wcstr_header(header_cnt*, const wcstr_const_t);

extern inline size_t __wcstr_mask(enum wcstr_tt);

extern inline void __wcstr_getman(struct alloc_man*, size_t);
extern inline void __wcstr_getman_wp(struct alloc_man*, const wcstr_const_t);
extern inline void __wcstr_getman_wh(struct alloc_man*, header_cnt*);
extern inline void __wcstr_getman_app_wh(struct alloc_man*, header_cnt*, size_t);
extern inline void* __wcstr_set_header(void*, struct alloc_man*);
extern inline void* __wcstr_set_header_wh(void*, header_cnt*);

extern inline wcstr_lower __wcstr_toflag(enum wcstr_tt);
extern inline enum wcstr_tt __wcstr_from_flag(wcstr_lower);
extern inline wcstr_lower __wcstr_nof_buffer(size_t, enum wcstr_tt);
extern inline wcstr_lower __wcstr_nof_buffer_alone(size_t);

extern void __wcstr_resize_from(wcstr_t* p, const WCHAR_TYPE* src, size_t cap, int create);
extern inline size_t __wcstr_max_buffer(enum wcstr_tt);
extern inline size_t __wcstr_buffer_align_mask(enum wcstr_tt);
extern inline void __wcstr_alloc_max(wcstr_t*);
#endif /* __get_wcstr_inner_func */
#endif

#ifdef __cplusplus
}
#endif
#endif

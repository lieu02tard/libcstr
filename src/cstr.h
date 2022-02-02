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
#ifndef FLIB_CSTR_H
#define FLIB_CSTR_H

#include "config.h"
#include <stdint.h>
#include <stddef.h>

#ifndef BUFSIZ
	#define BUFSIZ 8192
#endif



typedef char* cstr_t;
typedef const char* cstr_const_t;
#ifdef __cplusplus
extern "C" {
#endif

	// Define __need_struct to get access to inner struct and
	// Define __need_cstr_inner_func  (must have __need_struct defined) to get access to inner function
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

enum cstr_tt {
	CSTR_TYPE_INVALID = 0x00,
	CSTR_TYPE_0 = 0x01,
	CSTR_TYPE_1 = 0x02,
	CSTR_TYPE_2 = 0x03
#ifdef HAVE_64_BITS
	, CSTR_TYPE_3 = 0x04
#endif
};

#ifdef HAVE_64_BITS
	#define CSTR_TYPE_MAX CSTR_TYPE_3
	#define CSTR_MAXTYPE_MAX_BUFFER T3_MAX_BUFFER
	#define CSTR_MAX_SIZE T3_MAX
#else
	#define CSTR_TYPE_MAX CSTR_TYPE_2
	#define CSTR_MAXTYPE_MAX_BUFFER T2_MAX_BUFFER
	#define CSTR_MAX_SIZE T2_MAX
#endif


typedef struct head0 header_cnt;

typedef unsigned int cstr_wrapper;
typedef unsigned int cstr_lower;

struct alloc_man {
	cstr_wrapper	relsiz;
	cstr_wrapper	nofblk;
	cstr_lower	nofbuf;
	cstr_lower	datbuf;
	enum cstr_tt	type;
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
extern cstr_t ncstr_mt();
extern cstr_t ncstr_new (size_t);			// Allocate by bytesj
extern cstr_t ncstr_newblk(size_t);			// Allocate by blocks
extern cstr_t ncstr_from (const char*);			// From literal
extern cstr_t ncstrcpy (cstr_t);			// Deep copy
extern cstr_t ncstrdup (cstr_t*);			// Transfer ownership

/* General size adjust */
extern void cstr_resize(cstr_t*, size_t capacity);
extern void	cstr_trim(cstr_t*);

/* Size growing */
extern void cstr_blank(cstr_t*, size_t);		// Growing with blank spaces
extern void cstr_grow0(cstr_t*, void*, size_t);		// Growing with copied data
extern void cstr_grow_block(cstr_t*, size_t);		// Growing by blocks
extern void cstr_exp_grow(cstr_t*);			// Growing exponentially
extern void cstr_make_room(cstr_t*, size_t);		// Make room

/* Extra fast growing */
extern inline size_t cstr_room(const cstr_const_t);	// Room available for writing
extern inline size_t cstr_alloc_space(const cstr_const_t); // Space allocated
extern inline void cstr_grow0_fast(cstr_t, void*, size_t);	// Growing with copied data
extern inline void cstr_write0_fast(cstr_t, void*, size_t size, size_t pos); // Write fast at abitrary position
extern inline void cstr_blank_fast(cstr_t, size_t);		// Growing with blank spaces
extern inline void cstr_blankw_fast(cstr_t, size_t size, size_t pos);	// Fill blank spaces at abitrary position

/* Writing */
extern void* cstr_write(cstr_t*, void*, size_t size, size_t pos);
extern void* cstr_append(cstr_t*, void*, size_t size);
/* Free */
extern inline void	cstr_free (cstr_t);

/* Examination */
extern inline size_t cstr_buf (const cstr_const_t);		//Number of bufers allocated
extern inline size_t cstr_len(const cstr_const_t);		//Length in use by string
extern inline size_t cstr_rmn (const cstr_const_t);		//Remain size
extern inline void cstr_reeval(const cstr_const_t);

/** 
 * Inner function
 * These function are used when several infomation are presented
 * Not recommend to use directly
 */

#if defined __get_struct && defined __need_cstr_inner_func
#ifndef __get_cstr_inner_func
#define __get_cstr_inner_func

#define __CSTR_TYPE_MASK 0x03

extern inline enum cstr_tt __cstr_type(const cstr_const_t);
extern inline void* __cstr_head(const cstr_const_t);
extern inline enum cstr_tt __cstr_type_wn(size_t);

extern inline cstr_lower  __cstr_nofbuf(const cstr_const_t);
extern inline cstr_wrapper __cstr_relsiz(const cstr_const_t);
extern inline cstr_lower __cstr_flag(const cstr_const_t);
extern inline void __cstr_set_nofbuf(const cstr_const_t, cstr_lower);
extern inline void __cstr_set_relsiz(const cstr_const_t, cstr_wrapper);
extern inline void __cstr_set_flag(const cstr_const_t, enum cstr_tt);

extern inline cstr_lower __cstr_datbuf(enum cstr_tt);
extern inline cstr_lower __cstr_datbuf_wn(size_t);

extern inline void __cstr_header(header_cnt*, const cstr_const_t);

extern inline size_t __cstr_mask(enum cstr_tt);

extern inline void __cstr_getman(struct alloc_man*, size_t);
extern inline void __cstr_getman_wp(struct alloc_man*, const cstr_const_t);
extern inline void __cstr_getman_wh(struct alloc_man*, header_cnt*);
extern inline void __cstr_getman_app_wh(struct alloc_man*, header_cnt*, size_t);
extern inline void* __cstr_set_header(void*, struct alloc_man*);
extern inline void* __cstr_set_header_wh(void*, header_cnt*);

extern inline cstr_lower __cstr_toflag(enum cstr_tt);
extern inline enum cstr_tt __cstr_from_flag(cstr_lower);
extern inline cstr_lower __cstr_nof_buffer(size_t, enum cstr_tt);
extern inline cstr_lower __cstr_nof_buffer_alone(size_t);


extern void __cstr_resize_from(cstr_t* p, const char* src, size_t cap, int create);

extern inline size_t __cstr_max_buffer(enum cstr_tt);
extern inline size_t __cstr_buffer_align_mask(enum cstr_tt);
extern inline void __cstr_alloc_max(cstr_t*);
#endif /* __get_cstr_inner_func */
#endif

#ifdef __cplusplus
}
#endif

#endif

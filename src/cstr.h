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
	#define T0_MASK 8
#endif

#define T1_MAX (uint16_t)(-1)
#ifndef T1_BUFFER 
	#define T1_BUFFER 4096
	#define T1_MASK 12
#endif

#define T2_MAX (uint32_t)(-1)
#ifndef T2_BUFFER
	#define T2_BUFFER 65536
	#define T2_MASK 16
#endif

#ifdef  HAVE_64_BITS

#define T3_MAX (uint64_t)(-1)
#ifndef T3_BUFFER
	#define T3_BUFFER 0x1000000
	#define T3_MASK 24
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


// Generate
extern cstr_t ncstr_mt();
extern cstr_t ncstr_new (size_t);
extern cstr_t ncstr_from (const char*);		// From literal
extern cstr_t ncstrcpy (cstr_t);			// Deep copy
extern cstr_t ncstrdup (cstr_t*);			// Transfer ownership

// Adjust
extern void cstr_resize(cstr_t*, size_t capacity);
extern void	cstr_trim(cstr_t*);

//Free
extern inline void	cstr_free (cstr_t);

//Examination
//
//Assess
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

extern inline cstr_lower __cstr_datoff(enum cstr_tt);
extern inline cstr_lower __cstr_datoff_wn(size_t);

extern inline cstr_lower __cstr_datbuf(enum cstr_tt);
extern inline cstr_lower __cstr_datbuf_wn(size_t);

extern inline void __cstr_header(header_cnt*, const cstr_const_t);

extern inline size_t __cstr_mask(enum cstr_tt);

extern inline void __cstr_getman(struct alloc_man*, size_t);
extern inline void __cstr_getman_wp(struct alloc_man*, const cstr_const_t);
extern inline void __cstr_getman_wh(struct alloc_man*, header_cnt*);
extern inline void* __cstr_set_header(void*, struct alloc_man*);
extern inline void* __cstr_set_header_wh(void*, header_cnt*);

extern inline cstr_lower __cstr_toflag(enum cstr_tt);
extern inline enum cstr_tt __cstr_from_flag(cstr_lower);
extern inline cstr_lower __cstr_nof_buffer(size_t, enum cstr_tt);
extern inline cstr_lower __cstr_nof_buffer_alone(size_t);


extern void __cstr_resize_from(cstr_t* p, const char* src, size_t cap, int create);

#ifdef __get_write_enum
//extern void* __cstr_write(cstr_t* p, const char* src, size_t cap, size_t pos, enum write_mode); // Waiting for implemetation
#endif

#endif /* __get_cstr_inner_func */
#endif

#ifdef __cplusplus
}
#endif

#endif

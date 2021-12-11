#include "cstr.h"
#include "cstr_dbg.h"

#include <stdint.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <stdio.h>

//-------Type macro-----------
#define CSTR_TYPE_0 1
#define CSTR_TYPE_1 2
#define CSTR_TYPE_2 3

#define CSTR_TYPE_MASK 0x02
#define CSTR_TYPE_BITS 2

#define HEADER_TYPE(T) head##T
#define HEADER_CNT_COMP(T, s) s.h_##T 

#define UINTB_TYPE (p) (cstr_type(p) == 3) ? uint16_t : uint8_t //nofbuf type of p
#define UINT_TYPE (p) (cstr_type(p) == 1) ? uint8_t : (cstr_type(p) == 2) ? uint16_t : uint32_t	//relsiz type of p
#define CSTR_HEAD(T, s) ((head##T*) (s - sizeof(head##T)))
#define CSTR_HEAD_TYPE(T) head##T

#ifndef cstr_malloc
	#define cstr_malloc malloc
#endif
#ifndef cstr_calloc
	#define cstr_calloc calloc
#endif
#ifndef cstr_free
	#define cstr_free free
#endif
#ifndef cstr_realloc
	#define cstr_realloc realloc
#endif

//----------Secondary type definition-------

typedef enum 
 {
    METADATA_NOFBUF	= 0x04,
    METADATA_RELSIZ	= 0x08,
    METADATA_CSTRSTT= 0x10,
} HEADER_META;

typedef struct {
    size_t nofblk;			//Number of characters-sized memory block
    size_t nofbuf;			//Number of buffers
    size_t buffer_size;		//Buffer size
    cstr_tt type;			//Type
    size_t datoff;			//Data header offset
} setup_man;

#define fresh_sm (setup_man) {\
	.nofblk		= 0,\
	.nofbuf		= 0,\
	.buffer_size= 0,\
	.type		= 0,\
	.datoff		= 0}

//-----------static inline function---------------
//If some function return result that is specified to the type and not to the variable, the function call for
//type : foo()
//variable: foo_p()

static inline cstr_tt cstr_stt(const cstr_const_t);
static inline cstr_tt cstr_type(const cstr_const_t);
static inline cstr_tt cstr_type_wn(size_t);
static inline void* cstr_head(const cstr_const_t);

static inline size_t cstr_nofbuf(const cstr_const_t);
static inline size_t cstr_nofbuf_s(const cstr_const_t);
static inline size_t cstr_relsiz(const cstr_const_t);
static inline size_t cstr_relsiz_s(const cstr_const_t);

static inline size_t cstr_datoff(cstr_tt);
static inline size_t cstr_datoff_wp(const cstr_const_t);
static inline size_t cstr_datoff_wn(size_t);

static inline size_t cstr_datbuf (cstr_tt);
static inline size_t cstr_datbuf_wp(const cstr_const_t);
static inline size_t cstr_datbuf_wn(size_t);

static inline header_cnt cstr_get_meta(const cstr_const_t);
static inline cstr_tt cstr_header_type(const header_cnt);
static inline size_t cstr_header_nofbuf(const header_cnt);
static inline size_t cstr_header_relsiz(const header_cnt);

static inline size_t cstr_nbuffer(size_t);
static inline size_t shrink_buf(size_t);

static inline header_cnt cstr_gen_header(size_t);
static inline size_t cstr_header_s(header_cnt);
static inline int cstr_setmeta_t(cstr_t, size_t, HEADER_META);
static inline int cstr_setmeta_nofbuf(cstr_t, size_t);
static inline int cstr_setmeta_relsiz(cstr_t, size_t);
static inline int cstr_setmeta_stt(cstr_t, size_t);
static inline int cstr_set_meta(header_cnt, cstr_t);

static inline int cstr_get_header_inf(header_cnt, HEADER_META);

static inline setup_man cstr_inf_wp(const cstr_const_t);
static inline setup_man cstr_inf(cstr_tt);
static inline setup_man cstr_inf_wn(size_t);
static inline setup_man cstr_inf_wh(header_cnt);
static inline header_cnt fresh_hdr(setup_man inf);

/* cstr_err - Print debugging info. 
 * @pc:		C literal debug information
 * @exec_code:	Execute code:
 * 	1 for non-critical error
 * 	2 for critical error (prompt for exit)
 *
 * 	Only work if CSTR_VERBAL and CSTR_DEBUG flag are defined 
 */
#ifdef CSTR_VERBAL
void cstr_err(const char* pc, int exec_code)
{
    if (exec_code == CSTR_ERR_DEBUG)
#ifndef CSTR_DEBUG
        return;
#else   /*CSTR_DEBUG*/
        continue;
#endif  /*CSTR_DEBUG*/

	fprintf(CSTR_FILEDEF, "[%s]:%s\n",CSTR_VERBAL_MODULE_NAME, pc);
	if (exec_code == CSTR_ERR_ALLOC) //alloc related exec code
#ifdef CSTR_FATAL_ALLOC
        exit(0);
#else   /*not CSTR_FATAL_ALLOC*/
        continue;
#endif  /*not CSTR_FATAL_ALLOC*/

	return;
}
#else   /*CSTR_VERBAL*/
static inline void cstr_err(const char* pc, int exec_code) {}
#endif  /*CSTR_VERBAL*/


//-----------------Metadata-related macro-----
// Macro are to be avoided with inline function
/**
 * cstrstt - return &cstrstt metadata
 * @p:		&cstr_t to check
 * */
static inline cstr_tt
    cstr_stt(const cstr_const_t p) {
		return (p == NULL) ? 0 : *((uint8_t*)(p) - 1);}

/**
 * cstr_type - return &cstr_t type
 * @p:		&cstr_t to check
 * 
 * Return 2 last bits of &cstrstt metadata, used as identified bits
 */
static inline cstr_tt 
    cstr_type(const cstr_const_t p) {
		return (p == NULL) ? 0 : ((*((uint8_t*)(p)) & CSTR_TYPE_MASK) >> CSTR_TYPE_BITS);}

/**
 * cstr_type_wn - return type of a string with certain length
 * @nbytes:	length of string
 *
 * Return type of string with @nbytes bytes
 */
static inline cstr_tt
	cstr_type_wn(size_t nbytes) {
		return (nbytes<=T0_MAX) ? CSTR_TYPE_0 : (nbytes<=T1_MAX) ? CSTR_TYPE_1 : (nbytes<=T2_MAX) ? CSTR_TYPE_2 : 0;
}

/* cstr_head - return header position
 * @p:		&cstr_t to return header position
 *
 * return pointer to the head position, contain the metadata of a &cstr_t
 */
static inline void*
cstr_head(const cstr_const_t p){
	return (p == NULL) ? NULL : (void*)(p) - cstr_datoff_wp(p);}


/* cstr_nofbuf - return &nofbuf metadata
 * @p:		&cstr_t to get metadata
 *
 * &nofbuf is the number of buffer allocated
 */
static inline size_t
	cstr_nofbuf(const cstr_const_t p)
 {
	if (p == NULL)
		return 0;
	cstr_tt st_type = cstr_type(p);
	switch(st_type)
	 {
		case CSTR_TYPE_0:
			return CSTR_HEAD(0, p)->nofbuf;
		case CSTR_TYPE_1:
			return CSTR_HEAD(1, p)->nofbuf;
		case CSTR_TYPE_2:
			return CSTR_HEAD(2, p)->nofbuf;
	}
	return 0;
}

/* cstr_nofbuf_s - return &bufsize metadata size(count in bytes)
 * @p:		&cstr_t to get metadata
 *
 * return value is only depend on the type of @p
 */
static inline size_t 
	cstr_nofbuf_s (const cstr_const_t  p)
 {
	if (NULL == p)
		return 0;
	cstr_tt _type = cstr_type(p);
	switch (_type)
	{
		case CSTR_TYPE_0:
			return sizeof(uint8_t);
		case CSTR_TYPE_1:
			return sizeof(uint8_t);
		case CSTR_TYPE_2:
			return sizeof(uint16_t);
	}
	return 0;
}

/* cstr_relsiz - return &relsiz metadata
 * @p:		&cstr_t to get metadata
 *
 * @relsiz is number of characters has been used, aka. to the NULL terminator. This is also the return value of strlen()
 */
static inline size_t  
    cstr_relsiz(const cstr_const_t p)
 {
	if (p == NULL) 
		return 0;
	cstr_tt st_type = cstr_type(p);
	switch(st_type)
	{
		case CSTR_TYPE_0:
			return CSTR_HEAD(0, p)->relsiz;
		case CSTR_TYPE_1:
			return CSTR_HEAD(1, p)->relsiz;
		case CSTR_TYPE_2:
			return CSTR_HEAD(2, p)->relsiz;
    }
	return 0;
}

/* cstr_relsiz_s - return @relsiz metadata size
 * @p:		&cstr_t to get metadata
 *
 * return value is only depend on type of @p
 */
static inline size_t 
	cstr_relsiz_s(const cstr_const_t p)
 {
	if (NULL == p)
		return 0;
	cstr_tt _type = cstr_type(p);
	switch (_type)
	 {
		case CSTR_TYPE_0:
			return sizeof(uint8_t);
		case CSTR_TYPE_1:
			return sizeof(uint16_t);
		case CSTR_TYPE_2:
			return sizeof(uint32_t);
	}
}


/* cstr_datoff - return data offset of a header
 * @_type:	type to test
 *
 * Return the data offset (or size) of a header of a type (in bytes)
 */
static inline size_t 
	cstr_datoff (cstr_tt _type)
 {
	switch (_type)
	 {
		case CSTR_TYPE_0:
			return sizeof(CSTR_HEAD_TYPE(0));
		case CSTR_TYPE_1:
			return sizeof(CSTR_HEAD_TYPE(1));
		case CSTR_TYPE_2:
			return sizeof(CSTR_HEAD_TYPE(2));
	}
	return 0;
}

/* cstr_datoff_wp - return data offset of the header of a &cstr_t
 * @p:		&cstr_t to test
 *
 * Return data offset (or size) of a header of a &cstr_t
 */
static inline size_t
	cstr_datoff_wp(const cstr_const_t p)
 {
	return cstr_datoff(cstr_type(p));}
/* cstr_datoff_wn - return data offset of a string with @nbytes bytes (including NULL terminator)
 * @nbytes:	length of the hypothetical string
 */
static inline size_t
	cstr_datoff_wn(size_t nbytes)
{
	return cstr_datoff(cstr_type_wn(nbytes));}

/* cstr_datbuf - return data buffer of a type
 * @_type:	type to test
 *
 * cstr_t is allocated buffer by buffer. Meaning that when the existing amount of memory is already full, new allocating memory will be added in numbers of an pre-defined buffer memory, based solely on type.
 * cstrdatbuf return size (in bytes) of 1 buffer for @_type
 */
static inline size_t 
	cstr_datbuf (cstr_tt _type)
 {
	switch (_type)
	{
		case CSTR_TYPE_0:
			return T0_BUFFER;
		case CSTR_TYPE_1:
			return T1_BUFFER;
		case CSTR_TYPE_2:
			return T2_BUFFER;
	}
	return 0;
}

/* cstr_datbuf_wp - return data buffer of a &cstr_t
 * @p:		&cstr_t to test
 *
 * return size of a buffer in @p current state
 */
static inline size_t 
	cstr_datbuf_wp (const cstr_const_t p){
		return cstr_datbuf(cstr_type(p));}

/* cstr_datbuf_wn - return data buffer of a string with @nbytes bytes
 * @nbytes:	length of the hypothetical string
 *
 * return buffer size of string with @nbytes bytes
 */
static inline size_t
cstr_datbuf_wn(size_t nbytes) {
		return cstr_datbuf(cstr_type_wn(nbytes));}

/* cstr_get_meta - get header (or metadata) of a &cstr_t
 * @p:		&cstr_t to test
 */
static inline header_cnt 
	cstr_get_meta (const cstr_const_t p)
 {
	// [NOTE]: This should get a macro implementation
	header_cnt _return = (header_cnt){
		.h_2 = (head2){0, 0, 0}};

	char _ptype;
	if (p == NULL)
		return _return;
	else
		_ptype = cstr_type(p);
	switch (_ptype)
	 {
		case CSTR_TYPE_0:
			_return.h_0 =  *CSTR_HEAD(0, p);
		case CSTR_TYPE_1:
			_return.h_1 =  *CSTR_HEAD(1, p);
		case CSTR_TYPE_2:
			_return.h_2 =  *CSTR_HEAD(2, p);
	}
	return _return;
}


/* cstr_header_type - get header type embedded in union &header_cnt
 * @h:		&header_cnt to test
 */
static inline cstr_tt
	cstr_header_type (header_cnt h)
 {
	uint8_t flag = *((uint8_t*)(&h) + sizeof(h) - 1);    //Since the union type had the size of the largest element
    return (flag & CSTR_TYPE_MASK) >> CSTR_TYPE_BITS;
}

/* cstr_header_nofbuf - get @bufsize metadata from header
 * @h:		&header_cnt to test
 */
static inline size_t 
	cstr_header_nofbuf (header_cnt h)
{
	cstr_tt _type   = cstr_header_type(h);
	switch (_type)
	 {
		case CSTR_TYPE_0:
			return h.h_0.nofbuf;
		case CSTR_TYPE_1:
			return h.h_1.nofbuf;
		case CSTR_TYPE_2:
			return h.h_2.nofbuf;
	}
	return 0;
}

/* cstr_header_relsiz - get @relsiz metadata from header
 * @h:		&header_cnt to test
 */
static inline size_t
	cstr_header_relsiz (header_cnt h)
 {
	cstr_tt _type   = cstr_header_type(h);
	switch (_type)
	 {
		case CSTR_TYPE_0:
			return h.h_0.relsiz;
		case CSTR_TYPE_1:
			return h.h_1.relsiz;
		case CSTR_TYPE_2:
			return h.h_2.relsiz;
	}
	return 0;
}

/* cstr_header_cstrstt - get @cstrstt metadata from header
 * @h:		&header_cnt to test
 */
static inline size_t
	cstr_header_cstrstt(header_cnt h)
 {
	cstr_tt _type	= cstr_header_type(h);
	switch (_type)
	 {
		case CSTR_TYPE_0:
			return h.h_0.cstrstt;
		case CSTR_TYPE_1:
			return h.h_1.cstrstt;
		case CSTR_TYPE_2:
			return h.h_2.cstrstt;
	}
	return 0;
}

/* get_header_inf - get selected header metadata
 * @h:		&header_cnt to get metadata
 * @_inf:	&HEADER_META enum, specified which metadata to get
 */
static inline int
	cstr_get_header_inf (header_cnt h, HEADER_META _inf)
{
	switch (_inf)
	{
		case METADATA_NOFBUF:
			return cstr_header_nofbuf(h);
		case METADATA_RELSIZ:
			return cstr_header_relsiz(h);
		case METADATA_CSTRSTT:
			return cstr_header_cstrstt(h);
	}
	return -1;
}

//---------------Assess function------------------------
/** [API]
 * cstr_nofbuf - get numbers of buffer
 * @p:		&cstr_t to test
 */
size_t cstrnofbuf (const cstr_const_t p) {
		return cstr_nofbuf(p);}

/** [API]
 * cstrlen - get string length in use
 * @p:		&cstr_t to test
 */
size_t cstrlen (const cstr_const_t p) {
	return cstr_relsiz(p);}

/** [API]
 * cstrrmn - remain size (in bytes) unused
 * @p:		&cstr_t to test
 *
 * Return the remain size (excluding the NULL terminator) allocated but not yet used
 */
size_t cstrrmn (const cstr_const_t p){
		return cstr_nofbuf(p) * cstr_datbuf(cstr_type(p)) -  cstr_relsiz(p);}


/* cstr_nbuffer - get number of buffers are to be allocated in a string 
 * consist of @nbytes character
 * @nbytes:	length of string
 */
static inline size_t 
	cstr_nbuffer(size_t nbytes)
 {	
	cstr_tt _type = cstr_type_wn(nbytes);
	return (size_t)((nbytes + cstr_datoff(_type) + 1) / cstr_datbuf(_type)) + 1;
}

/* shrink_buf - number of bytes to be allocated for a string of @nbytes characters
 * @nbytes:	length of string
*/
static inline size_t 
    shrink_buf(size_t nbytes) 
 {
	cstr_tt _type = cstr_type_wn(nbytes);
	return (size_t)(cstr_nbuffer(nbytes) * cstr_datbuf(_type));
}

/* cstr_gen_header - fresh header for a string of @nbytes characters
 * @nbytes:	length of string
 */
static header_cnt 
	cstr_gen_header(size_t nbytes)
 {	
	char _ptype = cstr_type_wn(nbytes);
	header_cnt _return = (header_cnt){
		.h_2 = (head2){0, 0, 0} };
	switch (_ptype)
	{
		case CSTR_TYPE0:
			_return.h_0 = (CSTR_HEAD_TYPE(0)){	_ptype, 
						cstr_nbuffer(nbytes),
						0 };
			break;
		case CSTR_TYPE1:
			_return.h_1 = (CSTR_HEAD_TYPE(1)){ 	_ptype,
						cstr_nbuffer(nbytes),
						0 };
			break;
		case CSTR_TYPE2:
			_return.h_2 = (CSTR_HEAD_TYPE(2)){ 	_ptype,
						cstr_nbuffer(nbytes),
						0 };
			break;
	}
	return _return;
}

/* sizeof_header - size of header in string metadata
 * @_header:	&header_cnt to be test
 */
static inline size_t 
	sizeof_header(header_cnt _header)
 {
	cstr_tt _type = cstr_header_type(_header);
	switch (_type)
	 {
		case CSTR_TYPE_0:
			return sizeof(HEADER_TYPE(0));
		case CSTR_TYPE_1:
			return sizeof(HEADER_TYPE(1));
		case CSTR_TYPE_2:
			return sizeof(HEADER_TYPE(2));
	}
	return 0;
}

/* cstr_setmeta_t - set metadata
 * @p:			&cstr_t string to be set
 * @content:	metadat content to set
 * @_assign:	which metadata to assign
 *
 * Assign directly one of metadata value. Internal use
 * return @content if assign success. else return 0
 */
#ifdef __GNUC__
	__attribute__((warn_unused_result))
#endif
static int 
    cstr_setmeta_t(cstr_t p, size_t content, HEADER_META _assign)
 {
    if (p == NULL)
        return 0;
    cstr_tt _type = cstr_type(p);
	switch (_type)
	{
		case CSTR_TYPE_0:
			while(0){}
			CSTR_HEAD_TYPE(0)* _hdr = CSTR_HEAD(0, p);
			switch (_assign)
			{
				case METADATA_NOFBUF:
					_hdr->nofbuf	= content;
					return content;
				case METADATA_RELSIZ:
					_hdr->relsiz	= content;
					return content;
				case METADATA_CSTRSTT:
					_hdr->cstrstt	= content;
					return content;
				default:
					return 0;
			}
			break;
		case CSTR_TYPE_1:
			while(0){}
			CSTR_HEAD_TYPE(1)* _hdr_0 = CSTR_HEAD(1, p);
			switch (_assign)
			{
				case METADATA_NOFBUF:
					_hdr_0->nofbuf	= content;
					return content;
				case METADATA_RELSIZ:
					_hdr_0->relsiz	= content;
					return content;
				case METADATA_CSTRSTT:
					_hdr_0->cstrstt	= content;
					return content;
				default:
					return 0;
			}
			break;
		case CSTR_TYPE_2:
			while(0){}
			CSTR_HEAD_TYPE(2)* _hdr_1 = CSTR_HEAD(2, p);
			switch (_assign)
			{
				case METADATA_NOFBUF:
					_hdr_1->nofbuf	= content;
					return content;
				case METADATA_RELSIZ:
					_hdr_1->relsiz	= content;
					return content;
				case METADATA_CSTRSTT:
					_hdr_1->cstrstt	= content;
					return content;
				default:
					return 0;
			}
	}
	return -1;	// Error handling [FIXME]
 }

/* cstr_setmeta_nofbuf - set @bufsize metadata
 * @p:		&cstr_tt string to set
 * @content: value to set
 *
 * return @content if assign successfully. else return 0
 */
static inline int 
	cstr_setmeta_nofbuf(cstr_t p, size_t content){ 
		return cstr_setmeta_t(p, content, METADATA_NOFBUF);}

/* cstr_setmeta_relsiz - set &relsiz metadata
 * @p:		&cstr_t string to set
 * @content: value to set
 *
 * return @content if assign successfully. else return 0
 */
static inline int
	cstr_setmeta_relsiz(cstr_t p, size_t content) {
		return cstr_setmeta_t(p, content, METADATA_RELSIZ);}

/* cstr_setmeta_stt - set &cstrstt metadata
 * @p:		&cstr_t string to set
 * @content: value to set
 *
 * return @content if assign successfully. else return 0
 */
static inline int
    cstr_setmeta_stt(cstr_t p, size_t content) {
		return cstr_setmeta_t(p, content, METADATA_CSTRSTT);}

/* cstr_set_meta - replace entire metadata
 * @p:		&cstr_t string to set
 * @_header: header to set
 *
 * return -1 for type0, -2 for type 1 and -3 for type 2
 * return 0 on failure to recognize type
 *
 * [FIXME] Fix return value
 */
static int
	cstr_set_meta (header_cnt _header, cstr_t p)
	/* This must be given 'p' is already allocated*/
 {
	cstr_tt _type = cstr_header_type(_header);
	switch (_type)
	 {
		//[FIXME]: Read compilation error
		case CSTR_TYPE_0:
			while(0){}	/* C grammar - 
						No expression allowed follwing a label */
			HEADER_TYPE(0)* hhd = (HEADER_TYPE(0)*) 
				((uint8_t*)(p) - sizeof(HEADER_TYPE(0)));
			*hhd = _header.h_0;
			return -1;
			break;
		case CSTR_TYPE_1:
			while(0){}
			HEADER_TYPE(1)* hhd_0 = (HEADER_TYPE(1)*)
				((uint8_t*)(p) - sizeof(HEADER_TYPE(1)));
			*hhd_0 = _header.h_1;
			return -2;
			break;
		case CSTR_TYPE_2:
			while(0){}
			HEADER_TYPE(2)* hhd_1 = (HEADER_TYPE(2)*)
				((uint8_t*)(p) - sizeof(HEADER_TYPE(2)));
			*hhd_1 = _header.h_2;
			return -3;
			break;
	}
	return 0;
}


//-------------cstr_inf() function family-----------
//These below function return necessary information provided by struct 'setup_man' for allocation operations

/* cstr_inf_wp - get info for &cstr_t
 * @p:		&cstr_t to get info
 *
 * return &setup_man contain information (duplicate) initialize @p
 */
static inline setup_man 
	cstr_inf_wp(const cstr_const_t p)
{
	setup_man _return	= fresh_sm;		//[SUGGEST]: May be removed
	_return.type		= cstr_type(p);
	_return.buffer_size	= cstr_datbuf(_return.type);
	_return.datoff		= cstr_datoff(_return.type);
	_return.nofbuf		= cstr_nofbuf(p);
	_return.nofblk		= _return.nofbuf * _return.buffer_size + _return.datoff;
	return _return;
}

/* cstr_inf - get info for type @_type
 * @_type:	&cstr_tt to get (type) info
 *
 * return &setup_man contain (basic) information for type @_type
 */
static inline setup_man cstr_inf(cstr_tt _type)
 {
	return (setup_man){
		.nofblk			= 0,
		.nofbuf			= 0,
		.buffer_size	= cstr_datbuf(_type),
		.type			= _type,
		.datoff			= cstr_datoff(_type)
	};
}

/* cstr_inf_wn - get info for a string of @nbytes characters
 * @nbytes:	length of string
 *
 * return &setup_man contain information for (string of) @nbytes characters
 */
static inline setup_man
	cstr_inf_wn(size_t nbytes)
 {
	setup_man _return   = fresh_sm;		//[SUGGEST]: May be removed
	_return.type		= cstr_type_wn(nbytes);
	_return.datoff		= cstr_datoff(_return.type);
	_return.buffer_size	= cstr_datbuf(_return.type);
	_return.nofbuf		= cstr_nbuffer(nbytes);
	_return.nofblk		= _return.nofbuf * _return.buffer_size + _return.datoff;
	return _return;
}

/* cstr_inf_wh - get info for a string with header @hcnt
 * @hcnt:	&header_cnt to get info
 *
 * return &setup_man contain information (of/for) header @hcnt
 */
static inline setup_man
	cstr_inf_wh(header_cnt hcnt)
 {
	setup_man _return   = fresh_sm;
	_return.nofblk			= cstr_header_relsiz(hcnt);
	_return.type			= cstr_header_type(hcnt) & CSTR_TYPE_MASK;
	_return.nofbuf			= cstr_header_nofbuf(hcnt);
	_return.datoff			= cstr_datoff(_return.type);
	_return.buffer_size		= cstr_datbuf(_return.type);
	return _return;
}

/* fresh_hdr - generate fresh header from &setup_man
 * @inf:	&setup_man to setup
 *
 * generate a fresh &header_cnt from @inf
 */
static inline header_cnt
	fresh_hdr(setup_man inf)
 {
	header_cnt _return = {
		.h_2 = (HEADER_TYPE(2)) {0, 0, 0}};
	switch (inf.type)
	 {
		case CSTR_TYPE_0:
			HEADER_CNT_COMP(0, _return) = (HEADER_TYPE(0)){
				.cstrstt	= inf.type,
				.nofbuf		= inf.nofbuf,
				.relsiz		= inf.nofblk
			};
			break;
		case CSTR_TYPE_1:
			HEADER_CNT_COMP(1, _return) = (HEADER_TYPE(1)){
				.cstrstt	= inf.type,
				.nofbuf		= inf.nofbuf,
				.relsiz		= inf.nofblk
			};
			break;
		case CSTR_TYPE_2:
			HEADER_CNT_COMP(2, _return) = (HEADER_TYPE(2)){
				.cstrstt	= inf.type,
				.nofbuf		= inf.nofbuf,
				.relsiz		= inf.nofblk
			};
			break;
	}
	return _return;
}

//=========================Constructor function==================

/** [API]
 * ncstrnew - create a fresh string
 * @nbytes:	space to allocate
 *
 * Generate a new string with enough space to store @nbytes character
 */
#ifdef __GNUC__
	__attribute__((warn_unused_result))
#endif
cstr_t ncstrnew(size_t nbytes)
 {
	setup_man _setup_inf = cstr_inf(nbytes);
	char* _return	= (char*) cstr_malloc(_setup_inf.nofblk);
	if (NULL != _return)
	 {
		header_cnt _gened_header = cstr_gen_header(nbytes);
#ifdef CSTR_ZERO_STRING
		memset(_return, '\0', _setup_inf.nofblk);
#endif /*not CSTR_ZERO_STRING*/
		cstr_set_meta(_gened_header, (_return + _setup_inf.datoff));
		_return[_setup_inf.nofblk - 1] = '\0';
		return (_return  + _setup_inf.datoff);
	}
	else
	 {
		cstr_err("ncstrnew(): Allocation failed", 0);
		return NULL;
	}
}

/** [API]
 * ncstrdup - clone a C literal string
 * @cc:	C literal string to copy
 *
 * Clone a C literal string. ncstrdup() still function if @cc is a &cstr_t, but use ncstrdcpy() if you want a deep copy of a &cstr_t
 */
#ifdef __GNUC__
	__attribute__((warn_unused_result))
#endif
cstr_t ncstrdup (const char* cc)

{
	size_t nlen	= strlen(cc);
#ifdef CSTR_DEBUG
	print_title("ncstrdup");
	printf("String to copy: \n%s\nEnd of string to copy\n", cc);
#endif
	setup_man _setup_inf    = cstr_inf_wn(nlen);
	print_title("ncstrdup");
	printf("Size of nofblk: %u\n", _setup_inf.nofblk);
	char* _return  	= (char*) cstr_malloc(sizeof(char) * _setup_inf.nofblk);
	if (NULL != _return)
	 {
		header_cnt _gened_header 	= cstr_gen_header(nlen);
#ifdef CSTR_ZERO_STRING
		memset(_return, '\0', _setup_inf.nofblk,);
#endif /*not CSTR_ZERO_STRING*/
		cstr_set_meta(_gened_header, (_return + _setup_inf.datoff));
		_return[_setup_inf.nofblk - 1] = '\0';
		memcpy(_return + _setup_inf.datoff, cc, nlen);
		return (_return + _setup_inf.datoff);
	}
	else
	 {
		cstr_err("ncstrdup(): Allocation failed", 0);
		return NULL;
	}
}

/** [API]
 * ncstrdcpy - create a deep copy string
 * @p:	&cstr_t string to cpy
 *
 * Create a deep copy of @p.
 * If the result is unused, memory leak will occur*/
#ifdef __GNUC__
	__attribute__((warn_unused_result))
#endif
cstr_t ncstrdcpy(cstr_t p)
 {
	 /* If the original @p is corrupt, if 'CSTR_AUTOEVAL_OFF' is flagged, the new string will be corrupted as well. You may want to introduce a 'CSTR_SAFECLONE' flag to carefully reeval new string's value*/

	// Nullify function to remove this from deep copy
	if (NULL == p)
	 {
		cstr_err("ncstrcdup(): NULL pointer provided", 1);
		return NULL;
	}
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(p);
#endif  /*CSTR_AUTOEVAL_OFF*/
	header_cnt _cpy_header 	= cstr_get_meta(p);
	size_t relsiz		= cstr_get_header_inf(_cpy_header, METADATA_RELSIZ);
	size_t nofbuf		= cstr_get_header_inf(_cpy_header, METADATA_NOFBUF);

//Validate header
#ifdef CSTR_SAFECLONE
	if (pc[relsiz] != '\0')
		relsiz  = strlen(*pc);
	setup_man _setup_inf= cstr_inf(relsiz);
	if (nofbuf < _setup_inf.nofBuffer)
	 {
		nofbuf = _setup_inf.nofBuffer;
		cstrerr("ncstrcdup(): cstr header corrupted", 1);
	}
	if (getinf(_cpy_header, METADATA_TYPE) != _setup_inf._type)
	 {
		cstrerr("ncstrcdup(): cstr header corrupted", 1);
		setdat_p(&_cpy_header, METADATA_TYPE, cstr_gettype(relsiz));    //function setdat_p() [FIXME]
	}
#endif /*not CSTR_SAFECLONE*/

	setup_man _inf		= cstr_inf(relsiz);
	char* _return		= (char*) cstr_malloc(sizeof(char) * _inf.nofblk);
	if (NULL != _return)
	 {
#ifdef CSTR_ZERO_STRING
		memset(_return, '\0', sizeof(char) * relsiz);//[FIXME] Is this wise enough to zero all of memory
#endif /*not CSTR_ZERO_STRING*/
		cstr_set_meta(_cpy_header, (_return + _inf.datoff));
		memcpy(_return + _inf.datoff, p, relsiz);
		_return[relsiz - 1] = '\0';
		return (_return + _inf.datoff);
	}
	else
	 {
		cstr_err("ncstrdup(): Allocation failed", 0);
		return NULL;
	}
}

/** [API]
 * ncstrcdup - move string
 * @src:	pointer to the source string
 *
 * Move ownership (away) from @src
 * */
#ifdef __GNUC__
	__attribute__((warn_unused_result))
#endif
cstr_t	ncstrcdup(cstr_t* src)
 {
	char* _str 	= *src;
	if (_str == NULL)
		return NULL;
	*src	= NULL;
	return _str;
}

/** [API]
 * cstr_reeval - re-evaluate metadata
 * @p:	string to fix
 *
 * Re-calculate all metadata value, compare them with real value within the string
 * and replace if neccessary
 * fix data corruption if exist(???)
 */
void cstr_reeval(cstr_t p)
    /*============WARNING=================
     * This function completely overwrite metadata
     * And since it will search for the '\0' terminator at the address of the string with size of 'relsiz', if 'relsiz' are corrupted, the string are useless for good
     * This is rather expensive to call with big string*/
 {
	if (NULL == p)
		return;
#ifdef CSTR_MEMCHECK
	/* heap memory checking function */
#endif
	header_cnt _cpy_header 	= cstr_get_meta(p);
	size_t relsiz		= cstr_get_header_inf(_cpy_header, METADATA_RELSIZ);
	size_t nofbuf		= cstr_get_header_inf(_cpy_header, METADATA_NOFBUF);

//Validate header
	if (p[relsiz] != '\0')
		relsiz  = strlen(p);
	setup_man _setup_inf= cstr_inf(relsiz);
	if (nofbuf < _setup_inf.nofbuf)
	 {
		nofbuf = _setup_inf.nofbuf;
		cstr_err("cstr_reeval(): cstr header corrupted", 1);
	}
	if (cstr_get_header_inf(_cpy_header, METADATA_CSTRSTT) != _setup_inf.type)
	 {
		cstr_err("cstr_reeval(): cstr header corrupted", 1);
		cstr_setmeta_stt(p, _setup_inf.type);
		//setdat_p(&_cpy_header, METADATA_CSTRSTT, cstr_gettype(relsiz));    //function setdat_p() [FIXME]
	}
}

/** [API]
 * cstrfree - free &cstr_t string
 * @p:	&cstr_t string to free
 *
 * This function must be called for each string exist*/
void cstrfree(cstr_t pc)
    /*------------WARNING------------
     * A string freed will have NULL value for the 'char*' pointer
     * This is difference from string with 0 characters or a NULL header*/
 {
	if (NULL == pc)
		return;
	cstr_free(cstr_head(pc));
}

//===========STRING MANIPULATION FUNCTION============

/* cstr_voidarr - Void all @p memory except the metadata
 * @p:	string to process
 *
 * Overwrite all of @p with '\0' (or the NULL-terminator)
 */
static inline void cstr_voidarr(cstr_t p)
 {
#ifdef CSTR_AUTOEVAL
	cstr_reeval(p);
#endif
	setup_man _setup_inf = cstr_inf_wp(p);
	memset(p, '\0', sizeof(char) * _setup_inf.nofblk);
	cstr_setmeta_relsiz(p, 0);
}

/** [API]
 * cstrcpy - move ownership from @src to @dest
 * @dest:	pointer to destination string
 * @src:	pointer to source string
 *
 * Move ownership of string hold by *@src
 */
char* cstrcpy(cstr_t* dest, cstr_t* src)
{
	if (NULL == *src)
		return NULL;
	if (*dest != NULL)
		cstrfree(*dest);
	char* _src	= *src;
	*dest		= _src;
	*src		= NULL;
	return _src;
}

/** [API]
 * csrtdcpy - made @dest a deep copy of @src
 * @dest:	pointer to destination string
 * @src:	source string
 *
 * De-initialize *dest and perform deep copy
 */
char* cstrdcpy(cstr_t* dest, cstr_t src)
 {
	 if (*dest == src)
	{
		cstr_err("cstrcpy(): call to the same string",2);
		return NULL;
	}
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(src);
#endif /*CSTR_AUTOEVAL_OFF*/
#ifdef CSTR_SECURITY_WIPE
    cstr_voidarr(*dest);
#endif /*not CSTR_SECURITY_WIPE*/

	//cstr_t* since the real 'cstr_t' value will be realloc()
	header_cnt _src_header 	= cstr_get_meta(src);

	setup_man _setup_inf= cstr_inf_wh(_src_header);
	size_t relsiz       = cstr_header_relsiz(_src_header);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), _setup_inf.nofblk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrcpy(): Allocate error", 0);
		return NULL;
	}
	*dest 			= _alloc + _setup_inf.datoff;
#ifdef CSTR_ZERO_STRING
	memset(_alloc, '\0', _setup_inf.nofblk);
#else
	_alloc[_setup_inf.nofblk - 1] = '\0';
#endif /*not CSTR_ZERO_STRING*/
	cstr_set_meta(cstr_gen_header(relsiz), *dest);
	memcpy(*dest, src, relsiz * sizeof(char));	//sizeof(char) is rather useless since it is defined by the C standard to be 1 (byte). It just serve coding conventioning purposes
	return *dest;
}

/** [API]
 * cstrdgcpy - Copy C literal string
 * @dest:	pointer to destination string
 * @src:	source C literal
 */
char* cstrdgcpy(cstr_t* dest, const char* src)
 {
	int relsiz		= strlen(src);
	setup_man inf   = cstr_inf(relsiz);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofblk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrgcpy(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
#ifdef CSTR_ZERO_STRING
	memset(_alloc, '\0', inf.nofblk);
#else
	_alloc[inf.nofblk] = '\0';
#endif /*not CSTR_ZERO_STRING*/
	cstr_set_meta(cstr_gen_header(relsiz), *dest);
	memcpy(*dest, src, relsiz * sizeof(char));

	return *dest;
}

/** [API]
 * cstrncpy - move ownership of a section
 * @dest:	pointer to destination string
 * @src:	pointer to source string
 * @nbytes:	number of (characters) bytes to move
 *
 * Resize *@src string to @nbytes and move its ownership to @dest
 * If nbytes is higher than the real string size, nothing happen. Simply move the whole string
 */
char* cstrncpy(cstr_t* dest, cstr_t* src, size_t nbytes)
{
#ifdef CSTR_AUTOEVAL_OFF
	cstr_reeval(*src);
#endif /*not CSTR_AUTOEVAL_OFF*/
	size_t nbytes_eff	= nbytes;
	size_t relsiz		= cstr_relsiz(*src);
	if (relsiz < nbytes)
	{
		cstr_err("cstrncpy(): out of source's range", 1);
		nbytes_eff = relsiz;
	}

	setup_man inf		= cstr_inf(nbytes_eff);
	char* _str			= *src;
	*src				= NULL;
	
	char* _alloc		= (char*) cstr_realloc(cstr_head(_str), inf.nofblk);
	if (NULL == _alloc)
	{
		cstr_err("cstrncpy(): Allocate error", 0);
		return NULL;
	}
	char* _return		= _alloc + inf.datoff;
	_return[nbytes_eff - 1]	= '\0';
	return _return;
}

/** [API] 
 * cstrndcpy - deep copy a section of string
 * @dest:	pointer to destination string
 * @src:	source string
 * @nbytes:	number of (characters) bytes to move
 *
 * deep copy @nbytes characters of @src to @dest
 */
char* cstrndcpy(cstr_t * dest, cstr_t src, size_t nbytes)
 {
#ifdef CSTR_AUTOEVAL_OFF
	cstr_reeval(src);
#endif /*not CSTR_AUTOEVAL_OFF*/
	size_t nbytes_eff	= nbytes;
	size_t relsiz		= cstr_relsiz(src);
	if (relsiz < nbytes)
	 {
		cstr_err("cstrncpy(): out of source's range", 1);
		nbytes_eff = relsiz;
	}

	setup_man inf       = cstr_inf(nbytes_eff);

	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofblk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrncpy(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
	memset(_alloc, '\0', inf.nofblk);
	cstr_set_meta(cstr_gen_header(nbytes_eff), *dest);
	memcpy(*dest, src, nbytes_eff * sizeof(char));

	return *dest;
}

/** [API]
 * cstrndgcpy - copy a section of C literal string
 * @dest:	pointer to destination string
 * @src:	source C literal string
 * @nbytes:	number of bytes to copy
 */
char* cstrndgcpy(cstr_t* dest, const char* src, size_t nbytes)
 {
	size_t nbytes_eff	= nbytes;
	size_t relsiz		= strlen(src);

	if (relsiz < nbytes)
	 {
		cstr_err("cstrngcpy(): out of source's range", 1);
		nbytes_eff	= relsiz;
	}

	setup_man inf       = cstr_inf(nbytes_eff);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofblk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrngcpy(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
	memset(_alloc, '\0', inf.nofblk);
	cstr_set_meta(cstr_gen_header(nbytes_eff), *dest);
	memcpy(*dest, src, nbytes_eff * sizeof(char));

	return *dest;
}

/** [API]
 * cstrcat - append string
 * @dest:	destination string
 * @src:	source append string
 *
 * Append (and enlarge, if neccessary) @src to the end of @dest
 */
char* cstrcat(cstr_t* dest, cstr_t src)
{
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(src);
	cstr_reeval(*dest);
#endif
	size_t _src_relsiz 	= cstr_relsiz(src);
	//[opinion]: Whether copy the entire block of src or until the '\0' terminator
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	setup_man inf       = cstr_inf(_final_relsiz);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofblk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrcat(): Allocate error", 0);
		return NULL;
	}

	*dest           = _alloc + inf.datoff;
#ifdef CSTR_ZERO_STRING
	memset(*dest + _dest_relsiz, '\0', inf.nofblk - _dest_relsiz);
#else
	_alloc[inf.nofblk - 1]  = '\0';
#endif /*not CSTR_ZERO_STRING*/

	memcpy(*dest + _dest_relsiz * sizeof(char), src, _src_relsiz * sizeof(char));
	cstr_set_meta(cstr_gen_header(_final_relsiz), *dest);

	return *dest;
}

/** [API]
 * cstrgcat - append C literal string
 * @dest:	pointer to destination string
 * @src:	source C literal string
 *
 * Append @src to the end of @dest
 */
char*  cstrgcat(cstr_t* dest, const char* src)
 {
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(*dest);
#endif

	size_t _src_relsiz	= strlen(src);
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	setup_man inf       = cstr_inf(_final_relsiz);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofblk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrgcat(): Allocate error", 0);
		return NULL;
	}

#ifdef CSTR_ZERO_STRING
	memset(_alloc, '\0', inf.nofblk);
#else /*not CSTR_ZERO_STRING*/
	_alloc[inf.nofblk] = '\0';
#endif /* not CSTR_ZERO_STRING*/

	*dest			= _alloc + inf.datoff;
	memcpy(*dest + _dest_relsiz * sizeof(char), src, _src_relsiz * sizeof(char));
	cstr_set_meta(cstr_gen_header(_final_relsiz), *dest);

	return *dest;
}

/** [API]
 * cstrncat - (not really) safe append string
 * @dest:	pointer to destination string
 * @src:	pointer to source string
 * @nbytes:	number of bytes to append
 *
 * Append @nbytes characters of @src to @dest
 */
char* cstrncat(cstr_t* dest, cstr_t src, size_t nbytes)
 {
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(*dest);
	cstr_reeval(src);
#endif /*not CSTR_AUTOEVAL_OFF*/

	size_t _src_relsiz 	= cstr_relsiz(src);
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	if (nbytes < _src_relsiz)
		_src_relsiz = nbytes;
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	setup_man inf       = cstr_inf(_final_relsiz);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofblk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrncat(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
	memcpy(*dest + _dest_relsiz * sizeof(char), src, _src_relsiz * sizeof(char));
	cstr_set_meta(cstr_gen_header(_final_relsiz), *dest);

	return *dest;
}

/** [API]
 * cstrngcat - (not really) safe C literal string append
 * @dest:	pointer to destination string
 * @src:	source C literal string
 * @nbytes:	number of bytes to append
 *
 * Append @nbytes characters of @src to @dest
 */
char* cstrngcat(cstr_t* dest, const char* src, size_t nbytes)
 {
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(*dest);
#endif /*CSTR_AUTOEVAL_OFF*/

	size_t _src_relsiz	= strlen(src);
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	if (nbytes < _src_relsiz)
		_src_relsiz = nbytes;
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	setup_man inf           = cstr_inf(_final_relsiz);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofblk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrngcat(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
	memcpy(*dest + _dest_relsiz * sizeof(char), src, _src_relsiz * sizeof(char));
	cstr_set_meta(cstr_gen_header(_final_relsiz), *dest);

	return *dest;
}

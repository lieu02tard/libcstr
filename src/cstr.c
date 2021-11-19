#include "cstr.h"
#include <stdlib.h>
//----------Macro---------------------
#define CSTR_TYPE_0 1
#define CSTR_TYPE_1 2
#define CSTR_TYPE_2 3

#define CSTR_TYPE_MASK 0x02
#define CSTR_TYPE_BITS 2

#define HEADER_TYPE(T) head##T
#define HEADER_CNT_COMP(T, s) s.h_##T 

#define UINTB_TYPE (p) (cstrtype(p) == 3) ? uint16_t : uint8_t //bufsize type of p
#define UINT_TYPE (p) (cstrtype(p) == 1) ? uint8_t : (cstrtype(p) == 2) ? uint16_t : uint32_t	//relsiz type of p
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
//----------Type definition
typedef enum 
 {
    METADATA_BUFSIZE = 0x04,
    METADATA_RELSIZ  = 0x08,
    METADATA_CSTRSTT = 0x10,
} HEADER_META;
typedef struct {
    size_t nofBlk;          //Number of characters-sized memory block
    size_t nof_buffer;      //Number of buffers
    size_t buffer;          //Buffer size
    cstr_tt _type;          //Type
    size_t datoff;          //Data header offset
} setup_man;

static const setup_man 
    fresh_sm = {
    .nofBlk     = 0,
    .nof_buffer = 0,
    .buffer     = 0,
    ._type      = 0,
    .datoff      = 0
};
//-----------static inline function---------------
//If some function return result that is specified to the type and not to the variable, the function call for
//type : foo()
//variable: foo_p()
static inline cstr_tt cstrstt(cstr_t);
static inline cstr_tt cstrtype(cstr_t);

static inline uint8_t* cstr_head(cstr_t);

static inline size_t cstr_bufsize(cstr_t);
static inline size_t cstr_bufsize_s(cstr_t);
static inline size_t cstr_relsiz(cstr_t);
static inline size_t cstr_relsiz_s(cstr_t);

static inline size_t cstrdatoff(cstr_tt);
static inline size_t cstrdatoff_wp(cstr_t);
static inline size_t cstrdatbuf (cstr_tt);
static inline size_t cstrdatbuf_p(cstr_t);

static inline header_cnt get_meta(cstr_t);
static inline cstr_tt header_type(header_cnt);
static inline size_t header_bufsize(header_cnt);
static inline size_t header_relsiz(header_cnt);

static inline size_t cstr_buffer_size(cstr_t);
static inline cstr_tt cstr_typewn(size_t);
static inline size_t cstrdatoff_wn(size_t);
static inline size_t nofbuffer(size_t);
static inline size_t shrink_buf(size_t);

static header_cnt gen_header(size_t);
static inline size_t sizeof_header(header_cnt);
static int cstr_setmeta_t(cstr_t, size_t, HEADER_META);
static int get_header_inf(header_cnt, HEADER_META);
static inline int cstr_setmeta_bufsize(cstr_t, size_t);
static inline int cstr_setmeta_relsiz(cstr_t, size_t);
static inline int cstr_setmeta_stt(cstr_t, size_t);
static int set_meta(header_cnt, cstr_t);

static setup_man cstr_inf_wp(cstr_t);
static setup_man cstr_inf(cstr_tt);
static setup_man cstr_inf_wn(size_t);
static setup_man cstr_inf_wh(header_cnt);
static header_cnt fresh_hdr(setup_man inf);

#if 0
#ifndef CSTR_FILEDEF
	#define CSTR_FILEDEF stderr
#endif
#endif 

/* debugging function*/
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
//#define are avoid at all cost with 'inline' function

/* Return `cstrstt` metadata*/
static inline cstr_tt
    cstrstt(cstr_t p)		
 {	return (p == NULL) ? 0 : *((uint8_t*)(p) - 1);}

/* Return `cstr_t` type*/
static inline cstr_tt 
    cstrtype(cstr_t p)
 {	return (p == NULL) ? 0 : ((*((uint8_t*)(p)) & CSTR_TYPE_MASK) >> CSTR_TYPE_BITS);}

/* Return header position*/
static inline uint8_t* 
cstr_head(cstr_t p)
 {	return (p == NULL) ? NULL : (uint8_t*)(p) - cstrdatoff(cstrtype(p));}


#if 0
static inline uint16_t 
    cstr_bufsize(cstr_t p)	//'bufsize' metadata of p
 { 	return (p == NULL) ? 0 : (uint16_t) *((uint8_t*)(p) + 1);}
#endif 

/* Return `bufsize` metadata*/
static inline size_t
    cstr_bufsize(cstr_t p)
 {
    if (p == NULL)
        return 0;
    cstr_tt st_type = cstrtype(p);
    switch(st_type)
    {
        case CSTR_TYPE_0:
            return CSTR_HEAD(0, p)->bufsize;
        case CSTR_TYPE_1:
            return CSTR_HEAD(1, p)->bufsize;
        case CSTR_TYPE_2:
            return CSTR_HEAD(2, p)->bufsize;
    }
    return 0;
}
/* Size of `bufsize` metadata*/
static inline size_t 
    cstr_bufsize_s (cstr_t p)
 {	
    if (NULL == p)
        return 0;
    cstr_tt _type = cstrtype(p);
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

/*Retrun `relsiz` metadata*/
static inline size_t  
    cstr_relsiz(cstr_t p)
 {
    if (p == NULL) 
        return 0;
    cstr_tt st_type = cstrtype(p);
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

/*Sizeof `relsiz` metadata*/
static inline size_t 
    cstr_relsiz_s(cstr_t p)
 {
     if (NULL == p)
        return 0;
    cstr_tt _type = cstrtype(p);
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

#if 0
static inline size_t 
    cstrdatoff (cstr_t* p)	    //Data offset of p's metadata, count in bytes
#if 0
 {	return (cstrtype(p) == CSTR_TYPE0) ? T0_OFF : (cstrtype(p) == CSTR_TYPE1) ? T1_OFF : T2_OFF;}
#endif
 {
    if (NULL == p)
        return 0;
    cstr_tt flag_tt = cstr_type(p);
    switch (flag_tt)
    {
        case CSRT_TYPE_0:
            return sizeof(struct head0);
        case CSTR_TYPE_1:
            return sizeof(struct head1);
        case CSRT_TYPE_2:
            return sizeof(struct head2);
    }
    return 0;
}
#endif
/* Data offset (aka the header size)*/
static inline size_t 
    cstrdatoff (cstr_tt _type)
#if 0
 {	return (_type == CSTR_TYPE0) ? T0_OFF : (_type == CSTR_TYPE1) ? T1_OFF : T2_OFF;}
#endif
 {
    switch (_type)
     {
        case CSTR_TYPE_0:
            return sizeof(head0);
        case CSTR_TYPE_1:
            return sizeof(head1);
        case CSTR_TYPE_2:
            return sizeof(head2);
    }
    return 0;
}
/*Data offset with pointer*/
static inline size_t
    cstrdatoff_wp(cstr_t p)
 {
    return cstrdatoff(cstrtype(p));
}

/*Data buffer with given type*/
static inline size_t 
    cstrdatbuf (cstr_tt _type)
#if 0
 {	return (_type == CSTR_TYPE0) ? T0_OFF : (_type == CSTR_TYPE1) ? T1_OFF : (_type == CSTR_TYPE2) ? T2_OFF : -1;}
#endif
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

/*Data buffer with pointer*/
static inline size_t 
    cstrdatbuf_wp (cstr_t p)
 {	return cstrdatbuf(cstrtype(p));}

/*Get metadata of p*/
static inline header_cnt 
    get_meta (cstr_t p)
 {
	//char _ptype = cstrtype(p);

	header_cnt _return = (header_cnt){
	//	.h_0 = (head0){0, 0, 0},
	//	.h_1 = (head1){0, 0, 0},
		.h_2 = (head2){0, 0, 0}};
        
	char _ptype;
	if (p == NULL)
		return _return;
	else
		_ptype = cstrtype(p);
	switch (_ptype)
	 {
#if 0
		case CSTR_TYPE_0:
			_return.h_0 = (head1) {cstrstt(p), cstr_bufsize(p), cstr_relsiz(p)};
			break;
		case CSTR_TYPE_1:
			_return.h_1 = (head2) {cstrstt(p), cstr_bufsize(p), cstr_relsiz(p)};
			break;
		case CSTR_TYPE_2:
			_return.h_2 = (head3) {cstrstt(p), cstr_bufsize(p), cstr_relsiz(p)};
			break;
#endif
        case CSTR_TYPE_0:
            _return.h_0 =  *CSTR_HEAD(0, p);
        case CSTR_TYPE_1:
            _return.h_1 =  *CSTR_HEAD(1, p);
        case CSTR_TYPE_2:
            _return.h_2 =  *CSTR_HEAD(2, p);
     }
	return _return;
	//return (HEADER_TYPE) {CSTT(p), CBUFSIZE(p), CRELSIZ(p)};
}

/*get `header_cnt` header type*/
static inline cstr_tt
    header_type (header_cnt h)
 {
    uint8_t flag = *((uint8_t*)(&h) + sizeof(h) - 1);    //Since the union type had the size of the largest element
    return (flag & CSTR_TYPE_MASK) >> CSTR_TYPE_BITS;
}

/*get `bufsize` metadata from header*/
static inline size_t 
    header_bufsize (header_cnt h)
{
    cstr_tt _type   = header_type(h);
    switch (_type)
    {
        case CSTR_TYPE_0:
            return h.h_0.bufsize;
        case CSTR_TYPE_1:
            return h.h_1.bufsize;
        case CSTR_TYPE_2:
            return h.h_2.bufsize;
    }
    return 0;
    //return (HEADER_TYPE(header_type(h)))(h).bufsize;
}

/*get `relsiz` metadata from header*/
static inline size_t
    header_relsiz (header_cnt h)
{
    cstr_tt _type   = header_type(h);
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

static inline size_t
	header_cstrstt(header_cnt h)
{
	cstr_tt _type	= header_type(h);
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

static inline int
	get_header_inf (header_cnt h, HEADER_META _inf)
{
	switch (_inf)
	{
		case METADATA_BUFSIZE:
			return header_bufsize(h);
		case METADATA_RELSIZ:
			return header_relsiz(h);
		case METADATA_CSTRSTT:
			return header_cstrstt(h);
	}
}

//---------------Assess function------------------------
//API: get `bufsize` data
size_t 
    cstrbuf (cstr_t pc)
 {	return cstr_bufsize(pc);}

//API: get `relsiz` metadata
size_t 
    cstrlen (cstr_t pc)
 {	return cstr_relsiz(pc);}

#if 0
static inline size_t 
    cstr_buffer_size_wt(cstr_tt type)   //Get buffer size, given type
 {	return (type == 1) ? BUFSIZ0 : (type == 2) ? BUFSIZ1 : BUFSIZ2;}
#endif 
 //#define BUFFSIZ (p) BUFFSIZT(CSTRTYPE(p))

/*Get data buffer with pointer*/
static inline size_t 
    cstr_buffer_size(cstr_t p)
 {	return cstrdatbuf(cstrtype(p));}

/*Remain allocated-yet-unused data*/
size_t 
    cstrrmn (cstr_t pc)
 {
     return cstr_bufsize(pc) * cstrdatbuf(cstrtype(pc)) -  cstr_relsiz(pc);}

#if 0
static inline size_t 
    cstrdatoff(cstr_tt type)   //Get data offset, give type
 {	return (type == 1) ? T0_OFF : (type == 2) ? T1_OFF : T2_OFF;}
#endif

/*get type of a hypothetical string consist of _nbytes_ character(s)
Used mostly in allocate function*/
static inline cstr_tt 
    cstr_typewn(size_t nbytes)
 {	return  (nbytes <= T0_MAX) ? CSTR_TYPE_0 : (nbytes <= T1_MAX) ? CSTR_TYPE_1 : (nbytes <= T2_MAX) ? CSTR_TYPE_2 : 0;}

/*get data offset of a hypothetical string consists of _nbytes_ character(s)*/
static inline size_t 
    cstrdatoff_wn(size_t nbytes) 
 {	return cstrdatoff(cstr_typewn(nbytes));}

/*Number of buffer given _nbytes_ character(s) string*/
static inline size_t 
    nof_buffer(size_t nbytes)
 {	
	cstr_tt _type = cstr_typewn(nbytes);
	return (size_t)((nbytes + cstrdatoff(_type) + 1) / cstrdatbuf(_type)) + 1;
}

/*Number of bytes has to allocate for a _nbytes_ character(s) string
It is divisible by buffer size
*/
static inline size_t 
    shrink_buf(size_t nbytes) 
 {
	cstr_tt _type = cstr_typewn (nbytes);
	return (size_t)(nof_buffer(nbytes) * cstrdatbuf(_type));
}

/*Generate a fresh header for a hypothetical string with _nbytes_ character*/

static header_cnt 
    gen_header(size_t nbytes)   //Generate header for a fresh string, given number of characters
 {	
	char _ptype = cstr_typewn(nbytes);
	header_cnt _return = (header_cnt){
	//	._h0 = (head0){0, 0, 0},
	//	._h1 = (head1){0, 0, 0},
		.h_2 = (head2){0, 0, 0} };
	switch (_ptype)
	{
		case CSTR_TYPE0:
			_return.h_0 = (head0){	_ptype, 
						nof_buffer(nbytes),
						0 };
			break;
		case CSTR_TYPE1:
			_return.h_1 = (head1){ 	_ptype,
						nof_buffer(nbytes),
						0 };
			break;
		case CSTR_TYPE2:
			_return.h_2 = (head2){ 	_ptype,
						nof_buffer(nbytes),
						0 };
			break;
	}
	return _return;
}

/*Size of a real header will take*/
static inline size_t 
    sizeof_header(header_cnt _header)
 {
    cstr_tt _type = header_type(_header);
    //return sizeof(HEADER_TYPE(_type));
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

/*Set metadata*/
static int 
    cstr_setmeta_t(cstr_t p, size_t content, HEADER_META _assign)

#ifdef __GNUC__
    #ifdef CSTR_DEBUG
    __attribute__((warn_unused_result))
    #endif /*not CSTR_DEBUG*/
#endif /*not __GNUC__*/
 {
    if (p == NULL)
        return 0;
    cstr_tt _type = cstrtype(p);
	switch (_type)
	{
		case CSTR_TYPE_0:
			while(0){}
			CSTR_HEAD_TYPE(0) _hdr = *CSTR_HEAD(0, p);
			switch (_assign)
			{
				case METADATA_BUFSIZE:
					_hdr.bufsize	= content;
					return content;
				case METADATA_RELSIZ:
					_hdr.relsiz		= content;
					return content;
				case METADATA_CSTRSTT:
					_hdr.cstrstt	= content;
					return content;
				default:
					return 0;
			}
			break;
		case CSTR_TYPE_1:
			while(0){}
			CSTR_HEAD_TYPE(1) _hdr_0 = *CSTR_HEAD(1, p);
			switch (_assign)
			{
				case METADATA_BUFSIZE:
					_hdr_0.bufsize	= content;
					return content;
				case METADATA_RELSIZ:
					_hdr_0.relsiz	= content;
					return content;
				case METADATA_CSTRSTT:
					_hdr_0.cstrstt	= content;
					return content;
				default:
					return 0;
			}
			break;
		case CSTR_TYPE_2:
			while(0){}
			CSTR_HEAD_TYPE(2) _hdr_1 = *CSTR_HEAD(2, p);
			switch (_assign)
			{
				case METADATA_BUFSIZE:
					_hdr_1.bufsize	= content;
					return content;
				case METADATA_RELSIZ:
					_hdr_1.relsiz	= content;
					return content;
				case METADATA_CSTRSTT:
					_hdr_1.cstrstt	= content;
					return content;
				default:
					return 0;
			}
	}
 }

/*set `bufsize` metadata*/
static inline int 
    cstr_setmeta_bufsize(cstr_t p, size_t content)
 {   
    return cstr_setmeta_t(p, content, METADATA_BUFSIZE);
}

/*set `relsiz` metadata*/
static inline int
    cstr_setmeta_relsiz(cstr_t p, size_t content)
 {
    return cstr_setmeta_t(p, content, METADATA_RELSIZ);
}

/*set `cstrstt` metadata*/
static inline int
    cstr_setmeta_stt(cstr_t p, size_t content)
 {
    return cstr_setmeta_t(p, content, METADATA_CSTRSTT);
}

/*set entire metadata*/
static int
    set_meta (header_cnt _header, cstr_t p) //Set metadata of a given 'cstr', return status code
    /* This must be given 'p' is already allocated*/
 {
    cstr_tt _type = header_type(_header);
    switch (_type)
    {
        //[FIXME]: Read compilation error
        case CSTR_TYPE_0:
			while(0){}
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
            return -1;
            break;
        case CSTR_TYPE_2:
			while(0){}
            HEADER_TYPE(2)* hhd_1 = (HEADER_TYPE(2)*)
                ((uint8_t*)(p) - sizeof(HEADER_TYPE(2)));
            *hhd_1 = _header.h_2;
            return -2;
            break;
    }
    return 0;
	//HEADER_TYPE(_type)* hnd 	= (HEADER_TYPE(_type)*)
     //   ((uint8_t*)(p) - sizeof(HEADER_TYPE(_type)));
    //*hnd    = _header;
}


//-------------cstr_inf() function family-----------
//These below function return necessary information provided by struct 'setup_man' for allocation operations
static setup_man cstr_inf_wp(cstr_t p)
 {
    setup_man _return = fresh_sm;
        /*
        .nofBlk     = 0,
        .nof_buffer = 0,
        .buffer     = 0,
        .datoff     = 0,
        ._type      = cstr_type(p)
        };*/
    _return._type       = cstrtype(p);
    _return.nof_buffer  = cstr_bufsize(p);
    _return.buffer      = cstrdatbuf(_return._type);
    _return.nofBlk      = _return.nof_buffer * _return.buffer;
    _return.datoff      = cstrdatoff(_return._type);
    return _return;
}

static setup_man cstr_inf(cstr_tt _type)
 {
     setup_man _return = {
         .nofBlk        = 0,
         .nof_buffer    = 0,
         .buffer        = cstrdatbuf(_type),
         ._type         = _type,
         .datoff        = cstrdatoff(_type)
     };
     return _return;
}
static setup_man cstr_inf_wn(size_t nbytes)
 {
    setup_man _return   = fresh_sm;
    cstr_tt _type       = cstr_typewn(nbytes);
    size_t _buffer      = cstrdatbuf(_type);
    size_t nof_buffer   = nofbuffer(nbytes);
    size_t nofBlk       = _buffer * nof_buffer;
    _return = (setup_man) {
        ._type      = _type,
        .buffer     = _buffer,
        .nof_buffer = nof_buffer,
        .nofBlk     = nofBlk,
        .datoff     = cstrdatoff(_type)
    };
    return _return;
}

static setup_man cstr_inf_wh(header_cnt hcnt)
 {
    //setup_man _return   = fresh_sm;
    cstr_tt _type       = header_type(hcnt);
    setup_man _return = (setup_man) {
        ._type       = _type,
        .buffer     = cstrdatbuf(_type),
        .nof_buffer = header_bufsize(hcnt),
        .nofBlk     = _return.buffer * _return.nof_buffer,
        .datoff     = cstrdatoff(_type)
    };
    return _return;
}


static header_cnt fresh_hdr(setup_man inf)
{
    header_cnt _return = {
        .h_2 = (HEADER_TYPE(2)) {0, 0, 0}
    };
    switch (inf._type)
    {
        case CSTR_TYPE_0:
            HEADER_CNT_COMP(0, _return) = (HEADER_TYPE(0)){
                .cstrstt = inf._type,
                .bufsize = inf.nof_buffer,
                .relsiz  = 0
            };
            break;
        case CSTR_TYPE_1:
            HEADER_CNT_COMP(1, _return) = (HEADER_TYPE(1)){
                .cstrstt = inf._type,
                .bufsize = inf.nof_buffer,
                .relsiz  = 0
            };
            break;
        case CSTR_TYPE_2:
            HEADER_CNT_COMP(2, _return) = (HEADER_TYPE(2)){
                .cstrstt = inf._type,
                .bufsize = inf.nof_buffer,
                .relsiz  =0
            };
            break;
    }
    return _return;
#if 0
    HEADER_CNT_COMP(inf.type, _return) = {
        .cstrstt    = inf.type,
        .bufsize    = inf.nof_buffer,
        .relsiz     = 0
    };
#endif
}

//=========================Constructor function==================
//

/*Create a fresh string with expected _nbytes_ characters*/
#ifdef __GNUC__
    __attribute__((warned_unused_result))     
#endif
cstr_t ncstrnew(size_t nbytes)

 {

	//header_cnt _gened_header = gen_header(nbytes);
#if 0
     char _type = cstr_typewn(nbytes);
	size_t _nofBlk = sizeof(char)  * shrink_buf(nbytes);
#endif 
    setup_man _setup_inf = cstr_inf(nbytes);
	char* _return	= (char*) cstr_malloc(_setup_inf.nofBlk);
	if (NULL != _return)
	 {
		header_cnt _gened_header = gen_header(nbytes);
#ifdef CSTR_ZERO_STRING
		memset(_return, '\0', _setup_inf.nofBlk);
#endif /*not CSTR_ZERO_STRING*/
        set_meta(_gened_header, (_return + _setup_inf.datoff));
        _return[_setup_inf.nofBlk] = '\0';
		return (_return  + _setup_inf.datoff);
	}
	else
	 {
		cstr_err("ncstrnew(): Allocation failed", 0);
		return NULL;
	}
}

//ncstrnew() version if user don't want to get return value
cstr_t* np_cstrnew(size_t nbytes, cstr_t* pp)
 {
     if (NULL == pp)
         return NULL;
     *pp    = ncstrnew(nbytes);
     return pp;
 }

/*Create a clonned string*/
#ifdef __GNUC__
    __attribute__((warned_unused_result))
#endif
cstr_t ncstrdup (const char* cc)

 {
	//char* _return 	= (char*) malloc(sizeof(char) * (nbytes + DATAOFF(nbytes)));
	//if (NULL == _return)
	//	ERR(0);
	size_t nlen	= strlen(cc);
#if 0
	char _type	= cstr_typewn(nlen);
	size_t _nofBlk	= sizeof(char) * shrink_buf(nlen);
#endif
    setup_man _setup_inf    = cstr_inf(nlen);
    char* _return  	= (char*) cstr_malloc(sizeof(char) * _setup_inf.nofBlk);
	if (NULL != _return)
	 {
		header_cnt _gened_header 	= gen_header(nlen);
#ifdef CSTR_ZERO_STRING
		memset(_return, '\0', _setup_inf.nofBlk,);
#endif /*not CSTR_ZERO_STRING*/
		set_meta(_gened_header, (_return + _setup_inf.datoff));
        _return[_setup_inf.nofBlk] = '\0';
		return (_return + _setup_inf.datoff);
	}
	else
	 {
		cstr_err("ncstrdup(): Allocation failed", 0);
		return NULL;
	}
}

/*Clone `cstr_t`*/
#ifdef __GNUC__
    __attribute__((warned_unused_result))
#endif
cstr_t ncstrcdup(cstr_t pc)

    /* If the original 'pc' variable are corrupt, if 'CSTR_AUTOEVAL_OFF' is flagged, the new string will be corrupted as well. You may want to introduce a 'CSTR_SAFECLONE' flag to carefully reeval new string's value*/
{
    if (NULL == pc)
    {
        cstr_err("ncstrcdup(): NULL pointer provided", 1);
        return NULL;
    }
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(pc);
#endif  /*CSTR_AUTOEVAL_OFF*/
    
	header_cnt _cpy_header 	= get_meta(pc);
	size_t relsiz		= get_header_inf(_cpy_header, METADATA_RELSIZ);
	size_t bufsize		= get_header_inf(_cpy_header, METADATA_BUFSIZE);
#ifdef CSTR_SAFECLONE
    if (pc[relsiz] != '\0')
        relsiz  = strlen(pc);
    setup_man _setup_inf= cstr_inf(relsiz);
    if (bufsize < _setup_inf.nofBuffer)
    {
        bufsize = _setup_inf.nofBuffer;
        cstrerr("ncstrcdup(): cstr header corrupted", 1);
    if (getinf(_cpy_header, METADATA_TYPE) != cstr_gettype(relsiz))
    {
        cstrerr("ncstrcdup(): cstr header corrupted", 1);
        setdat_p(&_cpy_header, METADATA_TYPE, cstr_gettype(relsiz));    //function setdat_p() [FIXME]
    }

#endif /*not CSTR_SAFECLONE*/
	char* _return		= (char*) cstr_malloc(sizeof(char) * relsiz);

	if (NULL != _return)
	 {
#ifdef CSTR_ZERO_STRING
		memset(_return, '\0', sizeof(char) * relsiz);//[FIXME] Is this wise enough to zero all of memory
#endif /*NOT CSTR_ZERO_STRING*/
        set_meta(_cpy_header, (_return + cstrdatoff_wn(relsiz)));
        _return[relsiz] = '\0';
		return (_return + cstrdatoff_wn(relsiz));
	}
	else
	 {
		cstr_err("ncstrdup(): Allocation failed", 0);
		return NULL;
	}
}

//[FIXME]

/*Re-evaluate metadata
Fix data corruption if exist(???)*/
#ifdef __GNUC__
    __attribute__((warn_unused_result))
#endif /*not __GNUC__*/ 
uint8_t cstr_reeval(cstr_t pc)	    //Re-evaluate metadata, 'bufsize' and 'relsiz'

    /*============WARNING=================
     * This function completely overwrite metadata
     * And since it will search for the '\0' terminator at the address of the string with size of 'relsiz', if 'relsiz' are corrupted, the string are useless for good
     * This is rather expensive to call with big string*/

 {
	if (NULL == pc)
		return -1;

	//*insert heap memory checking function*
#ifdef CSTR_MEMCHECK

#endif
	/*
	size_t relsiz 	= strlen(pc);
	size_t bufsize	= shrink_buf(relsiz);
	*/
#ifdef CSTR_NOMIDDLE_TERM
    size_t relsiz           = strlen(pc);
#endif /*not CSTR_NOMIDDLE_TERM*/
    size_t relsiz           = cstr_relsiz(pc);
    
	header_cnt _cpy_header 	= gen_header(strlen(pc));
	set_meta(_cpy_header, pc);
	return 0;
}

/*Free string*/
/*This function must be called and return value used*/
#ifdef __GNUC__
    __attribute__((warned_unused_result))
#endif 
cstr_t cstrfree(cstr_t pc)
    /*------------WARNING------------
     * A string freed will have NULL value for the 'char*' pointer
     * This is difference from string with 0 characters or a NULL header*/
//	__attribute__((warn_unused_result))
 {
	if (NULL == pc)
		return NULL;
	cstr_free(cstr_head(pc));
	pc = NULL;
	return pc;
}
#if 0
cstr_t cstrfree_t (cstr_t pc)
#ifdef __GNUC__
    __attribute__((warned_unused_result))
#endif /*not __GNUC__*/
 {
    if (NULL == pc)
        return NULL;
    free(cstr_head(pc));
    return NULL;
}
#endif

//===========STRING MANIPULATION FUNCTION============

/*Write '\0' to all exist memory space of p*/
uint8_t cstr_voidarr(cstr_t p)
 {
     //setup_man _setup_inf = cstr_inf(p);
#ifdef CSTR_AUTOEVAL
    cstr_reeval(p);
#endif
    setup_man _setup_inf = cstr_inf_wp(p);
    memset(p, '\0', sizeof(char) * _setup_inf.nofBlk);
    cstr_setmeta_relsiz(p, 0);
    return 0;
}

/*Destroy all *dest string memory and clone the src string*/
char* cstrcpy(cstr_t* dest, cstr_t src)
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
	header_cnt _src_header 	= get_meta(src);
/*
	size_t _block_size	= cstr_buffer_size_wt(get_header_inf(_src_header, HEADER_TYPE));
	size_t bufsize		= get_header_inf(_src_header, HEADER_BUFSIZE);
	size_t relsiz		= get_header_inf(_src_header, HEADER_RELSIZ);
	uint64_t nofBlk		= bufsize * _block_size * sizeof(char);
    */

    setup_man _setup_inf= cstr_inf_wh(_src_header);
    size_t relsiz       = header_relsiz(_src_header);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), _setup_inf.nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrcpy(): Allocate error", 0);
		return NULL;
	}
	*dest 			= _alloc + _setup_inf.datoff;
#ifdef CSTR_ZERO_STRING
	memset(_alloc, '\0', _setup_inf.nofBlk);
#else
    _alloc[_setup_inf.nofBlk] = '\0';
#endif /*not CSTR_ZERO_STRING*/
	set_meta(gen_header(relsiz), *dest);
	memcpy(*dest, src, relsiz * sizeof(char));	//sizeof(char) is rather useless since it is defined by the C standard to be 1 (byte). It just serve coding conventioning purposes
	return *dest;
}
/* Copy string*/
char*
    cstrgcpy(cstr_t* dest, const char* src)
 {
	int relsiz		= strlen(src);
	//size_t _block_size	= cstr_buffer_size_wn(relsiz);
	//size_t nofBlk		= shrink_buf(relsiz);
	setup_man inf   = cstr_inf(relsiz);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofBlk);
	if (NULL == _alloc)
	{
		cstr_err("cstrgcpy(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
#ifdef CSTR_ZERO_STRING
	memset(_alloc, '\0', inf.nofBlk);
#else
    _alloc[inf.nofBlk] = '\0';
#endif /*not CSTR_ZERO_STRING*/
	set_meta(gen_header(relsiz), *dest);
	memcpy(*dest, src, relsiz * sizeof(char));

	return *dest;
}

char* 
    cstrncpy(cstr_t * dest, cstr_t src, size_t nbytes)//String copy but with a limited number of bytes copied
 {
	cstr_reeval(src);
	size_t nbytes_eff	= nbytes;
	size_t relsiz		= cstr_relsiz(src);
	if (relsiz < nbytes)
	 {
		cstr_err("cstrncpy(): out of source's range", 1);
		nbytes_eff = relsiz;
	}

	//size_t _block_size	= cstr_buffer_size_wn(nbytes_eff);
	setup_man inf       = cstr_inf(nbytes_eff);

	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrncpy(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
	memset(_alloc, '\0', inf.nofBlk);
	set_meta(gen_header(nbytes_eff), *dest);
	memcpy(*dest, src, nbytes_eff * sizeof(char));

	return *dest;
}

char* 
    cstrngcpy(cstr_t* dest, const char* src, size_t nbytes)//String copy with a limited number of bytes copied
 {
	size_t nbytes_eff	= nbytes;
	size_t relsiz		= strlen(src);

	if (relsiz < nbytes)
	 {
		cstr_err("cstrngcpy(): out of source's range", 1);
		nbytes_eff	= relsiz;
	}

	setup_man inf       = cstr_inf(nbytes_eff);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrngcpy(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
	memset(_alloc, '\0', inf.nofBlk);
	set_meta(gen_header(nbytes_eff), *dest);
	memcpy(*dest, src, nbytes_eff * sizeof(char));

	return *dest;
}

char* 
    cstrcat(cstr_t* dest, cstr_t src)   //Append 'src' to 'dest'
{
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(src);
	cstr_reeval(*dest);
#endif
	size_t _src_relsiz 	= cstr_relsiz(src);
    //[opinion]: Whether copy the entire block of src or until the '\0' terminator
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	//size_t nofBlk		= shrink_buf(_final_relsiz);
    setup_man inf       = cstr_inf(_final_relsiz);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrcat(): Allocate error", 0);
		return NULL;
	}

    *dest           = _alloc + inf.datoff;
#ifdef CSTR_ZERO_STRING
    memset(*dest + _dest_relsiz, '\0', inf.nofBlk - _dest_relsiz);
#else
    _alloc[inf.nofBlk]  = '\0';
#endif /*not CSTR_ZERO_STRING*/

	//*dest			= _alloc + inf.datoff;
	memcpy(*dest + _dest_relsiz * sizeof(char), src, _src_relsiz * sizeof(char));
	set_meta(gen_header(_final_relsiz), *dest);

	return *dest;
}

char* 
    cstrgcat(cstr_t* dest, const char* src)// Append 'src' to 'dest'
 {
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(*dest);
#endif

	size_t _src_relsiz	= strlen(src);
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	setup_man inf       = cstr_inf(_final_relsiz);
	char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofBlk);
	if (NULL == _alloc)
	{
		cstr_err("cstrgcat(): Allocate error", 0);
		return NULL;
	}

#ifdef CSTR_ZERO_STRING
    memset(_alloc, '\0', inf.nofBlk);
#else /*not CSTR_ZERO_STRING*/
    _alloc[inf.nofBlk] = '\0';
#endif /* not CSTR_ZERO_STRING*/

	*dest			= _alloc + inf.datoff;
	memcpy(*dest + _dest_relsiz * sizeof(char), src, _src_relsiz * sizeof(char));
	set_meta(gen_header(_final_relsiz), *dest);

	return *dest;
}

char* 
    cstrncat(cstr_t* dest, cstr_t src, size_t nbytes)//Append 'src' to 'dest' with limited number of bytes
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

	//size_t nofBlk		= shrink_buf(_final_relsiz);
	setup_man inf       = cstr_inf(_final_relsiz);
    char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrncat(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
	memcpy(*dest + _dest_relsiz * sizeof(char), src, _src_relsiz * sizeof(char));
	set_meta(gen_header(_final_relsiz), *dest);

	return *dest;
}

char* 
    cstrngcat(cstr_t* dest, const char* src, size_t nbytes)//Append 'src' to 'dest' with limited number of bytes
 {
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(*dest);
#endif /*CSTR_AUTOEVAL_OFF*/

	size_t _src_relsiz	= strlen(src);
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	if (nbytes < _src_relsiz)
		_src_relsiz = nbytes;
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	//size_t nofBlk 		= shrink_buf(_final_relsiz);
	setup_man inf           = cstr_inf(_final_relsiz);
    char* _alloc		= (char*) cstr_realloc(cstr_head(*dest), inf.nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("cstrngcat(): Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + inf.datoff;
	memcpy(*dest + _dest_relsiz * sizeof(char), src, _src_relsiz * sizeof(char));
	set_meta(gen_header(_final_relsiz), *dest);

	return *dest;
}

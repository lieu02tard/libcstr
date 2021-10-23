#include "cstr.h"
#ifndef CSTR_FILEDEF
	#define CSTR_FILEDEF stderr
#endif

//Error 
#ifdef CSTR_VERBAL
void cstr_err(const char* pc, int exec_code)
{
	fprintf(CSTR_FILEDEF, "%s\n", pc);
#ifndef CSTR_FATAL_MALLOC
    if (exec_code == 0)
        exit(0);
#endif  /*CSTR_FATAL_MALLOC*/
	return;
}
#else   /*CSTR_VERBAL*/
static inline cstr_err(const char* pc, int exec_code) {}
#endif  /*CSTR_VERBAL*/


//Metadata-related macro
//#define are avoid at all cost with 'inline' function
static inline uint8_t 
    cstrstt(cstr_t p)		//Return the 'cstr_stt' metadata
 {	return (p == NULL) ? 0 : *((uint8_t*)(p) - 1);}

static inline cstr_tt 
    cstrtype(cstr_t p)      //Return metadata type
 {	return (p == NULL) ? NULL : (*((uint8_t*)(p)) & 0x02) >> 2;}

static inline uint8_t* 
cstr_head(cstr_t p)	        //Head position of metadata
 {	return (p == NULL) ? NULL : (uint8_t*)(p) - cstr_dataoff(cstrtype(p));}

#define UINTB_TYPE (p) (cstrtype(p) == 3) ? uint16_t : uint8_t //bufsize type of p
#define UINT_TYPE (p) (cstrtype(p) == 1) ? uint8_t : (cstrtype(p) == 2) ? uint16_t : uint32_t	//relsiz type of p

static inline uint16_t 
    cstr_bufsize(cstr_t p)	//'bufsize' metadata of p
 { 	return (p == NULL) ? 0 : (uint16_t) *((uint8_t*)(p) + 1);}

static inline size_t 
    cstr_bufsize_s (cstr_t p)	//Size of 'bufsize' metadata
 {	return (p == NULL) ? 0 : (cstrtype(p) == 3) ? 2 : 1;}

static inline uint32_t 
    cstr_relsiz(cstr_t p);	    //'relsiz' metadata of p

static inline size_t 
    cstr_relsiz_s(cstr_t p);    //Size of 'relsiz' metadata

static inline size_t 
    cstrdatoff (void* p)	    //Data offset of p's metadata, count in bytes
 {	return (cstrtype(p) == CSTR_TYPE0) ? T0_OFF : (cstrtype(p) == CSTR_TYPE1) ? T1_OFF : T2_OFF;}

static inline size_t 
    cstrdatoff (cstr_tt _type)  //Data offset with given type
 {	return (_type == CSTR_TYPE0) ? T0_OFF : (_type == CSTR_TYPE1) ? T1_OFF : T2_OFF;}

static inline size_t 
    cstrdatbuf (cstr_tt _type)  //Data buffer with given type
 {	return (_type == CSTR_TYPE0) ? T0_OFF : (_type == CSTR_TYPE1) ? T1_OFF : (_type == CSTR_TYPE2) ? T2_OFF : -1;}

static inline size_t 
    cstrdatbuf (cstr p)         //Data buffer of p
 {	return cstrdatbuf(cstrtype(p));}

#define HEADER_TYPE (cstrtype(p) == CSTRTYPE0) ? head0 : (cstrtype(p) == CSTRTYPE1) ? head1 : head2

static inline header_cnt 
    get_meta (cstr p)           //Get metadata of p
 {
	//char _ptype = cstrtype(p);
	header_cnt _return = (header_cnt){
		.h_0 = (head0){0, 0, 0},
		.h_1 = (head1){0, 0, 0},
		.h_2 = (head2){0, 0, 0}};
	char _ptype;
	if (p == NULL)
		return _return;
	else
		_ptype = cstrtype(p);
	switch (_ptype)
	 {
		case CSTRTYPE0:
			_return.h_1 = (head1) {cstrstt(p), cstr_bufsize(p), cstr_relsiz(p)};
			break;
		case CSTRTYPE1:
			_return.h_2 = (head2) {cstrstt(p), cstr_bufsize(p), cstr_relsiz(p)};
			break;
		case CSTRTYPE2:
			_return.h_3 = (head3) {cstrstt(p), cstr_bufsize(p), cstr_relsiz(p)};
			break;
	}
	return _return;
	//return (HEADER_TYPE) {CSTT(p), CBUFSIZE(p), CRELSIZ(p)};
}

//---------------Assess function------------------------
size_t 
    cstrbuf (cstr_t pc)         //Get 'bufsize' metadata
 {	return cstr_bufsize(pc);}

size_t 
    cstrlen (cstr_t pc)         //Get 'relsiz' metadata
 {	return cstr_relsiz(pc);}

static inline size_t 
    cstr_buffer_size_wt(cstr_tt type)   //Get buffer size, given type
 {	return (type == 1) ? BUFSIZ0 : (type == 2) ? BUFSIZ1 : BUFSIZ2;}

 //#define BUFFSIZ (p) BUFFSIZT(CSTRTYPE(p))

static inline size_t 
    cstr_buffer_size(cstr p)    //Get buffer size
 {	return cstr_buffer_size_wt(cstrtype(p));}

size_t 
    cstrrmn (cstr_t pc)         //Remain space, count in bytes
 {  return CBUFSIZ * BUFFSIZ(pc) - CRELSIZ(p);}

static inline size_t 
    cstr_datoff(cstr_tt type)   //Get data offset, give type
 {	return (type == 1) ? T0_OFF : (type == 2) ? T1_OFF : T2_OFF;}

static inline cstr_tt 
    cstr_typewn(size_t nbytes)     //Get data type, given number of characters
 {	return  (nbytes <= T0_MAX) ? CSTR_TYPE0 : (nbytes <= T1_MAX) ? CSTR_TYPE1 : (nbytes <= T2_MAX) ? CSTR_TYPE3 : 0;}

static inline size_t 
    cstr_datoff_wn(size_t nbytes)   //Get data offset, given number of characters
 {	return cstr_datoff(cstr_typewn(nbytes));}

static inline size_t 
    nof_buffer(size_t nbytes)       //Get number of buffer has to be allocated, given number of characters
 {	
	cstr_tt _type = cstr_typewn(nbytes);
	return (size_t)((nbytes + cstr_datoff(_type)) / cstr_datbuf(_type)) + 1;
}

static inline size_t 
    shrink_buf(size_t nbytes)       //Get number of bytes has to be allocated, given number of characters
 {
	cstr_tt _type = cstr_typewn (nbytes);
	return ((size_t) ((bytes + cstr_datoff(_type)) / cstr_datbuf(_type)) + 1 ) * cstr_datbuf(_type);
}

static head_cnt 
    gen_header(size_t nbytes)   //Generate header for a fresh string, given number of characters
 {	
	char _ptype = cstr_typewn(nbytes);
	header_cnt _return = (header_cnt){
		._h0 = (head0){0, 0, 0},
		._h1 = (head1){0, 0, 0},
		._h2 = (head2){0, 0, 0} };
	switch (_ptype)
	{
		case CSTR_TYPE0:
			_return._h0 = (head0){	_ptype, 
						nof_buffer(nbyets),
						0 };
			break;
		case CSTR_TYPE1:
			_return._h1 = (head1){ 	_ptype,
						nof_buffer(nbytes),
						0 };
			break;
		case CSTR_TYPE2:
			_return._h2 = (head2){ 	_ptype,
						nof_buffer(nbytes),
						0 };
			break;
	}
	return _return;
}
//[FIXME]
static inline size_t 
    sizeof_header(head_cnt);    //Size (in bytes) of a given header

//[FIXME]
static int
    cstr_setmeta (head_cnt _header, cstr p) //Set metadata of a given 'cstr', return status code
 {
	uint8_t _head 	= (uint8_t*)(p) - sizeof_header(_header);
}

cstr_t	
    ncstrnew(size_t nbytes)
    __attribute__((warned_unused_result))     //Create a fresh string, given number of characters
 {

	//head_cnt _gened_header = gen_header(nbytes);
	char _type = cstr_typewn(nbytes);
	size_t _nofBlk = sizeof(char)  * shrink_buf(nbytes);
	char* _return	= (char*) malloc(_nofBlk);
	if (NULL != _return)
	 {
		head_cnt _gened_header = gen_header(nbytes);
		memset(_return, _nofBlk, '\0');
		cstr_setmeta(_gened_header, (_return + cstr_datoff_wn(nbytes)));
		return (_return  + cstr_datoff_wn(nbytes));
	}
	else
	 {
		cstr_err("Allocation failed", 0);
		return NULL;
	}
}

cstr_t 
    ncstrdup (const char* cc)
    __attribute__((warned_unused_result))     //Create a duplicate string of a C null-terminated string
 {
	//char* _return 	= (char*) malloc(sizeof(char) * (nbytes + DATAOFF(nbytes)));
	//if (NULL == _return)
	//	ERR(0);
	size_t nlen	= strlen(cc);
	char _type	= cstr_typewn(nlen);
	size_t _nofBlk	= sizeof(char) * shrink_buf(nlen);
	char* _return  	= (char*)malloc(sizeof(char) * shrink_buf(nlen));
	if (NULL != _return)
	 {
		head_cnt _gened_header 	= gen_header(nlen);
		memset(_return, _nofBlk, '\0');
		cstr_setmeta(_gened_header, (_return + cstr_datoff_wn(nlen)));
		return (_return + cstr_dataoff_wn(nlen));
	}
	else
	 {
		cstr_err("Allocation failed", 0);
		return NULL;
	}
}

cstr_t 
    ncstrcdup(cstr_t pc)
    __attribute__((warned_unused_result))       //Create a duplicate string
 {
#ifndef CSTR_AUTOEVAL_OFF
	cstr_reeval(pc);
#endif  /*CSTR_AUTOEVAL_OFF*/

	head_cnt _cpy_header 	= get_meta(pc);
	size_t relsiz		= get_header_inf(_cpy_header, METADATA_RELSIZ);
	size_t bufsize		= get_header_inf(_cpy_header, METADATA_BUFSIZE);
	char* _return		= (char*) malloc(sizeof(char) * shrink_buf(nlen));

	if (NULL != _return)
	 {
		memset(_return, sizeof(char) * relsiz, '\0');
		cstr_setmeta(_cpy_header, (_return + cstr_datoff_wn(relsiz)));
		return (_return + cstr_datoff_wn(relsiz));
	}
	else
	 {
		cstr_err("Allocation failed", 0);
		return NULL;
	}
}


uint8_t 
    cstr_reeval(cstr_t pc)	    //Re-evaluate metadata, 'bufsize' and 'relsiz'
    __attribute__((warn_unused_result)) 
    /*============WARNING=================
     * This function completely overwrite metadata
     * And since it will search till the '\0' terminator
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
	head_cnt _cpy_header 	= gen_header(strlen(pc));
	cstr_setmeta(_cpy_header, pc);
	return 0;
}

cstr_t 
    cstrfree(cstr_t* pc)    //Free string pointed by 'pc' pointer

    /*------------WARNING------------
     * A string freed will have NULL value for the 'char*' pointer
     * This is difference from string with 0 characters or a NULL header*/
//	__attribute__((warn_unused_result))
 {
	if (NULL == *pc)
		return NULL;
	free(cstr_head(*pc));
	*pc = NULL;
	return *pc;
}

//===========STRING MANIPULATION FUNCTION============

char* 
    cstrcpy(cstr_t* dest, cstr_t src) //Copy 'src' to 'dest'
    /* Clear all existing memory in dest and
     * allocate new memory sufficent for copied memory*/
 {
	cstr_reeval(src);
	//cstr_t* since the real 'cstr_t' value will be realloc()
	head_cnt _src_header 	= get_meta(src);
	size_t _block_size	= cstr_buffer_size_wt(get_header_inf(_src_header, HEADER_TYPE));
	size_t bufsize		= get_header_inf(_src_header, HEADER_BUFSIZE);
	size_t relsiz		= get_header_inf(_src_header, HEADER_RELSIZ);
	uint64_t nofBlk		= bufsize * _block_size * sizeof(char);
	char* _alloc		= (char*) realloc(cstr_head(*dest), nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("Allocate error", 0);
		return NULL;
	}
	*dest 			= _alloc + cstr_datoff(relsiz);
	memset(_alloc, nofBlk, '\0');
	set_meta(gen_header(relsiz), *dest);
	memcpy(src, *dest, relsiz * sizeof(char));	//sizeof(char) is rather useless since it is defined by the C standard to be 1 (byte). It just serve coding conventioning purposes
	return *dest;
}

char* 
    cstrgcpy(cstr_t* dest, const char* src) //Copy for 'src' to 'dest', with 'src' a 'const char*' type
 {
	int relsiz		= strlen(src);
	//size_t _block_size	= cstr_buffer_size_wn(relsiz);
	size_t nofBlk		= shrink_buf(relsiz);
	
	char* _alloc		= (char*) realloc(cstr_head(*dest), nofBlk);
	if (NULL == _alloc)
	{
		cstr_err("Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + cstr_datoff(relsiz);
	memset(_alloc, nofBlk, '\0');
	set_meta(gen_header(relsiz), *dest);
	memcpy(src, *dest, relsiz * sizeof(char));

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
		cstr_err("Error: cstrncpy() out of source's range", 1);
		nbytes_eff = relsiz;
	}

	//size_t _block_size	= cstr_buffer_size_wn(nbytes_eff);
	size_t nofBlk		= shrink_buf(nbytes_eff);

	char* _alloc		= (char*) realloc(cstr_head(*dest), nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + cstr_datoff(nbytes_eff);
	memset(_alloc, nofBlk, '\0');
	set_meta(gen_header(nbytes_eff), *dest);
	memcpy(src, *dest, nbytes_eff * sizeof(char));

	return *dest;
}

char* 
    cstrngcpy(cstr_t* dest, const char* src, size_t nbytes)//String copy with a limited number of bytes copied
 {
	size_t nbytes_eff	= nbytes;
	size_t relsiz		= strlen(src);

	if (relsiz < nbytes)
	 {
		cstr_err("Error: cstrngcpy() out of source's range", 1);
		nbytes_eff	= relsiz;
	}

	size_t nofBlk		= shrink_buf(nbytes_eff);
	char* _alloc		= (char*) realloc(cstr_head(*dest), nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + cstr_datoff(nbytes_eff);
	memset(_alloc, nofBlk, '\0');
	set_meta(gen_header(nbytes_eff), *dest);
	memcpy(src, *dest, nbytes_eff * sizeof(char));

	return *dest;
}

char* 
    cstrcat(cstr_t* dest, cstr_t src)   //Append 'src' to 'dest'
{
	cstr_reeval(src);
	cstr_reeval(*dest);
	size_t _src_relsiz 	= cstr_relsiz(src);
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	size_t nofBlk		= shrink_buf(_final_relsiz);
	char* _alloc		= (char*) realloc(cstr_head(*dest), nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + cstr_datoff(_final_relsiz);
	memcpy(src, *dest + _dest_relsiz * sizeof(char), _src_relsiz * sizeof(char) + 1); //The '+1' part is compensate for the '\0'
	set_meta(gen_header(_final_relsiz), *dest);

	return *dest;
}

char* 
    cstrgcat(cstr_t* dest, const char* src)// Append 'src' to 'dest'
 {
	cstr_reeval(*dest);
	size_t _src_relsiz	= strlen(src);
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	size_t nofBlk		= shrink_buf(_final_relsiz);
	char* _alloc		= (char*) realloc(cstr_head(*dest), nofBlk);
	if (NULL == _alloc)
	{
		cstr_err("Allocate error");
		return NULL;
	}

	*dest			= _alloc + cstr_datoff(_final_relsiz);
	memcpy(src, *dest + _dest_relsiz * sizeof(char), _src_relsiz * sizeof(char) + 1);
	set_meta(gen_header(_final_relsiz), *dest);

	return *dest;
}

char* 
    cstrncat(cstr_t* dest, cstr_t src, size_t nbytes)//Append 'src' to 'dest' with limited number of bytes
 {
	cstr_reeval(*dest);
	cstr_reeval(src);
	size_t _src_relsiz 	= cstr_relsiz(src);
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	if (nbytes < _src_relsiz)
		_src_relsiz = nbytes;
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	size_t nofBlk		= shrink_buf(_final_relsiz);
	char* _alloc		= (char*) realloc(cstr_head(*dest), nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + cstr_datoff(_final_relsiz);
	memcpy(src, *dest + _dest_relsiz * sizeof(char), _src_relsiz * sizeof(char) + 1);
	set_meta(gen_header(_final_relsiz), *dest);

	return *dest;
}

char* 
    cstrngcat(cstr_t* dest, const char* src, size_t nbytes)//Append 'src' to 'dest' with limited number of bytes
 {
	cstr_reeval(*dest);
	size_t _src_relsiz	= strlen(src);
	size_t _dest_relsiz	= cstr_relsiz(*dest);
	if (nbytes < _src_relsiz)
		_src_relsiz = nbytes;
	size_t _final_relsiz	= _src_relsiz + _dest_relsiz;

	size_t nofBlk 		= shrink_buf(_final_relsiz);
	char* _alloc		= (char*) realloc(cstr_head(*dest), nofBlk);
	if (NULL == _alloc)
	 {
		cstr_err("Allocate error", 0);
		return NULL;
	}

	*dest			= _alloc + cstr_datoff(_final_relsiz);
	memcpy(src, *dest + _dest_relsiz * sizeof(char), _src_relsiz * sizeof(char) + 1);
	set_meta(gen_header(_final_relsiz), *dest);

	return *dest;
}

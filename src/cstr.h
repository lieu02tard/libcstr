/* cstr - C string manipulation library
 * This program/library is part of the FFABC project
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
/*>>>>>>>>>>>>DEVELOPER MANUAL<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 * ===================STRUCTURE===========================================
 * _____________________________________________________
 * |cstrstt|bufsize    |relsiz     |char[] array
 * |1 bytes|1-2 byte(s)|2-4 byte(s)|
 * |_______|___________|___________|___________________
 * 				   |-> cstr_t variable point here
 * cstrstt : 
 * * Bits 6 & 7 store the type of header
 * * If these bits equal to 0, the string is nullified
 * bufsize :
 * * Store the size of buffer block allocated
 * * aka the real size allocated are BUFSIZ<type> * bufsize * sizeof(char)
 * relsiz :
 * * Store the size of character until the '\0' terminator
 * * This is rather relaxed
 * ==============================================================EOF======
 * 
 *
 * ==============>>>>>METADATA MANIPULATION FUNCTION<<<<<<<<<<<===========
 * uint8_t cstrstt(cstr_t)		
 * 				: Return cstrstt variable
 * uint8_t cstr_isnull(cstr_t)	
 * 				: Check if string is NULL, 0-sized
 * uint8_t* cstr_head(cstr_t)	
 * 				: Return position of the metadata head
 * uint8_t* cstr_tail(cstr_t)
 * 				: Return position of the '\0'
 * cstr_tt cstrtype(cstr_t)
 * 				: Type of p
 * uint16_t cstr_bufsize(cstr_t)
 * 				: 'bufsize' value
 * size_t cstr_bufsize_s(cstr_t)
 * 				: 'bufsize' size
 * uint32_t cstr_relsiz(cstr_t) 
 * 				: 'relsiz' value
 * size_t cstr_relsiz_s(cstr_t) 
 * 				: 'relsiz' size
 * size_t cstrdatoff(cstr_t)
 * 				: cstr data offset (aka size of the header)
 * size_t cstrdatoff_wn(size_t) 
 * 				: cstr data offset with given number of characters
 * header_cnt get_meta(cstr_t)
 * 				: Get header_cnt-structured metadata
 * cstr_buffer_size(cstr_t)	
 * 				: Get buffer size
 * cstr_buffer_size_wt(cstr_tt) 
 * 				: Get buffer size for type
 * cstr_buffer_size_wn(size_t)
 * 				: Get buffer size with given number of characters
 * size_t cstrrmn (cstr_t pc)
 * 				: Get remain block of 'char' unused 
 * cstr_tt cstr_typewn (size_t nbytes)
 * 				: Get type with given number of characters
 * size_t nof_buffer(size_t nbytes)
 * 				: Get number of buffers for given number of characters
 * size_t shrink_buf(size_t nbytes)
 * 				: Get number of character to be allocated to fit the buffer size with given number of characters in use
 * header_cnt gen_header(size_t nbytes)
 * 				: Get fresh header created for string of nbytes characters
 * size_t sizeof_header(header_cnt)
 * 				: Get size of metadata 
 * char* cstr_setmeta(header_cnt, cstr_t)
 * 				: Set metadata for a given string
 * size_t get_header_inf(header_cnt, HEADER_INFTYPE)
 * 				: Get information from header struct
 *
 *
 * */
#ifndef FLIB_CSTR_H
#define FLIB_CSTR_H

#include "cstr_cfg.h"
#include <string.h>
#include <stdint.h>
#ifdef CSTR_VERBAL
	#include <stdio.h>
#endif /*CSTR_VERBAL*/

#ifdef CSTR_SECURITY_WIPE
    #define CSTR_ZERO_STRING
#endif /* not CSTR_SECURITY_WIPE*/

typedef char* cstr_t;

#ifdef __cplusplus
extern "C" {
#endif

typedef uint8_t cstr_s;

typedef struct
{
	uint8_t	bufsize;
	uint8_t relsiz;
    cstr_s cstrstt;
} head0;
//#define T0_OFF 	3
#define T0_MAX	0xFF	//Max type0 capacity, equals 2**8 - 1
#ifndef T0_BUFFER
    #define T0_BUFFER 0x10
#endif

typedef struct
{
	uint8_t bufsize;
	uint16_t relsiz;
    cstr_s cstrstt;
} head1;
//#define T1_OFF 4
#define T1_MAX 0xFF	//Max typ1 capacity, equals 2**16 -1
#ifndef T1_BUFFER 
    #define T1_BUFFER 0x400
#endif

typedef struct
{
	uint16_t bufsize;
	uint32_t relsiz;
    cstr_s cstrstt;
} head2;
//#define T2_OFF 7
#define T2_MAX 0xFFFFFFFF      //Max typ2 capacity, equals 2**32 -1
#ifndef T2_BUFFER
    #define T2_BUFFER 0x1000
#endif
typedef union
{
	head0 h_0;
	head1 h_1;
	head2 h_2;
} header_cnt;

typedef enum {
	CSTR_TYPE0	= 0x01,
	CSTR_TYPE1	= 0x02,
	CSTR_TYPE2	= 0x03
} cstr_tt;
//Generate
cstr_t	ncstrmt();
cstr_t 	ncstrnew (size_t);
cstr_t 	ncstrdup (const char*);
cstr_t	ncstrdcpy (cstr_t);				// Deep copy
cstr_t 	ncstrcdup (cstr_t*);			// Shallow copy and invalidate old string
cstr_t	nfcstrdup(const char*, ...);	// Format string
//Manipulation
//
//Append

char*	cstrcpy(cstr_t* dest, cstr_t* src);				// Transfer ownership
char*	cstrdcpy (cstr_t* dest, cstr_t src);			// Deep copy
char* 	cstrdgcpy (cstr_t* dest, const char* src);

char*	cstrncpy(cstr_t* dest, cstr_t* src, size_t nbytes);				// Transfer ownership
char* 	cstrndcpy (cstr_t* dest, cstr_t src, size_t nbytes);			// Deep copy
char* 	cstrndgcpy (cstr_t* dest, const char* src, size_t nbytes);


char*	cstrcat (cstr_t* dest, cstr_t src);
char*	cstrgcat (cstr_t* dest, const char* src);

char*	cstrncat (cstr_t* dest, cstr_t src, size_t nbytes);
char* 	cstrngcat (cstr_t* dest, const char* src, size_t nbytes);


uint8_t	cstr_reeval (cstr_t);

//Free
cstr_t	cstrfree (cstr_t);

//Examination
//
//Assess
size_t 	cstrbuf (cstr_t);	//Buffer in state
size_t	cstrlen (cstr_t);	//Length in use by string
size_t	cstrrmn (cstr_t);	//Remain size
/*
int 	cstrcasecmp (cstr_t, cstr_t);		//Compare ignoring case
int 	cstrncasecmp (cstr_t, cstr_t, size_t);	//Compare by certain number of characters ignoring case
char* 	index (cstr_t s, char c);		//Return a pointer to the first occurance of character c in string s
char* 	rindex (cstr_t s, char c);		//Return a pointer to the last occurance of character c in string s
*/
/*
int 	cstrcmp (cstr_t, cstr_t);		//Compare
int 	cstrncmpr (cstr_t, cstr_t, int);	//Compare by certain number of characters
size_t	cstrcspn (cstr_t s, cstr_t reject);	//Calculate the length of initial segement in string s which does not contain any of bytes in the string reject

//Token related
char* 	cstrstr (cstr_t haystack, cstr_t needle);
char* 	cstrgstr (cstr_t haystack, const char * needle);

char* 	cstrtok (cstr_t s, cstr_t delim);
char* 	cstrgtok (cstr_t s, const char* delim);
*/
#ifdef __cplusplus
}
#endif

#endif

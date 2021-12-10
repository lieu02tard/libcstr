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
typedef const char* cstr_const_t;
#ifdef __cplusplus
extern "C" {
#endif

#ifndef CSTR_ONLY_TYPE
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

#ifndef CSTR_ONLY_STRUCT
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


inline void	cstr_reeval (cstr_t);

//Free
inline void	cstrfree (cstr_t);

//Examination
//
//Assess
size_t 	cstrbuf (const cstr_const_t);	//Buffer in state
size_t	cstrlen (const cstr_const_t);	//Length in use by string
size_t	cstrrmn (const cstr_const_t);	//Remain size
#endif /* not CSTR_ONLY_STRUCT */
#ifdef __cplusplus
}
#endif
#endif /* not CSTR_TYPE_ONLY */
#endif /* not FLIB_CSTR_H */

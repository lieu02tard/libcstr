//This is intended for memory-safe C-style string equivalent for strings.h and string.h
#ifndef FARGPARSE_CSTR_H
#define FARGPARSE_CSTR_H
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#define BUFSIZ 8192
typedef struct cstrstt
{
	char owns;
	char read;
	char writes;
} cstrstt;
enum CSTR_STATE
{
	CSTRSTT_OWN	= 0x01,
	CSTRSTT_READ	= 0x02,
	CSTRSTT_WRITE	= 0x04
};
typedef struct cstr cstr;
struct cstr
{
	char* 	content;
	char	state;		//Content ownership of content and permission(write/read-only)
	cstr* 	base;		//Pointer of cstr object holding real ownership
	int 	share;		//Number of cstr object are using content. Only base object are required to save this	
	size_t 	bufmul;		//Number of buffer
	size_t	relsiz;		//Realsize, aka the size of data before '\0' 
};

////CSTR-only function
//
//Initialize (or clear)
int cstrclr(cstr*, size_t initbuf);		//Returning state .

//Transfer ownership from SRC to DEST
//This function will simply nullified DEST and move the ownership of SRC to DEST.
//SRC still retain 
char* cowntrans(cstr* DEST, cstr* SRC);

//Grant using permision
char* cgrperm(cstr* base, cstr* dest, char perm);

//Re-calculate bufmul and relsiz
int creeval(cstr*);

//Revoke using permissions
int crevperm(cstr*);

//Soft copy
//Return soft copy of the original string
cstr sftcpy(cstr);

////String examination
//Most of string examination functions are just function in string.h or strings.h with extra step
////Fork from strings.h

//strings.h not found
/*
//Compare ignoring case
int cstrcasecmp(cstr, cstr);

//Compare to the first n bytes ignoring case
int cstrncasecmp(cstr, cstr);

//Return a pointer to the first occurance of the character c in string s
char* cindex(cstr, int);

//Return a pointer to the last occurance of the character c in the string s
char* crindex(cstr, int);
*/

////Fork from string.h
//Compare strings
int cstrcmp(cstr, cstr);

#ifdef CSTR_LOCALE
#include <locale.h>
//Compare string using current locale
int cstrcoll(cstr, cstr);
#endif

//Calculate the length of the initial segment of the string s which doesn't contain any of bytes in the string reject
size_t cstrcspn(cstr, cstr reject);

//Length
size_t cstrlen(cstr);

//Compare at most n bytes of strings
int cstrncmp(cstr, cstr, int);

//Return a pointer to the first occurance in the string s of one of the bytes in string accept
char* cstrpbrk(cstr, cstr accept);

//Extract the initial token in stringp that is delimited by one of the bytes in delim
char* cstrsep(cstr stringp, cstr delim);

//Calculate the length of the starting segment in the string s that consists entirely of bytes in accept
size_t cstrspn(cstr , cstr accept);

//Find the first occurance of substring needle in string haystack, re-turning a pointer to the found substring
char* cstrstr(cstr haystack, cstr needle);

//Extract tokens from string s that are delimited by one of the bytes in delim
char* cstrtok(cstr, cstr delim);

////
////String manipulation
////

//Append the string src to string dest, returning a pointer to dest
cstr cstrcpy(cstr dest, cstr src);

//Return a deplicate of string s in memory allocated using malloc(3)
cstr cstrdup(cstr);

//Randomly swap the characters in string
//strfry currently not available
//cstr cstrfry(cstr string);

//Append at the most n bytes for string src to string dest, returning a pointer to dest
cstr cstrncat(cstr dest, cstr src, size_t n);

#define MAXS(a, b) (a > b) ? a : b

#endif

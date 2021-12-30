#ifndef _CSTR_UTILITY_H_
#define _CSTR_UTILITY_H_

#include "cstr.h"
#include "config.h"

#ifdef __cplusplus
extern "C" {
#endif
// Manipulation function
//
// Overwrite
extern char* cstrcpy(cstr_t *dest, cstr_t *src);		// Transfer ownership
extern char* cstrdcpy(cstr_t *dest, cstr_t src);		// Deep copy
extern char* cstrdgcpy(cstr_t *dest, const char* src);	// From literal

extern char* cstrncpy(cstr_t *dest, cstr_t* src, size_t nbytes);	// Transfer ownership
extern char* cstrndcpy(cstr_t *dest, cstr_t src, size_t nbytes);	// Deep copy
extern char* cstrndgcpy(cstr_t *dest, const char* src, size_t nbytes);	// From literal

// Append
extern char* cstrcat(cstr_t *dest, cstr_t src);
extern char* cstrgcat(cstr_t *dest, const char* src);

extern char* cstrncat(cstr_t *dest, cstr_t src, size_t nbytes);
extern char* cstrngcat(cstr_t *dest, const char* src, size_t nbytes);
#ifdef __cplusplus
}
#endif
#endif

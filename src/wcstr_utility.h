#ifndef _CSTR_UTILITY_H_
#define _CSTR_UTILITY_H_
#include "wcstr.h"

#ifdef __cplusplus
extern "C" {
#endif
// Manipulation function
//
// Overwrite
extern WCHAR_TYPE* wcstrcpy(wcstr_t *dest, wcstr_t *src);		// Transfer ownership
extern WCHAR_TYPE* wcstrdcpy(wcstr_t *dest, const wcstr_const_t src);		// Deep copy
extern WCHAR_TYPE* wcstrdgcpy(wcstr_t *dest, const WCHAR_TYPE* src);	// From literal

extern WCHAR_TYPE* wcstrncpy(wcstr_t *dest, wcstr_t* src, size_t nbytes);	// Transfer ownership
extern WCHAR_TYPE* wcstrndcpy(wcstr_t *dest, const wcstr_const_t src, size_t nbytes);	// Deep copy
extern WCHAR_TYPE* wcstrndgcpy(wcstr_t *dest, const WCHAR_TYPE* src, size_t nbytes);	// From literal

// Append
extern WCHAR_TYPE* wcstrcat(wcstr_t *dest, const wcstr_const_t src);
extern WCHAR_TYPE* wcstrgcat(wcstr_t *dest, const WCHAR_TYPE* src);

extern WCHAR_TYPE* wcstrncat(wcstr_t *dest, const wcstr_const_t , size_t nbytes);
extern WCHAR_TYPE* wcstrngcat(wcstr_t *dest, const WCHAR_TYPE* src, size_t nbytes);
#ifdef __cplusplus
}
#endif
#endif

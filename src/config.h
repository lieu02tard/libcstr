#ifndef _CSTR_CONFIG_H_
#define _CSTR_CONFIG_H_


#ifndef __release
	#define CSTR_DEBUG
#endif

#ifndef CSTR_MALLOC
	#define CSTR_MALLOC malloc
#endif

#ifndef CSTR_CALLOC
	#define CSTR_CALLOC calloc
#endif

#ifndef  CSTR_REALLOC
	#define CSTR_REALLOC realloc
#endif

#ifndef CSTR_FREE
	#define CSTR_FREE free
#endif

#if defined __LP64__  && defined __want_64
	#define HAVE_64_BITS
#endif


#endif

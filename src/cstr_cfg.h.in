#ifndef CSTR_CONFIG_H
#define CSTR_CONFIG_H
#ifdef CSTR_GENERAL_TEMPLATE

#ifndef CSTR_ALTMEM     //Alternate memory library other than libc
#define CSTR_LIBC_ALLOC
#include <stdlib.h>
#define cstr_malloc malloc
#define cstr_realloc realloc
#define cstr_calloc calloc
#define cstr_free free
#endif  /*CSTR_ALTMEM*/

#ifndef CSTR_CUSTOMIZED_DEF //Use customized settings, not in <cstr_cfg.h>
#define CSTR_VERBAL         //Print (fatal) error, mostly indicate memory corruption
#include <stdio.h>
//#define CSTR_DEBUG        //Print debug message. Only use in test programm
#ifndef CSTR_VERBAL_MODULE_NAME
    #define CSTR_VERBAL_MODULE_NAME "cstr"
#endif /*CSTR_VERBAL_MODULE_NAME*/
#define CSTR_FATAL_ALLOC   //Exit program when malloc() return NULL. Should be used
#define CSTR_AUTOEVAL_OFF   //Call reeval frequently to check on string
#ifndef CSTR_FILEDEF
    #define CSTR_FILEDEF stderr //file in which to print out error
#endif /*CSTR_FILEDEF*/
#define CSTR_SECURITY_WIPE  //Wipe unused string for security reason. Note that this also define CSTR_ZERO_STRING
#define CSTR_ZERO_STRING    //Zero all unused space. Can be commented out to freeup resources
#define CSTR_SAFECLONE      //Safely clone 'cstr_t' string, thus avoid corrupted string to be cloned. When 'CSTR_AUTOEVAL_OFF' is defined, this is a waste
#define CSTR_NOMIDDLE_TERM  //Decalre that user will not use a middle-string '\0' terminator. This provide better memory safety checking
#endif /*CSTR_CUSTOMIZED_DEF*/
#endif /*not CSTR_GENERAL_TEMPLATE*/
#endif /*CSTR_CONFIG_H*/

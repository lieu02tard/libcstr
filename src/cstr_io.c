#define __need_struct
#define __need_cstr_inner_func

#include "cstr_io.h"
#include "cstr_dbg.h"
#include "cstr_utility.h"

#include <stdio.h>
#include <stdlib.h>

/**
 * cstr_delim - Get from input stream until delimiters
 * @p:		&cstr_t string
 * @size:	maximum size to read
 * @delim:	delimiter character
 * @index:	write position
 * @fd:		file descriptor
 * @mode:	write mode
 *
 * Write from @fd stream to @p until meet @delim or exceed @size
 * If @size is 0, maximum size would be abolished and cstr_delim() will read until @delim
 * When in CSTR_IO_APPEND mode, function will write from the first '\0' detected in the string and ignore @index.
 * When in CSTR_IO_WRITE mode, function will write from the position denoted by @index. If @index is NULL, write from the begin of the string.
 * After read complete, *index will be set to the position of the delimiter
 * Buffer are automatically allocate to hold the stream. cstr_delim() will not shrink the string
 */

/**
 * cstr_getline - Get line from input stream
 * @p:		&cstr_t string
 * @size:	maximum size to read
 * @index:	read position
 * @fd:		file descriptor
 * @mode:	write mode
 *
 * Exactly the same behaviour with cstr_delim() except that it will terminate if a '\n' or an EOF encountered
 */

/**
 * cstr_fgets - Get from input stream
 * @p:		&cstr_t string
 * @size:	maximum size to read
 * @index:	write position
 * @fd:		file descriptor
 * @mode:	write mode
 *
 * Exactly the same behaviour with cstr_delim() except that it will terminate if an EOF is encountered
 */

/**
 * cstr_getc - Get character from input stream
 * @p:		&cstr_t string
 * @fd:		file decriptor
 * 
 * Write a character from input stream to the end of @p
 */

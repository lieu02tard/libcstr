#define __need_struct
#define __need_cstr_inner_func

#include "cstr_io.h"
#include "cstr_dbg.h"
#include "cstr_utility.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

__attribute__((always_inline))
inline int cread(char* buf, char delim, int max, int fd)
{
	char c;
	int i = 0;
	while((i < max) && ((c = read(fd, buf, sizeof(char)) != EOF)))
	{
		*(buf++) = c;
		++i;
		if (c == delim)
			break;
	}
	return i;
}

__attribute__((always_inline))
inline int cread_no_delim(char* buf, int max, int fd)
{
	char c;
	int i = 0;
	while((i < max) && ((c = read(fd, buf, sizeof(char)) != EOF)))
	{
		*(buf++) = c;
		++i;
	}
	return i;
}
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
char* cstr_delim (cstr_t p, size_t size, char delim, size_t* index, int fd, enum write_mode mode)
{
	char buf[CSTR_IO_BUFFER];
	char* c = NULL;
	int n = 0;
	n = cread(buf, delim, CSTR_IO_BUFFER, fd);
	c = __cstr_write(p, buf, n, mode);
	if (index)
		*index += n;
	while((n = cread(buf, delim, CSTR_IO_BUFFER, fd)) != 0)
	{
		c = __cstr_write(p, buf, n, WRITE_APPEND);
		if (index)
			*index += n;
	}
	
	return c;
}

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
char* cstr_getline(cstr_t p, size_t size, size_t* index, int fd, enum write_mode mode)
{
	return cstr_delim(p, size, '\n', index, fd, mode);
}
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
char* cstr_fgets(cstr_t p, size_t size, size_t* index, int fd, enum write_mode mode)
{
	char buf[CSTR_IO_BUFFER];
	char *c =NULL;
	int n = 0;
	n = cread_no_delim(buf, CSTR_IO_BUFFER, fd);
	c = __cstr_write(p, buf, n, mode);
	if (index)
		*index += n;
	while ((n = cread_no_delim(buf, CSTR_IO_BUFFER, fd)) != 0)
	{
		c == __cstr_write(p, buf, n, WRITE_APPEND);
		if (index)
			*index += n;
	}

	return c;
}

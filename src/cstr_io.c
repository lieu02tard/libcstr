#define __need_struct
#define __need_cstr_inner_func

#define CSTR_IO_BUFFER 64
#include "cstr_io.h"
#include "cstr_dbg.h"
#include "cstr_utility.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

__attribute__((always_inline))
inline int cread(char* buf, char delim, int max, int fd)
{
	char c; int n;
	int i = 0;
	while((i < max) && ((n = read(fd, buf, max * sizeof(char)) != EOF)))
	{
#ifdef CSTR_DEBUG
		puts(buf);
#endif
		c = *(buf++);
		if (c == delim)
		{
			*buf = '\0';
			break;
		}
	}
	return i;
}

__attribute__((always_inline))
inline int cread_no_delim(char* buf, int max, int fd)
{
	char c; int n;
	int i = 0;
	while((i < max) && (n = read(fd, buf, max * sizeof(char)), c != EOF))
	{
		//
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
char* cstr_delim (cstr_t* p, size_t size, char delim, size_t* index, int fd, enum write_mode mode)
{
	if (!p)
		return NULL;

	char buf[CSTR_IO_BUFFER];
	char* c = NULL;
	int n = 0;
	char* head = NULL;
	n = cread(buf, delim, CSTR_IO_BUFFER, fd);

	cstr_wrapper pos = 0;
	enum cstr_tt otype = __cstr_type(*p);
	head = __cstr_head(*p, otype);
	struct alloc_man man = __cstr_getman_wp(*p, otype);

	switch (mode)
	{
		case WRITE_APPEND:
			pos = __cstr_relsiz(*p, otype);
			if (pos + n > man.nofblk - man.datoff)
			{
				man = __cstr_getman(pos + n);
				otype = man.type;
				char* _alloc = (char*) realloc(head, man.nofblk * sizeof(char));
				if (!_alloc)
					__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
				head = _alloc;
				memcpy(_alloc + man.datoff + pos, buf, n * sizeof(char));
				*p = __cstr_set_header(_alloc, &man, otype);
				c = *p + pos + n;
				*c = '\0';
				pos += n;
			}
			else
			{
				memcpy(p + pos, buf, n * sizeof(char));
				c = *p + pos + n;
				*c = '\0';
				pos += n;
			}
			break;

		case WRITE_OVERWRITE:
			pos = 0;
			if (n > man.nofblk - man.datoff)
			{
				man  = __cstr_getman(n);
				otype = man.type;
				char* _alloc = (char*) realloc(head, man.nofblk * sizeof(char));
				if (!_alloc)
					__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
				head = _alloc;
				memcpy(_alloc + man.datoff, buf, n *sizeof(char));
				*p = __cstr_set_header(_alloc, &man, otype);
				c = *p + n;
				*c = '\0';
				pos += n;
			}
			else
			{
				memcpy(p, buf, n * sizeof(char));
				c = *p + n;
				*c = '\0';
				pos += n;
			}
			break;
			
		default:
			exit(EXIT_FAILURE);

	}
	if (index)
		*index += n;
	while((n = cread(buf, delim, CSTR_IO_BUFFER, fd)) != 0)
	{
		if (pos + n > man.nofblk - man.datoff)
		{
			man = __cstr_getman(pos + n);
			otype = man.type;
			char* _alloc = (char*) realloc(head, man.nofblk * sizeof(char));
			if (!_alloc)
				__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
			head = _alloc;
			memcpy(_alloc + man.datoff + pos, buf, n * sizeof(char));
			*p = __cstr_set_header(_alloc, &man, otype);
			c = *p + pos + n;
			*c = '\0';
			pos += n;
		}
		else
		{
			memcpy(p + pos, buf, n * sizeof(char));
			c = *p + pos + n;
			*c ='\0';
			pos += n;
		}
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
char* cstr_getline(cstr_t* p, size_t size, size_t* index, int fd, enum write_mode mode)
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
char* cstr_fgets(cstr_t* p, size_t size, size_t* index, int fd, enum write_mode mode)
{
    char buf[CSTR_IO_BUFFER];
	char* c = NULL;
	int n = 0;
	char* head = NULL;
	n = cread_no_delim(buf, CSTR_IO_BUFFER, fd);

	cstr_wrapper pos = 0;
	enum cstr_tt otype = __cstr_type(*p);
	head = __cstr_head(*p, otype);
	struct alloc_man man = __cstr_getman_wp(*p, otype);

	switch (mode)
	{
		case WRITE_APPEND:
			pos = __cstr_relsiz(*p, otype);
			if (pos + n > man.nofblk - man.datoff)
			{
				man = __cstr_getman(pos + n);
				otype = man.type;
				char* _alloc = (char*) realloc(head, man.nofblk * sizeof(char));
				if (!_alloc)
					__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
				head = _alloc;
				memcpy(_alloc + man.datoff + pos, buf, n * sizeof(char));
				*p = __cstr_set_header(_alloc, &man, otype);
				c = *p + pos + n;
				*c = '\0';
				pos += n;
			}
			else
			{
				memcpy(*p + pos, buf, n * sizeof(char));
				c = *p + pos + n;
				*c = '\0';
				pos += n;
			}
			break;

		case WRITE_OVERWRITE:
			pos = 0;
			if (n > man.nofblk - man.datoff)
			{
				man  = __cstr_getman(n);
				otype = man.type;
				char* _alloc = (char*) realloc(head, man.nofblk * sizeof(char));
				if (!_alloc)
					__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
				head = _alloc;
				memcpy(_alloc + man.datoff, buf, n *sizeof(char));
				*p = __cstr_set_header(_alloc, &man, otype);
				c = *p + n;
				*c = '\0';
				pos += n;
			}
			else
			{
				memcpy(*p, buf, n * sizeof(char));
				c = *p + n;
				*c = '\0';
				pos += n;
			}
			break;
			
		default:
			exit(EXIT_FAILURE);

	}
	if (index)
		*index += n;
	while((n = cread_no_delim(buf, CSTR_IO_BUFFER, fd)) != 0)
	{
		if (pos + n >= man.nofblk - man.datoff)
		{
			man = __cstr_getman(pos + n);
			otype = man.type;
			char* _alloc = (char*) realloc(head, man.nofblk * sizeof(char));
			if (!_alloc)
				__cstr_debug(CSTR_DEBUG_ALLOC_FAILURE);
			head = _alloc;
			memcpy(_alloc + man.datoff + pos, buf, n * sizeof(char));
			*p = __cstr_set_header(_alloc, &man, otype);
			c = *p + pos + n;
			*c = '\0';
			pos += n;
		}
		else
		{
			memcpy(*p + pos, buf, n * sizeof(char));
			c = *p + pos + n;
			*c ='\0';
			pos += n;
		}
		if (index)
			*index += n;
	}

	return c;
}

void cstr_puts(cstr_t p, size_t pos, int fd)
{
	enum cstr_tt otype = __cstr_type(p);
	cstr_wrapper real_len = __cstr_relsiz(p, otype);
	cstr_wrapper to_write = real_len - pos;
	if (to_write < 0)
	{
		__cstr_debug(CSTR_DEBUG_OUT_OF_INDEX);
		return;
	}
	write(fd, p + pos, to_write);
}

static inline cstr_wrapper __min(cstr_wrapper a, cstr_wrapper b)
{
	return (a < b) ? a : b;
}
void cstr_putsn(cstr_t p, size_t pos, size_t size, int fd)
{
	enum cstr_tt otype = __cstr_type(p);
	cstr_wrapper real_len = __cstr_relsiz(p, otype);
	cstr_wrapper to_write = __min(size, real_len - pos);

	if (to_write < 0)
	{
		__cstr_debug(CSTR_DEBUG_OUT_OF_INDEX);
		return;
	}
	write(fd, p + pos, to_write);
}

void cstr_dump(cstr_t p, int fd)
{
	enum cstr_tt otype = __cstr_type(p);
	void* head = __cstr_head(p, otype);
	cstr_wrapper to_write = __cstr_nofbuf(p, otype) * __cstr_datbuf(otype) + __cstr_datoff(otype);
	write(fd, head, to_write);
}

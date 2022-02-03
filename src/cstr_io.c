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

/**
 * cstr_read_pos - Read from file descriptor
 * @p:		string
 * @index:	size pointer
 * @pos:	write position
 * @fd:		file descriptor
 *
 * Read data from file descriptor @fd and write to @p at position @pos
 * After read completely, write number of bytes written to @index
 * Return 0 if error were met or reach EOF
 */
int  cstr_read_pos(cstr_t *p, size_t *index, size_t pos, int fd)
{
	char buf[CSTR_IO_BUFFER];
	size_t _read = 0;
	size_t room = 0;

	cstr_t s = *p;
	cstr_make_room(p, CSTR_IO_BUFFER * 2 + pos);
	room = CSTR_IO_BUFFER * 2;
	do {
		_read = read(fd, buf, CSTR_IO_BUFFER);
		if (_read > room)
		{
			cstr_exp_grow(p);
			s = *p;
			room = cstr_room(s);
		}

		cstr_write0_fast(s, buf, _read, pos);
		pos += _read;
		room -= _read;
	} while(_read);

	*index = pos;
	return pos;
}

/**
 * cstr_read_append - Read from file descriptor and write at end
 * @p:		string
 * @index:	size pointer
 * @fd:		file descriptor
 *
 */
int cstr_read_append(cstr_t *p, size_t *index, int fd)
{
	return cstr_read_pos(p, index, __cstr_relsiz(*p), fd);
}

/**
 * cstr_read - Read from file descriptor and write at beginning
 * @p:		string
 * @index:	size pointer
 * @fd:		file descriptor
 *
 */
int cstr_read(cstr_t *p, size_t *index, int fd)
{
	return cstr_read_pos(p, index, 0, fd);
}

/** 
 * _read_delim - Read and classify delimiter character
 *
 * @src:	characters buffer
 * @size:	size to read
 * @delim:	delimiter character
 *
 * Read all of @src and find the @delim character. If found, return position of that delim characters and write at that position '\0'
 * If not found, return 0 and continue
 */
extern inline size_t _read_delim(char *src, ssize_t size, char delim)
{
	for (int i = 0; i <= size; i++)
	{
		if (src[i] == delim)
		{
			src[i] = '\0';
			return i;
		}
	}
	return 0;
}
/**
 * cstr_read_delim_pos - Read from file descriptor with delim characters
 * @p:		string
 * @delim:	delimiter characters
 * @index:	size pointer
 * @pos:	write position
 * @fd:		file descriptor
 *
 */
int cstr_read_delim_pos(cstr_t *p, char delim, size_t *index, size_t pos, int fd)
{
	char buf[CSTR_IO_BUFFER];
	ssize_t _read = 0;
	ssize_t _write = 0;
	size_t room = 0;

	cstr_t s = *p;
	cstr_make_room(p, CSTR_IO_BUFFER * 2 + pos);
	room = CSTR_IO_BUFFER * 2;
	do {
		_read = read(fd, buf, CSTR_IO_BUFFER);
		if (_read > room)
		{
			cstr_exp_grow(p);
			s = *p;
			room = cstr_room(s);
		}
		_write = _read_delim(buf, _read, delim);
		if (_write)
		{
			cstr_write0_fast(s, buf, _write, pos);
			pos += _write;
			*index = pos;
			return pos;
		}

		cstr_write0_fast(s, buf, _read, pos);
		pos += _read;
		room -= _read;
	} while(_read);

	*index = pos;
	return pos;

}

/**
 * cstr_read_delim_append - Append with delim character
 * @p:		string
 * @delim:	delim character
 * @index:	size pointer
 * @fd:		file descriptor
 *
 */
int cstr_read_delim_append(cstr_t *p, char delim, size_t *index, int fd)
{
	return cstr_read_delim_pos(p, delim, index, __cstr_relsiz(*p), fd);
}

/**
 * cstr_read_delim - Read with delim character
 * @p:		string
 * @delim:	delim character
 * @index:	size pointer
 * @fd:		file descriptor
 *
 */
int cstr_read_delim(cstr_t *p, char delim, size_t *index, int fd)
{
	return cstr_read_delim_pos(p, delim, index, 0, fd);
}

/**
 * cstr_getline - getline() implementation for cstr
 * @p:		string
 * @index:	size pointer
 * @pos:	write position
 * @fd:		file descriptor
 *
 */
int cstr_getline(cstr_t *p, size_t *index, size_t pos, int fd)
{
	return cstr_read_delim_pos(p, '\n', index, pos, fd);
}

/**
 * cstr_putsn - puts() implementation for cstr
 * @p:		string
 * @pos:	puts position
 * @size:	puts size
 * @fd:		file descriptor
 *
 */
void cstr_putsn(const cstr_const_t p, size_t pos, size_t size, int fd)
{
	write(fd, p + pos, size);
}

/**
 * cstr_puts - puts() implementation for cstr
 * @p:		string
 * @pos:	puts position
 * @fd:		file descriptor
 *
 */
void cstr_puts(const cstr_const_t p, size_t pos, int fd)
{
	write(fd, p + pos, __cstr_relsiz(p));
}

/**
 * cstr_dump - Dump all data stored in string
 * @p:		string
 * @fd:		file descriptor
 *
 */
void cstr_dump(const cstr_const_t p, int fd)
{
	struct head0 *pc = (struct head0*)p;
	--pc;
	struct head0 tmp = *pc;
	size_t nofblk = tmp.nofbuf * __cstr_datbuf(__cstr_from_flag(tmp.flag));
	write(fd, pc, nofblk);
}

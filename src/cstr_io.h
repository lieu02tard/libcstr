/* cstr - C string manipulation library
 * Copyright 2021 friedka
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
#ifndef _CSTR_IO_H_
#define _CSTR_IO_H_

#include "cstr.h"

#include <errno.h>
/* This header provide extended I/O for cstr_t type, include implementation for getline() and simple input with C++-like call
 * This is not to replace normal C-like I/O
 * Use at your own risk */


#ifndef CSTR_IO_BUFFER
	#define CSTR_IO_BUFFER 4096
	#define CSTR_IO_FIRST_TYPE CSTR_TYPE_1	// Minimum type to hold buffer
	#define CSTR_IO_FIRST_NOFBUF 2		// Minumum number of nofbuf to hold a buffer
	#define CSTR_IO_FIRST_HOLD 1		// Number of I/O buffer to fit string buffer
#endif


extern int cstr_read_pos(cstr_t*, size_t *index, size_t pos, int fd);
extern int cstr_read_append(cstr_t*, size_t *index, int fd);
extern int cstr_read(cstr_t*, size_t *index, int fd);

extern int cstr_read_delim_pos(cstr_t*, char delim, size_t *index, size_t pos, int fd);
extern int cstr_read_delim_append(cstr_t*, char delim, size_t *index, int fd);
extern int cstr_read_delim(cstr_t*, char delim, size_t *index, int fd);

extern int cstr_getline(cstr_t* ,size_t *index, size_t pos, int fd);

extern void cstr_puts(const cstr_const_t, size_t pos, int fd);
extern void cstr_putsn(const cstr_const_t, size_t pos, size_t size, int fd);
extern void cstr_dump(const cstr_const_t, int fd);

#endif

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
#endif

#ifndef __get_write_enum
#define __get_write_enum
enum write_mode {
	WRITE_APPEND	= 0x01,
	WRITE_OVERWRITE	= 0x02
};
#endif

extern char* cstr_delim(cstr_t*,  size_t size, char delim, size_t *index, int fd, enum write_mode);
extern char* cstr_getline(cstr_t* , size_t size, size_t *index, int fd, enum write_mode);
extern char* cstr_fgets(cstr_t* , size_t size, size_t *index, int fd, enum write_mode);

extern void cstr_puts(cstr_t, size_t pos, int fd);
extern void cstr_putsn(cstr_t, size_t pos, size_t size, int fd);
extern void cstr_dump(cstr_t , int fd);
#endif
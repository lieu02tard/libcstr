#include "cstr_dbg.h"
#include <stdlib.h>
#include <stdio.h>

inline void print_title(const char* title)
{
	fputs(c_blue, stdout);
	putc('[', stdout);
	fputs(c_reset, stdout);
	fputs(c_red, stdout);
	fputs(title, stdout);
	fputs(c_reset, stdout);
	fputs(c_blue, stdout);
	putc(']',stdout);
	fputs(c_reset, stdout);
	fputs(": ", stdout);
}

inline void print_debug(const char* title, const char* content)
{
	print_title(title);
	puts(content);
	putc('\n', stdout);
}

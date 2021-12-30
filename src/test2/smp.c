#define CSTR_DEBUG
#include <cstr.h>
#include <cstr_utility.h>
#include <cstr_io.h>

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define SAMPLE_FILE "sample"
int main(int argc, const char* argv[])
{
	int fd = open(SAMPLE_FILE, O_RDONLY);
	cstr_t p = ncstr_new(200);
	size_t index = 0;
	cstr_fgets(&p, BUFSIZ, &index, fd, WRITE_OVERWRITE);
	puts(p);
}

#define CSTR_DEBUG
#include <cstr.h>
#include <stdio.h>
int main(int argc, const char* argv[])
{
	cstr_t cstr_0 = ncstr_new(20);
	cstr_free(cstr_0);
	cstr_t cstr_1 = ncstr_from("Never gonna give you up\n");
	puts(cstr_1);
	cstr_free(cstr_1);
}

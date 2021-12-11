#define CSTR_DEBUG
#include "cstr.h"
#include <stdlib.h>
#include <stdio.h>
#define CSTR_TEST_SIZE 5000
const char* _cstr_test_ = "Never gonna give you up\nNever gonna let you down\nNever gonna run around and desert you\nNver gonna let you cry\nNever gonna say goodby\nNver gonna tell a lie and hurt you\n";
const char* _cstr_test_1 = "NGGYU\nNGGLYD\nNVGR";
int main(int argc, char* argv[])
{
	cstr_t _str_1	= ncstrdup(_cstr_test_1);
	puts("a\n");
	puts(_str_1);
	cstr_t _str_2	= ncstrdcpy(_str_1);
	puts(_str_2);

	cstrfree(_str_1);
	cstrfree(_str_2);
}

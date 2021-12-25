#include <cstr.h>

int main(int argc, const char* argv[])
{
	cstr_t cstr_0 = ncstr_new(20);
	cstr_free(cstr_0);
}

#define CSTR_DEBUG
#include <cstr.h>
#include <cstr_utility.h>
#include <wcstr.h>

#include <stdio.h>
#include <unistd.h>

#include <cstr_io.h>
#include <time.h>
#define RUN_LIMIT 400
int main(int argc, const char* argv[])
{
	int fd = fileno(stdout);
	const char* passage = "Never gonna give you up\n"
		"Never gonna make you cry\n"
		"Never gonna tell a lie\n"
		"And desert you\n";
	for (int i = 0; i < RUN_LIMIT; i++)
	{
		cstr_t cstr_0 = ncstr_new(20);
		cstr_free(cstr_0);

		cstr_t cstr_1 = ncstr_from("Never gonna give you up\n");
		puts("String 1\n"); cstr_puts(cstr_1, 0, fd);
		cstr_t cstr_2 = ncstr_from("Never gonna make you cry\n");
		puts("String 2\n"); cstr_puts(cstr_2, 0, fd);
		cstrcat(&cstr_1, cstr_2);
		puts("String 1\n"); cstr_puts(cstr_1, 0, fd);

		cstr_t cstr_3 = ncstrcpy(cstr_2);
		cstrgcat(&cstr_3, passage);
		puts("String 3\n"); cstr_puts(cstr_3, 0, fd);

		cstr_t cstr_4 = ncstr_from(passage);
		puts("String 4\n"); cstr_puts(cstr_4, 0, fd);
		cstrncat(&cstr_4, cstr_3, 10);
		puts("String 4\n"); cstr_puts(cstr_4, 0, fd);

		cstr_t cstr_5 = ncstrcpy(cstr_4);
		puts("String 5\n"); cstr_puts(cstr_5, 0, fd);
		cstrngcat(&cstr_5, passage, 20);
		puts("String 5\n"); cstr_puts(cstr_5, 0, fd);

		cstr_free(cstr_1);
		cstr_free(cstr_2);
		cstr_free(cstr_3);
		cstr_free(cstr_4);
		cstr_free(cstr_5);

	}
	clock_t runtime = clock();
	printf("Running time: %ld\n", runtime);
}

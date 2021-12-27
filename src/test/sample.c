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
#define CSTR_DEBUG
#include <cstr.h>
#include <cstr_utility.h>
#include <wcstr.h>

#include <stdio.h>
int main(int argc, const char* argv[])
{
	const char* passage = "Never gonna give you up\n"
		"Never gonna make you cry\n"
		"Never gonna tell a lie\n"
		"And desert you\n";
	cstr_t cstr_0 = ncstr_new(20);
	cstr_free(cstr_0);

	cstr_t cstr_1 = ncstr_from("Never gonna give you up\n");
	puts("String 1\n"); puts(cstr_1);
	cstr_t cstr_2 = ncstr_from("Never gonna make you cry\n");
	puts("String 2\n"); puts(cstr_2);
	cstrcat(&cstr_1, cstr_2);
	puts("String 1\n"); puts(cstr_1);

	cstr_t cstr_3 = ncstrcpy(cstr_2);
	cstrgcat(&cstr_3, passage);
	puts("String 3\n"); puts(cstr_3);

	cstr_t cstr_4 = ncstr_from(passage);
	puts("String 4\n"); puts(cstr_4);
	cstrncat(&cstr_4, cstr_3, 10);
	puts("String 4\n"); puts(cstr_4);

	cstr_t cstr_5 = ncstrcpy(cstr_4);
	puts("String 5\n"); puts(cstr_5);
	cstrngcat(&cstr_5, passage, 20);
	puts("String 5\n"); puts(cstr_5);

	cstr_free(cstr_1);
	cstr_free(cstr_2);
	cstr_free(cstr_3);
	cstr_free(cstr_4);
	cstr_free(cstr_5);
}

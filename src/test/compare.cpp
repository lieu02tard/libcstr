#include <time.h>

#include <string>
#include <iostream>

#define RUN_LIMIT 400
int main()
{
	const std::string passage = "Never gonna give you up\n"
		"Never gonna make you cry\n"
		"Never gonna tell a lite\n"
		"And desert you\n";

	for (int i = 0; i < RUN_LIMIT; i++)
	{
		std::cout << "Size: " << passage.size() << '\n';	
		std::string s_1 = "Never gonna give you up\n";
		std::cout<< "String 1\n" << s_1;
		std::string s_2 = "Never gonna make you cry\n";
		std::cout<< "String 2\n" << s_2;
		s_1 += s_2;
		std::cout<<"String 1 \n" << s_1;

		std::string s_3 = s_2;
		s_3 += passage;
		std::cout << "String 3\n" << s_3;

		std::string s_4 = passage;
		std::cout << "String 4\n" << s_4;
		s_4 += s_3.substr(0, 10);
		std::cout << "String 4\n" << s_4;

		std::string s_5 = s_4;
		std::cout << "String 5\n" << s_5;
		s_5 += passage.substr(0, 20);
		std::cout << "String 5\n" << s_5;
	}
	clock_t runtime = clock();
	std::cout << "Running time: " << runtime << '\n';
}

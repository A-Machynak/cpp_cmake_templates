
// Project library
#include "core.h"

// External library
#include "external.h"

#include <iostream>

int main(void)
{
	std::cout << "Hello World!\n"
		<< "Core::Value == " << Core::Value << "\n"
		<< "External::Value == " << ExternalLib::Value << "\n";
	return 0;
}
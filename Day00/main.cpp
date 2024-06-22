#include "../Utils/Utils.h"

auto Part1(const std::vector<std::string>& input)
{
	Utils::Timer timer("Part 1");

	for (const auto& line : input)
	{
		std::cout << line << '\n';
	}

	return 0;
}

auto Part2(const std::vector<std::string>& input)
{
	Utils::Timer timer("Part 2");

	for (const auto& line : input)
	{
		std::cout << line << '\n';
	}

	return 0;
}

int main(int argc, char** argv)
{
	Utils::Timer timer("Day 00");
	try
	{
#ifdef INPUT_TESTING
		std::vector<std::string> lines = Utils::ReadFile("PuzzleTestInput.txt");
#else
		std::vector<std::string> lines = Utils::ReadFile("PuzzleInput.txt");
#endif
		auto result1 = Part1(lines);
		Utils::CheckResult(result1, 0);

		auto result2 = Part2(lines);
		Utils::CheckResult(result2, 0);
	}
	catch (const std::exception& e)
	{
		std::cerr << e.what() << '\n';
		return -1;
	}

	return 0;
}
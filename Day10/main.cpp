#include "../Utils/Utils.h"

auto Part1(const std::vector<std::string>& input)
{
	Utils::Timer timer("Part 1");

	return 0;
}

auto Part2(const std::vector<std::string>& input)
{
	Utils::Timer timer("Part 2");

	return 0;
}

int main(int argc, char** argv)
{
	Utils::Timer timer("Day 10");
	try
	{
#ifdef INPUT_TESTING
		std::vector<std::string> part1Input = Utils::ReadFile("PuzzleTestInput1.txt");
		std::vector<std::string> part2Input = Utils::ReadFile("PuzzleTestInput2.txt");
#else
		std::vector<std::string> part1Input = Utils::ReadFile("PuzzleInput.txt");
		std::vector<std::string> part2Input = part1Input;
#endif
		auto result1 = Part1(part1Input);
		Utils::CheckResult(result1, 0);

		auto result2 = Part2(part2Input);
		Utils::CheckResult(result2, 0);
	}
	catch (const std::exception& e)
	{
		std::cerr << e.what() << '\n';
		return -1;
	}

	return 0;
}
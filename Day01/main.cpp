#include "../Utils/Utils.h"

auto Part1(const std::vector<std::string>& input)
{
	Utils::Timer timer("Part 1");

	int result = 0;
	for (std::string line : input)
	{
		line = std::regex_replace(line, std::regex(R"([\D])"), "");
		result += 10 * (line.front() - '0');
		result += line.back() - '0';
	}

	return result;
}

auto Part2(const std::vector<std::string>& input)
{
	Utils::Timer timer("Part 2");

	int result = 0;
	std::array<std::string, 10> numbers{ "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };
	for (std::string line : input)
	{
		std::cout << "Line: " << line << "\n";
		for (int i = 0; i < line.size(); i++)
		{
			if (isdigit(line[i]))
			{
				result += 10 * (line[i] - '0');
				std::cout << "Found number: " << line[i] - '0' << "\n";
				break;
			}
			else
			{
				bool found = false;
				for (int j = 0; j < numbers.size(); j++)
				{
					if (line.substr(i, numbers[j].size()) == numbers[j])
					{
						result += 10 * j;
						std::cout << "Found word: " << numbers[j] << "\n";
						found = true;
						break;
					}
				}
				if (found)
					break;
			}
		}

		// Now in reverse
		for (int i = line.size(); i >= 0; i--)
		{
			if (isdigit(line[i]))
			{
				result += (line[i] - '0');
				std::cout << "Found reverse number: " << line[i] - '0' << "\n";
				break;
			}
			else
			{
				bool found = false;
				for (int j = 0; j < numbers.size(); j++)
				{
					if (line.substr(i, numbers[j].size()) == numbers[j]) // Could improve by looking in reverse. Right now we're going in reverse for each char in the line, but looking forwards for the word.
					{
						result += j;
						std::cout << "Found reverse word: " << numbers[j] << "\n";
						found = true;
						break;
					}
				}
				if (found)
					break;
			}
		}
	}

	return result;
}

int main(int argc, char** argv)
{
	Utils::Timer timer("Day 01");
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
		Utils::CheckResult(result1, 142);

		auto result2 = Part2(part2Input);
		Utils::CheckResult(result2, 281);
	}
	catch (const std::exception& e)
	{
		std::cerr << e.what() << '\n';
		return -1;
	}

	return 0;
}
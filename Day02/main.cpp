#include "../Utils/Utils.h"

auto Part1(const std::vector<std::string>& input)
{
	Utils::Timer timer("Part 1");

	std::regex regexExpression(R"(Game\s[\d]+|[\d]+\s\w+)");

	std::map<std::string, int> coloredCubeAmounts = {
		{"red", 12},
		{"green", 13},
		{"blue", 14}
	};

	int validGamesIDTotalSum = 0;

	for (std::string line : input)
	{
		int currentGameNumber = 0;
		bool isValid = true;

		// Loop through all matches in current line
		for (std::sregex_iterator i = std::sregex_iterator(line.begin(), line.end(), regexExpression); i != std::sregex_iterator(); i++)
		{
			std::smatch m = *i;
			if (m.position() == 0)
			{
				// Parse game number
				currentGameNumber = stoi(std::regex_replace(m.str(), std::regex(R"([\D])"), "")); // Remove all non-digits
			}
			else
			{
				// Parse the color and amount
				int amount = stoi(std::regex_replace(m.str(), std::regex(R"([\D])"), "")); // Matches all non-digits to replace with nothing. (Keeps digits)
				std::string color = std::regex_replace(m.str(), std::regex(R"([\W\d])"), ""); // Matches all non-words and digits to replace with nothing. (Keeps only words, no digits)

				// Check if color amount is invalid
				if (coloredCubeAmounts[color] < amount)
				{
					isValid = false;
				}
			}

		}

		if (isValid)
		{
			// Remember want the sum of all valid game numbers
			validGamesIDTotalSum += currentGameNumber;
		}
	}

	return validGamesIDTotalSum;
}

auto Part2(const std::vector<std::string>& input)
{
	Utils::Timer timer("Part 2");

	return 0;
}

int main(int argc, char** argv)
{
	Utils::Timer timer("Day 02");
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
		Utils::CheckResult(result1, 8);

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
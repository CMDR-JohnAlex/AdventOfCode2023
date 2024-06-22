#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <chrono>
#include <sstream>

namespace Utils
{
	class Timer
	{
	public:
		Timer(const std::string& label = "")
			: m_Label(label), m_Start(std::chrono::steady_clock::now())
		{
			if (m_Label.size() > 0)
				std::cout << "Timer started: " << m_Label << '\n';
			else
				std::cout << "Timer started\n";
		}

		virtual ~Timer()
		{
			auto end = std::chrono::steady_clock::now();
			std::chrono::duration<float> duration = end - m_Start;
			if (m_Label.size() > 0)
			{
				std::cout << "Time elapsed: " << m_Label << ": " << (duration.count()) << "s\n"; // Seconds
				std::cout << "Time elapsed: " << m_Label << ": " << (duration.count() * 1000) << "ms\n"; // Milliseconds
				std::cout << "Time elapsed: " << m_Label << ": " << (duration.count() * 1000000) << "us" << std::endl; // Microseconds µs
			}
			else
			{
				std::cout << "Time elapsed: " << (duration.count()) << "s\n"; // Seconds
				std::cout << "Time elapsed: " << (duration.count() * 1000) << "ms\n"; // Milliseconds
				std::cout << "Time elapsed: " << (duration.count() * 1000000) << "us" << std::endl; // Microseconds µs
			}
			// Note: I'm flushing the buffer at the end to ensure that the output is displayed immediately in case of a crash right after
		}

	private:
		const std::string m_Label;
		std::chrono::time_point<std::chrono::steady_clock> m_Start; // Use steady_clock instead of high_resolution_clock https://stackoverflow.com/a/37440647
	};

	std::vector<std::string> ReadFile(const std::string& filename)
	{
		std::ifstream file(filename);
		if (!file.is_open())
			throw std::runtime_error("Could not open file");

		std::vector<std::string> lines;
		std::string line;
		while (std::getline(file, line))
		{
			lines.push_back(line);
		}

		return lines;
	}

	template <typename T, typename U>
	void CheckResult(T result, U expected)
	{
#ifdef INPUT_TESTING

		// Spent half an hour trying to find a better way to compare two different
		// data types that may have the same value. So, I guess this is it...
		std::stringstream ss1;
		ss1 << result;
		std::stringstream ss2;
		ss2 << expected;

		if (ss1.str() == ss2.str())
			std::cout << "Result: \"" << result << "\" is correct\n\n";
		else
			std::cout << "Result: \"" << result << "\" is incorrect, expected: \"" << expected << "\"\n\n";
#else
		std::cout << "Result: \"" << result << "\"\n\n";
#endif
	}
}
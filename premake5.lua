-- premake5.lua
workspace "AdventOfCode2023"
	architecture "x64"
	configurations { "DebugTest", "ReleaseTest", "Debug", "Release" }
	startproject "Day00"

	-- Workspace-wide build options for MSVC
	filter "system:windows"
		buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

	flags { "MultiProcessorCompile" }

	postbuildcommands
	{
		'{COPY} "PuzzleInput.txt" "%{cfg.targetdir}"',
		'{COPY} "PuzzleTestInput.txt" "%{cfg.targetdir}"'
	}

	filter "configurations:DebugTest"
		defines "BUILD_DEBUG_TEST"
		defines "INPUT_TESTING"
		runtime "Debug"
		symbols "On"

	filter "configurations:ReleaseTest"
		defines "BUILD_RELEASE_TEST"
		defines "INPUT_TESTING"
		runtime "Release"
		optimize "On"
		symbols "Off"

	filter "configurations:Debug"
		defines "BUILD_DEBUG"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines "BUILD_RELEASE"
		runtime "Release"
		optimize "On"
		symbols "Off"

-- Directories
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"



project "Day00"
	location "Day00"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day00/**.h",
		"Day00/**.c",
		"Day00/**.hpp",
		"Day00/**.cpp"
	}

project "Day01"
	location "Day01"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day01/**.h",
		"Day01/**.c",
		"Day01/**.hpp",
		"Day01/**.cpp"
	}

project "Day02"
	location "Day02"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day02/**.h",
		"Day02/**.c",
		"Day02/**.hpp",
		"Day02/**.cpp"
	}

project "Day03"
	location "Day03"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day03/**.h",
		"Day03/**.c",
		"Day03/**.hpp",
		"Day03/**.cpp"
	}

project "Day04"
	location "Day04"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day04/**.h",
		"Day04/**.c",
		"Day04/**.hpp",
		"Day04/**.cpp"
	}

project "Day05"
	location "Day05"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day05/**.h",
		"Day05/**.c",
		"Day05/**.hpp",
		"Day05/**.cpp"
	}

project "Day06"
	location "Day06"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day06/**.h",
		"Day06/**.c",
		"Day06/**.hpp",
		"Day06/**.cpp"
	}

project "Day07"
	location "Day07"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day07/**.h",
		"Day07/**.c",
		"Day07/**.hpp",
		"Day07/**.cpp"
	}

project "Day08"
	location "Day08"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day08/**.h",
		"Day08/**.c",
		"Day08/**.hpp",
		"Day08/**.cpp"
	}

project "Day09"
	location "Day09"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day09/**.h",
		"Day09/**.c",
		"Day09/**.hpp",
		"Day09/**.cpp"
	}

project "Day10"
	location "Day10"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day10/**.h",
		"Day10/**.c",
		"Day10/**.hpp",
		"Day10/**.cpp"
	}

project "Day11"
	location "Day11"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day11/**.h",
		"Day11/**.c",
		"Day11/**.hpp",
		"Day11/**.cpp"
	}

project "Day12"
	location "Day12"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day12/**.h",
		"Day12/**.c",
		"Day12/**.hpp",
		"Day12/**.cpp"
	}

project "Day13"
	location "Day13"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day13/**.h",
		"Day13/**.c",
		"Day13/**.hpp",
		"Day13/**.cpp"
	}

project "Day14"
	location "Day14"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day14/**.h",
		"Day14/**.c",
		"Day14/**.hpp",
		"Day14/**.cpp"
	}

project "Day15"
	location "Day15"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day15/**.h",
		"Day15/**.c",
		"Day15/**.hpp",
		"Day15/**.cpp"
	}

project "Day16"
	location "Day16"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day16/**.h",
		"Day16/**.c",
		"Day16/**.hpp",
		"Day16/**.cpp"
	}

project "Day17"
	location "Day17"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day17/**.h",
		"Day17/**.c",
		"Day17/**.hpp",
		"Day17/**.cpp"
	}

project "Day18"
	location "Day18"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day18/**.h",
		"Day18/**.c",
		"Day18/**.hpp",
		"Day18/**.cpp"
	}

project "Day19"
	location "Day19"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day19/**.h",
		"Day19/**.c",
		"Day19/**.hpp",
		"Day19/**.cpp"
	}

project "Day20"
	location "Day20"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day20/**.h",
		"Day20/**.c",
		"Day20/**.hpp",
		"Day20/**.cpp"
	}

project "Day21"
	location "Day21"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day21/**.h",
		"Day21/**.c",
		"Day21/**.hpp",
		"Day21/**.cpp"
	}

project "Day22"
	location "Day22"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day22/**.h",
		"Day22/**.c",
		"Day22/**.hpp",
		"Day22/**.cpp"
	}

project "Day23"
	location "Day23"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day23/**.h",
		"Day23/**.c",
		"Day23/**.hpp",
		"Day23/**.cpp"
	}

project "Day24"
	location "Day24"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day24/**.h",
		"Day24/**.c",
		"Day24/**.hpp",
		"Day24/**.cpp"
	}

project "Day25"
	location "Day25"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++20"
	staticruntime "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Day25/**.h",
		"Day25/**.c",
		"Day25/**.hpp",
		"Day25/**.cpp"
	}

project "Utils"
	location "Utils"
	kind "None"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Utils/**.h",
		"Utils/**.c",
		"Utils/**.hpp",
		"Utils/**.cpp"
	}
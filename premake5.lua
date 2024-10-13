workspace "ASCRIPTER"
	architecture "x64"

	configurations
	{
		"Debug",
		"Release"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "ASCRIPTER"
	location "ASCRIPTER"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files 
	{
	}

	includedirs 
	{
	}


	libdirs 
	{
	}
	
	links 
	{
	}

	postbuildcommands  
	{
	}

	filter "system:windows"
		cppdialect "C++17"
		systemversion "latest"

	filter "configurations:Debug"
		symbols "On"
		kind "ConsoleApp"

	filter "configurations:Release"
		optimize "On"
		kind "WindowedApp"
		entrypoint "mainCRTStartup"
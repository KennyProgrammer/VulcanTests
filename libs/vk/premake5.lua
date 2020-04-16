project "Vulcan"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
	    "include/**.hpp",
		"include/**.cpp",
		"include/**.h"
	}

	includedirs
	{
		"include",
		"bin"
	}

	filter "system:windows"
		systemversion "latest"

		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
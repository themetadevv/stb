project "stb"
  kind "StaticLib"
  language "C++"
  cppdialect "C++20"
  staticruntime "off"

  targetdir ("bin/builds/%{cfg.system}/%{cfg.buildcfg}")
  objdir ("bin/intermediates/%{cfg.system}/%{cfg.buildcfg}")

  files {
     "%{prj.location}/**.lua",
     "%{prj.location}/stb_image.h",
     "%{prj.location}/stb_image.cpp",
     "%{prj.location}/stb_image_write.h",
     "%{prj.location}/stb_image_write.cpp",
   }

  filter "system:windows"
		systemversion "latest"
		defines { "_CRT_SECURE_NO_WARNINGS" } 

  filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		optimize "off"

	filter "configurations:Release"
		 runtime "Release"
		 symbols "off"
		 optimize "on"

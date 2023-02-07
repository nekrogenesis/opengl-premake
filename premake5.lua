workspace "opengl"
    configurations { "Debug", "Release" }

project "opengl"
    kind "WindowedApp"
    architecture "x86_64"
    targetname "opengl"
    targetdir "bin/%{cfg.buildcfg}"
    language "C"
    cdialect "c99"
    files {
        "src/**.c",
        "dep/glad/src/**.c"
    }

filter { "system:*" }
    includedirs {
        "dep/glfw/include",
        "dep/glad/include"
    }

filter { "system:windows" }
    libdirs { "dep/glfw/lib-mingw-w64" }
    links { "glfw3", "opengl32", "gdi32" }

filter { "system:linux" }
    libdirs { "dep/glfw/lib" }
    links { "glfw3", "GL", "GLU", "m" }

filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"

filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"
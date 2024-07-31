project ImGui
	kind StaticLib
	language C++
    staticruntime off

	targetdir (bin .. outputdir .. %{prj.name})
	objdir (bin-int .. outputdir .. %{prj.name})

	files
	{
		imconfig.h,
		imgui.h,
		imgui.cpp,
		imgui_draw.cpp,
		imgui_internal.h,
		imgui_tables.cpp,
		imgui_widgets.cpp,
		imstb_rectpack.h,
		imstb_textedit.h,
		imstb_truetype.h,
		imgui_demo.cpp
	}

	filter systemwindows
		systemversion latest
		cppdialect C++17

	filter systemlinux
		pic On
		systemversion latest
		cppdialect C++17

	filter configurationsDebug
		runtime Debug
		symbols on

	filter configurationsRelease
		runtime Release
		optimize on

    filter configurationsDist
		runtime Release
		optimize on
        symbols off
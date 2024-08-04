-- Build
workspace "New Project"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

-- Binary files location
OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

-- Build for core
include "Core/Build-Core.lua"

-- Build for app
include "App/Build-App.lua"
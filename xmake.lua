add_rules("mode.debug", "mode.release")

set_languages("c++23")

-- Required to use PrintToConsole()
add_cxxflags("/Zc:preprocessor")

add_repositories("SkyrimScripting https://github.com/SkyrimScripting/Packages.git")
add_repositories("SkyrimScriptingBeta https://github.com/SkyrimScriptingBeta/Packages.git")
add_repositories("MrowrLib https://github.com/MrowrLib/Packages.git")

add_requires("SkyrimScripting.Plugin", { configs = {
    commonlib = "skyrim-commonlib-ae",
    use_log_library = true,
    use_skyrimscripting_logging = true,
    use_skse_plugin_info_library = true
}})

mod_info = {
    name = "Example of SkyrimScripting Plugin",
    version = "0.0.1",
    author = "Mrowr Purr",
    email = "mrowr.purr@gmail.com",
    mod_files = {"Scripts"}
}

skyrim_versions = {"ae", "se", "vr", "ng"}

includes("papyrus.lua")
includes("skse.lua")

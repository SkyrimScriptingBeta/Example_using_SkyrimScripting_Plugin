add_rules("mode.debug", "mode.release")

set_languages("c++23")

-- Optional, required to use PrintToConsole() macro
-- add_cxxflags("/Zc:preprocessor")

add_repositories("SkyrimScripting https://github.com/SkyrimScripting/Packages.git")
add_repositories("SkyrimScriptingBeta https://github.com/SkyrimScriptingBeta/Packages.git")
add_repositories("MrowrLib https://github.com/MrowrLib/Packages.git")

commonlib_version = "ng"

add_requires("skyrim-commonlib-" .. commonlib_version)
add_requires("SkyrimScripting.Plugin", { configs = { commonlib = "skyrim-commonlib-" .. commonlib_version } })

mod_info = { name = "Example of SkyrimScripting Plugin" }

mods_folders = os.getenv("SKYRIM_MODS_FOLDERS")

if mods_folders then
    mod_info.mods_folders = mods_folders
else
    print("SKYRIM_MODS_FOLDERS environment variable not set")
end

target("SKSE Plugin - " .. commonlib_version:upper())
    set_basename(mod_info.name .. "-" .. commonlib_version:upper())
    add_files("*.cpp")
    add_rules("@skyrim-commonlib-" .. commonlib_version .. "/plugin", {
        mod_name = mod_info.name .. " (" .. commonlib_version .. ")",
        mods_folders = mod_info.mods_folders or "",
        mod_files = mod_info.mod_files,
        name = mod_info.name,
        version = mod_info.version,
        author = mod_info.author,
        email = mod_info.email
    })
    add_packages("SkyrimScripting.Plugin")

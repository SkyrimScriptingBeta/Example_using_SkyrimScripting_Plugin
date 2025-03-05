#define _GLOBAL_MACRO_FUNCTIONS_COMPILATION_UNIT_NAME _MyPlugin_

// #include <SkyrimScripting/Plugin.h>
#include <SkyrimScripting/Logging.h>
#include <SkyrimScripting/SKSE_Messages.h>
#include <_Log_.h>

_OnDataLoaded_ {
    PrintToConsole("EXAMPLE: On Data Loaded!");
    _Log_("EXAMPLE: On Data Loaded!");
}

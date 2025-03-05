#include <SkyrimScripting/Plugin.h>
#include <_Log_.h>

_OnDataLoaded_ {
    PrintToConsole("EXAMPLE: On Data Loaded!");
    _Log_("EXAMPLE: On Data Loaded!");
}

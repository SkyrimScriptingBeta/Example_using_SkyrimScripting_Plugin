#include <SkyrimScripting/Plugin.h>

SKSEPlugin_Entrypoint { Log("Hello, world!"); }

SKSEPlugin_OnDataLoaded { ConsoleLog("Hello, world!"); }

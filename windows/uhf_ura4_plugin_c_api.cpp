#include "include/uhf_ura4_plugin/uhf_ura4_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "uhf_ura4_plugin.h"

void UhfUra4PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  uhf_ura4_plugin::UhfUra4Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

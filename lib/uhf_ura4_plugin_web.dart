// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'uhf_ura4_plugin_platform_interface.dart';

/// A web implementation of the UhfUra4PluginPlatform of the UhfUra4Plugin plugin.
class UhfUra4PluginWeb extends UhfUra4PluginPlatform {
  /// Constructs a UhfUra4PluginWeb
  UhfUra4PluginWeb();

  static void registerWith(Registrar registrar) {
    UhfUra4PluginPlatform.instance = UhfUra4PluginWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}

import 'package:flutter/services.dart';

import 'uhf_ura4_plugin_platform_interface.dart';

/// An implementation of [UhfUra4PluginPlatform] that uses method channels.
class MethodChannelUhfUra4Plugin extends UhfUra4PluginPlatform {
  /// The method channel used to interact with the native platform.

  // @visibleForTesting //-----------------------------------------------------canceled by YAVUZFK
  final methodChannel = const MethodChannel('uhf_ura4_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

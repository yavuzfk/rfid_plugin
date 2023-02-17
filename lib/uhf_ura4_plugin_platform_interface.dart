import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'uhf_ura4_plugin_method_channel.dart';

abstract class UhfUra4PluginPlatform extends PlatformInterface {
  /// Constructs a UhfUra4PluginPlatform.
  UhfUra4PluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static UhfUra4PluginPlatform _instance = MethodChannelUhfUra4Plugin();

  /// The default instance of [UhfUra4PluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelUhfUra4Plugin].
  static UhfUra4PluginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UhfUra4PluginPlatform] when
  /// they register themselves.
  static set instance(UhfUra4PluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

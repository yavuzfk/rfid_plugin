// import 'package:flutter_test/flutter_test.dart';
// import 'package:uhf_ura4_plugin/uhf_ura4_plugin.dart';
// import 'package:uhf_ura4_plugin/uhf_ura4_plugin_platform_interface.dart';
// import 'package:uhf_ura4_plugin/uhf_ura4_plugin_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockUhfUra4PluginPlatform 
//     with MockPlatformInterfaceMixin
//     implements UhfUra4PluginPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final UhfUra4PluginPlatform initialPlatform = UhfUra4PluginPlatform.instance;

//   test('$MethodChannelUhfUra4Plugin is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelUhfUra4Plugin>());
//   });

//   test('getPlatformVersion', () async {
//     UhfUra4Plugin uhfUra4Plugin = UhfUra4Plugin();
//     MockUhfUra4PluginPlatform fakePlatform = MockUhfUra4PluginPlatform();
//     UhfUra4PluginPlatform.instance = fakePlatform;
  
//     expect(await uhfUra4Plugin.getPlatformVersion(), '42');
//   });
// }

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uhf_ura4_plugin/uhf_ura4_plugin_method_channel.dart';

void main() {
  MethodChannelUhfUra4Plugin platform = MethodChannelUhfUra4Plugin();
  const MethodChannel channel = MethodChannel('uhf_ura4_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

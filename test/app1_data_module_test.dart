import 'package:flutter_test/flutter_test.dart';
import 'package:app1_data_module/app1_data_module.dart';
import 'package:app1_data_module/app1_data_module_platform_interface.dart';
import 'package:app1_data_module/app1_data_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApp1DataModulePlatform
    with MockPlatformInterfaceMixin
    implements App1DataModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final App1DataModulePlatform initialPlatform = App1DataModulePlatform.instance;

  test('$MethodChannelApp1DataModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApp1DataModule>());
  });

  test('getPlatformVersion', () async {
    App1DataModule app1DataModulePlugin = App1DataModule();
    MockApp1DataModulePlatform fakePlatform = MockApp1DataModulePlatform();
    App1DataModulePlatform.instance = fakePlatform;

    expect(await app1DataModulePlugin.getPlatformVersion(), '42');
  });
}

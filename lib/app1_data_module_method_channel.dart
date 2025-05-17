import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app1_data_module_platform_interface.dart';

/// An implementation of [App1DataModulePlatform] that uses method channels.
class MethodChannelApp1DataModule extends App1DataModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app1_data_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

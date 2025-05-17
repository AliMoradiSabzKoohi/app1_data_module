import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app1_data_module_method_channel.dart';

abstract class App1DataModulePlatform extends PlatformInterface {
  /// Constructs a App1DataModulePlatform.
  App1DataModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static App1DataModulePlatform _instance = MethodChannelApp1DataModule();

  /// The default instance of [App1DataModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelApp1DataModule].
  static App1DataModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [App1DataModulePlatform] when
  /// they register themselves.
  static set instance(App1DataModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_core_ads_manager_method_channel.dart';

abstract class FlutterCoreAdsManagerPlatform extends PlatformInterface {
  /// Constructs a FlutterCoreAdsManagerPlatform.
  FlutterCoreAdsManagerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCoreAdsManagerPlatform _instance = MethodChannelFlutterCoreAdsManager();

  /// The default instance of [FlutterCoreAdsManagerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCoreAdsManager].
  static FlutterCoreAdsManagerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCoreAdsManagerPlatform] when
  /// they register themselves.
  static set instance(FlutterCoreAdsManagerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

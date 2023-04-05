import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_core_ads_manager/flutter_core_ads_manager.dart';
import 'package:flutter_core_ads_manager/flutter_core_ads_manager_platform_interface.dart';
import 'package:flutter_core_ads_manager/flutter_core_ads_manager_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCoreAdsManagerPlatform
    with MockPlatformInterfaceMixin
    implements FlutterCoreAdsManagerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCoreAdsManagerPlatform initialPlatform = FlutterCoreAdsManagerPlatform.instance;

  test('$MethodChannelFlutterCoreAdsManager is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCoreAdsManager>());
  });

  test('getPlatformVersion', () async {
    FlutterCoreAdsManager flutterCoreAdsManagerPlugin = FlutterCoreAdsManager();
    MockFlutterCoreAdsManagerPlatform fakePlatform = MockFlutterCoreAdsManagerPlatform();
    FlutterCoreAdsManagerPlatform.instance = fakePlatform;

    expect(await flutterCoreAdsManagerPlugin.getPlatformVersion(), '42');
  });
}

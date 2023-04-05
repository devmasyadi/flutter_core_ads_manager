
import 'flutter_core_ads_manager_platform_interface.dart';

class FlutterCoreAdsManager {
  Future<String?> getPlatformVersion() {
    return FlutterCoreAdsManagerPlatform.instance.getPlatformVersion();
  }
}

import 'dart:core';

import 'package:flutter_core_ads_manager/config_ads.dart';

class UtilsCoreAdsManager {
  static DateTime _lastDate = DateTime.now();

  static bool isValidBetweenTimeInterstitial() {
    DateTime currentDate = DateTime.now();
    int diffSeconds = currentDate.difference(_lastDate).inSeconds;
    if (diffSeconds >= ConfigAds.intervalTimeInterstitial) {
      _lastDate = currentDate;
      return true;
    }
    return false;
  }
}

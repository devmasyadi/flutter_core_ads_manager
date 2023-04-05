import 'package:flutter_core_ads_manager/network_ads.dart';

class ConfigAds {
  static bool isShowAds = false;
  static bool isShowOpenAd = false;
  static bool isShowBanner = false;
  static bool isShowInterstitial = false;
  static bool isShowNativeAd = false;
  static bool isShowRewards = false;

  static int intervalTimeInterstitial = 10; // seconds

  static String primaryOpenAdId = '';
  static String secondaryOpenAdId = '';
  static String tertiaryOpenAdId = '';
  static String quaternaryOpenAdId = '';

  static NetworkAds primaryAds = NetworkAds.NONE;
  static NetworkAds secondaryAds = NetworkAds.NONE;
  static NetworkAds tertiaryAds = NetworkAds.NONE;
  static NetworkAds quaternaryAds = NetworkAds.NONE;

  static String primaryAppId = '';
  static String secondaryAppId = '';
  static String tertiaryAppId = '';
  static String quaternaryAppId = '';

  static String primaryBannerId = '';
  static String secondaryBannerId = '';
  static String tertiaryBannerId = '';
  static String quaternaryBannerId = '';

  static String primaryInterstitialId = '';
  static String secondaryInterstitialId = '';
  static String tertiaryInterstitialId = '';
  static String quaternaryInterstitialId = '';

  static String primaryNativeId = '';
  static String secondaryNativeId = '';
  static String tertiaryNativeId = '';
  static String quaternaryNativeId = '';

  static String primaryRewardsId = '';
  static String secondaryRewardsId = '';
  static String tertiaryRewardsId = '';
  static String quaternaryRewardsId = '';
}

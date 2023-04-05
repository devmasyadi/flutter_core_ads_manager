import 'dart:core';
import 'package:flutter/material.dart';

import '../callback_ads.dart';
import '../size_ads.dart';
import 'i_initialize.dart';
import 'i_rewards.dart';

abstract class IAds {
  void initialize(
    BuildContext context,
    String? appId,
    IInitialize? iInitialize,
  );

  Future<void> setTestDevices(BuildContext context, List<String> testDevices);
  Future<void> loadGdpr(BuildContext context, bool childDirected);
  Widget showBanner(
    BuildContext context,
    SizeBanner sizeBanner,
    String adUnitId,
    CallbackAds? callbackAds,
  );

  void loadInterstitial(BuildContext context, String adUnitId);
  void showInterstitial(
    BuildContext context,
    String adUnitId,
    CallbackAds? callbackAds,
  );

  Widget showNativeAds(
    BuildContext context,
    SizeNative sizeNative,
    String adUnitId,
    CallbackAds? callbackAds,
  );

  void loadRewards(BuildContext context, String adUnitId);
  void showRewards(
    BuildContext context,
    String adUnitId,
    CallbackAds? callbackAds,
    IRewards? iRewards,
  );
}

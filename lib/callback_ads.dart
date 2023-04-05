// callback_ads.dart
typedef OnAdLoaded = void Function(String? message);
typedef OnAdFailedToLoad = void Function(String? error);

class CallbackAds {
  final OnAdLoaded? onAdLoaded;
  final OnAdFailedToLoad? onAdFailedToLoad;

  CallbackAds({this.onAdLoaded, this.onAdFailedToLoad});
}

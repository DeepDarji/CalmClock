import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  static const String bannerAdUnitId = 'ca-app-pub-xxxxxxxxxxxxxxxx/banner';

  static BannerAd loadBannerAd() {
    return BannerAd(
      adUnitId: bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(),
    )..load();
  }
}
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:quiz3/strings.dart';

class GoogleAds {
  InterstitialAd?
      interstitialAd; //alt tireleri sildik çünkü classlara disaridan erisebilmem için.
  BannerAd? bannerAd;

  void loadInterstialAd(
      {bool showAfterLoad =
          false} // dışarıdan bu fonksiyonu cagirdigim zaman, showafterload true olursa reklam yüklenir yüklenmez gösterilmesini istedigim icin boyle bisi ekledim.
      ) {
    InterstitialAd.load(
        adUnitId: KAdStringss.interstialAd1,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            //reklam yüklendiginde
            interstitialAd = ad;
            if (showAfterLoad) {
              showInterstialAd(); //showafterload true ise , reklam yüklendiyse, otomatik olarak gösterilsin.
            }
          },
          onAdFailedToLoad: (LoadAdError error //reklam basarisiz oldugunda
              ) {},
        ));
  }

  void showInterstialAd() {
    //interstial demek gecis reklami demek.
    if (interstitialAd != null) {
      interstitialAd!
          .show(); //! koymayınca hata veriyor. ! koyunca null degerinin olmadigini belirtmis olduk.
    }
  }

  void loadBannerAdd() {
    bannerAd = BannerAd(
      adUnitId: KAdStringss.bannerAd1,
      //"ca-app-pub-3940256099942544/6300978111",
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          bannerAd = ad
              as BannerAd; //sadece ad yazınca hata verdi. as BannerAd yapınca düzeldi. neyin adı oldugunu belirtmis gibi olduk sanırım
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, err) {
          ad.dispose(); //dispose elden çıkarmak
        },
      ),
    )..load();
  }
}

//reklmlari olusturduk simdi nerelerde gösterecegimize gecelim.

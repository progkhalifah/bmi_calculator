
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:startapp_sdk/startapp.dart';

class AdsController extends GetxController{

  static bool isTest = false;
  static String addUnitId = isTest ? "ca-app-pub-3940256099942544/6300978111" : "ca-app-pub-2977349148579200/7459555173";


  final bannerAd = BannerAd(
          size: AdSize.banner,
          adUnitId: addUnitId,
          listener: const BannerAdListener(),
          request: AdRequest())
      .obs;

  Future<void> loadBanner() async{
    await bannerAd.value.load();
  }



  final StartAppSdk startAppSdk = StartAppSdk();
  Rx<StartAppBannerAd?> bannerAdStart = Rx<StartAppBannerAd?>(null);


  Future<void> loadBannerStart() async {
    // startAppSdk.setTestAdsEnabled(true);
    try {
      var loadedBannerStart = await startAppSdk.loadBannerAd(StartAppBannerType.BANNER);
      bannerAdStart.value = loadedBannerStart;
    } on StartAppException catch (ex) {
      debugPrint("Error loading Banner ad: ${ex.message}");
    } catch (error, stackTrace) {
      debugPrint("Error loading Banner ad: $error");
    }
  }



  @override
  void onInit() async {
    super.onInit();
    await loadBanner();
    await loadBannerStart();
  }
}
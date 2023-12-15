import 'package:flutter_11_bmi_calculator/controller/ads_controller.dart';
import 'package:flutter_11_bmi_calculator/controller/main_controller.dart';
import 'package:flutter_11_bmi_calculator/controller/theme_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings{
  @override
  void dependencies() {

    Get.put(MainController());
    Get.put(ThemeController());
    Get.put(AdsController());

  }

}
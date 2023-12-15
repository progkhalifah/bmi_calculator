import 'package:flutter/material.dart';
import 'package:flutter_11_bmi_calculator/components/age_selector.dart';
import 'package:flutter_11_bmi_calculator/components/height_selector.dart';
import 'package:flutter_11_bmi_calculator/components/primary_btn.dart';
import 'package:flutter_11_bmi_calculator/components/ract_button.dart';
import 'package:flutter_11_bmi_calculator/components/wight_selector.dart';
import 'package:flutter_11_bmi_calculator/controller/ads_controller.dart';
import 'package:flutter_11_bmi_calculator/controller/main_controller.dart';
import 'package:flutter_11_bmi_calculator/controller/theme_controller.dart';
import 'package:flutter_11_bmi_calculator/components/theme_change_btn.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  MainController main_controller = Get.find();
  AdsController ads_controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
        children: [
          ThemeChangeBtn(),
          Container(
            height: 50,
            child: AdWidget(ad: ads_controller.bannerAd.value),
          ),
          /*Row(
            children: [
              Text(
                "Welcome 😊",
                style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "BMI Calculator",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onBackground),
              ),
            ],
          ),*/
          const SizedBox(height: 20,),
          Row(
            children: [
              PrimaryBtn(icon: Icons.male, btnName: "ذكر", onpress: () {
                main_controller.genderHandle("ذكر");
              },),
              const SizedBox(width: 10,),
              PrimaryBtn(icon: Icons.female, btnName: "أنثى", onpress: () {
                main_controller.genderHandle("أنثى");
              },),

            ],
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeightSelector(),
                SizedBox(width: 20,),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WightSelector(),
                        AgeSelector(),
                      ],
                    ),
                  ),
                ],
            ),
          ),
          const SizedBox(height: 20,),
          RactButton(onPress: ()=>{
            main_controller.calculatorBMI(),
            Get.toNamed("result_page")
          }, btnName: "دعنا نبدأ", icon: Icons.done_all_rounded),


        ],
      ),
          )),
    );
  }
}

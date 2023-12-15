import 'package:flutter/material.dart';
import 'package:flutter_11_bmi_calculator/components/ract_button.dart';
import 'package:flutter_11_bmi_calculator/controller/main_controller.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:startapp_sdk/startapp.dart';

import '../controller/ads_controller.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key}) : super(key: key);

  MainController main_controller = Get.find();
  AdsController ads_controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () { Get.back(); },
                    icon: Icon(Icons.arrow_back_ios_new, size: 20,),
                  ),
                  Text("Back"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() {
                var loadedBanner = ads_controller.bannerAdStart.value;
                return loadedBanner != null ? StartAppBanner(loadedBanner) : Container();
              }),
              SizedBox(height: 20,),
              Row(
                children: [
                  Obx(() => Text(
                    "مؤشر كتلة الجسم هيا ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: main_controller.colorStatus.value,
                    ),
                  )),
                ],
              ),
              Container(
                height: 450,
                child: Obx(() => CircularPercentIndicator(
                  animationDuration: 1000,
                  footer: Text(
                    "${main_controller.bmiStatus.value}",
                    style: TextStyle(
                      color: main_controller.colorStatus.value,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  radius: 130.0,
                  lineWidth: 30.0,
                  animation: true,
                  circularStrokeCap: CircularStrokeCap.round,
                  percent: main_controller.tempBMI.value /100,
                  center: new Text(
                    "${main_controller.bmi.value}%",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 30,
                    ),
                  ),
                  progressColor: main_controller.colorStatus.value,
                  backgroundColor:
                  main_controller.colorStatus.value.withOpacity(0.2),
                )),
              ),
/*
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Your BMI is 27 your so fat ya donkey go to the gym",
                ),
              ),
              SizedBox(
                height: 20,
              ),*/
              RactButton(
                  onPress: () {
                    Get.back();
                  },
                  btnName: "لمعرفة المزيد",
                  icon: Icons.arrow_back_ios_outlined),
            ],
          ),
        ),
      ),
    );
  }
}

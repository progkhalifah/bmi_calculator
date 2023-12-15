import 'package:flutter/material.dart';
import 'package:flutter_11_bmi_calculator/components/sec_btn.dart';
import 'package:get/get.dart';

import '../controller/main_controller.dart';

class AgeSelector extends StatelessWidget {
  AgeSelector({Key? key}) : super(key: key);

  MainController main_controller = Get.find();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      padding: const EdgeInsets.all(10),
      height: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "العمر",
                style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                "${main_controller.age.value}",
                style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground),
              )) ,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecBtn(onpress: ()=>{
                main_controller.age.value++
              }, icon: Icons.add),
              SecBtn(onpress: ()=>{
                main_controller.age.value--
              }, icon: Icons.minimize),
            ],
          )

        ],
      ),
    );
  }
}

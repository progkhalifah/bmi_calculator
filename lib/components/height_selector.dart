import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../controller/main_controller.dart';

class HeightSelector extends StatelessWidget {
   HeightSelector({Key? key}) : super(key: key);

   MainController main_controller = Get.find();


   @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("الطول",
                  style: TextStyle(fontSize: 18, color: Theme.of(context).colorScheme.onSecondaryContainer),
                ),
              ],
            ),
            Obx(() => Expanded(child:
            SfSlider.vertical(
                min: 100,
                max: 210,
                value: main_controller.height.value,
                interval: 50,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                onChanged: (dynamic value)=>{
                  main_controller.height.value = value
                }
            ),
            ),)

          ],
        ),
      ),
    );
  }
}

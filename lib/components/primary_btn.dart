import 'package:flutter/material.dart';
import 'package:flutter_11_bmi_calculator/controller/main_controller.dart';
import 'package:get/get.dart';

class PrimaryBtn extends StatelessWidget {
  PrimaryBtn(
      {Key? key,
      required this.icon,
      required this.btnName,
      required this.onpress})
      : super(key: key);

  final IconData icon;
  final String btnName;
  final VoidCallback onpress;

  MainController main_controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Obx(() => Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: main_controller.Gender.value == btnName
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primaryContainer),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: main_controller.Gender.value == btnName
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Theme.of(context).colorScheme.primary),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    btnName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      color: main_controller.Gender.value == btnName
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

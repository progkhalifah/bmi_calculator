import 'package:flutter/material.dart';
import 'package:flutter_11_bmi_calculator/controller/main_controller.dart';
import 'package:get/get.dart';

class RactButton extends StatelessWidget {
  RactButton({Key? key, required this.onPress, required this.btnName, required this.icon}) : super(key: key);

  MainController main_controller = Get.find();
  final VoidCallback onPress;
  final String btnName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.primaryContainer),
            const SizedBox(
              width: 10,
            ),
            Text(
              btnName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

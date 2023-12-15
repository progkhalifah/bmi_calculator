import 'package:flutter/material.dart';
import 'package:flutter_11_bmi_calculator/controller/main_controller.dart';
import 'package:flutter_11_bmi_calculator/controller/theme_controller.dart';
import 'package:get/get.dart';

class ThemeChangeBtn extends StatelessWidget {
  ThemeChangeBtn({Key? key}) : super(key: key);

  ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  themeController.changeTheme();
                },
                icon: const Icon(Icons.dark_mode),
                color: themeController.isDark.value
                    ? Theme.of(context).colorScheme.onSecondaryContainer
                    : Theme.of(context).colorScheme.primary,
              ),
              IconButton(
                onPressed: () {
                  themeController.changeTheme();
                },
                icon: const Icon(Icons.light_mode),
                color: themeController.isDark.value
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onSecondaryContainer,
              ),
            ],
          ),
        )
      ],
    );
  }
}

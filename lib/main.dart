import 'package:flutter/material.dart';
import 'package:flutter_11_bmi_calculator/binding/main_binding.dart';
import 'package:flutter_11_bmi_calculator/config/themes.dart';
import 'package:flutter_11_bmi_calculator/ui/home.dart';
import 'package:flutter_11_bmi_calculator/ui/result_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=> HomePage(), binding: MainBinding()),
        GetPage(name: "/result_page", page: ()=> ResultPage(), binding: MainBinding()),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController{

  RxString Gender = "Male".obs;
  RxInt weight = 85.obs;
  RxInt age = 25.obs;
  RxDouble height = 170.0.obs;
  RxString bmi = "".obs;
  RxString bmiStatus = "".obs;
  RxDouble tempBMI = 0.0.obs;
  // Rx<Color> colorStatus = Color(0xffFE2448).obs;
  Rx<Color> colorStatus = Color(0xff246AFE).obs;





  void genderHandle(String gender){
    Gender.value = gender;
  }


  void calculatorBMI(){
    var Hmeter = height/100;
    tempBMI.value = weight / (Hmeter*Hmeter);
    bmi.value = tempBMI.toStringAsFixed(1);
    tempBMI.value = double.parse(bmi.value);
    findStatus();
    print(Hmeter);
  }

  void findStatus(){
    if(tempBMI.value <18.5){
      bmiStatus.value = "UnderWeight";
      colorStatus.value = Color(0xffFFB800);
    }

    if(tempBMI.value >18.5 && tempBMI.value <24.9){
      bmiStatus.value = "Normal";
      colorStatus.value = Color(0xff00CA39);
    }

    if(tempBMI.value >25.0 && tempBMI.value <29.9){
      bmiStatus.value = "OverWeight";
      colorStatus.value = Color(0xffFF5858);
    }

    if(tempBMI.value >30.0 && tempBMI.value <34.9){
      bmiStatus.value = "OBESE";
      colorStatus.value = Color(0xffFF0000);
    }

    if(tempBMI.value >35.0){
      bmiStatus.value = "Extremely OBESE";
      colorStatus.value = Color(0xff000000);
    }






  }

  /*void genderHandle(String gender){
    if(gender == "male"){
      isMale.value = true;
      isFemale.value = false;
    }

    if(gender == "female"){
      isMale.value = false;
      isFemale.value = true;
    }

  }*/


}
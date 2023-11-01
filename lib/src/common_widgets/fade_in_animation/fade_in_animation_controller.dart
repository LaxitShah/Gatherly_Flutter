
import 'package:f1/src/features/authentication/screen/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FadeInAnimationController extends  GetxController{ // Correctly extends GetxController
  static FadeInAnimationController get to => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value=false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(()=>const WelcomeScreen());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  WelcomeScreen()));
  }
  Future startAnimation() async
  {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;

  }
}

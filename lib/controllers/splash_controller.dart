import 'package:app/views/Login_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    navigationToLoginScreen();
  }

 void navigationToLoginScreen() {
  

    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(()=>LoginScreen());

    });
  }


}

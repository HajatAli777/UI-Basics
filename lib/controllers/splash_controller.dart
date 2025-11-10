import 'package:app/views/Login_form.dart';
import 'package:app/views/homePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onInit() {
   
    super.onInit();
    navigationToLoginScreen();
  }

 void navigationToLoginScreen() {
  

    Future.delayed(Duration(seconds: 3), () {
      if (auth.currentUser == null){
        Get.offAll(()=>LoginScreen());

      }
      else{
        Get.offAll(()=>Homepage());
      }
      

    });
  }


}

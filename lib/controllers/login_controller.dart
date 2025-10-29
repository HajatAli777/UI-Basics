import 'package:app/views/homePage.dart';
import 'package:app/views/profileSetup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
    var isshow = false.obs;
  void loginUser(String password, String email,){
    
    try{
      if(password.isEmpty || email.isEmpty){
        debugPrint("Passward and Email cannot be empty!");
        
      }
      else {
        password=password;
        email=email;
        debugPrint("Login sucessfully ");
        Get.offAll(()=>Homepage());

      }

    }catch(e){
      debugPrint("This is Error: $e");


    }

  }
  void visible() {
    isshow.value = !isshow.value;
    debugPrint("this is the value:${isshow.value}");
  }
}
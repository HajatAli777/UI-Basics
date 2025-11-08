import 'package:app/views/Login_form.dart';
import 'package:app/views/homePage.dart';
import 'package:app/views/profileSetup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  
  
    var isshow = false.obs;
    FirebaseAuth auth = FirebaseAuth.instance;
    Future<void> fatchdata() async {
      try{
        debugPrint("fatching data");
        await Future.delayed(Duration(seconds: 3));
        debugPrint("fatching data completed");
      } catch(e){
        debugPrint("This is Error: $e");
      }
    }
  Future<void> loginUser(String password, String email,) async {
    
    try{
      if(password.isEmpty || email.isEmpty){
        debugPrint("Passward and Email cannot be empty!");
        Get.snackbar("Error", "Passward and Email cannot be empty!");
        

        
      }
      else {
        await auth.createUserWithEmailAndPassword(email: email, password: password);

      }
      if(auth.currentUser != null){
        debugPrint("User logged in successfully");
        Get.snackbar("Success", "User logged in successfully");
        Get.offAll(()=>Homepage());
      }

    }catch(e){
      debugPrint("This is Error: $e");


    }
    void loginUser(){
      Get.offAll(()=>LoginScreen());
    }

  }
  void visible() {
    isshow.value = !isshow.value;
    debugPrint("this is the value:${isshow.value}");
  }
}

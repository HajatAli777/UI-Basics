import 'package:app/views/Login_form.dart';
import 'package:app/views/homePage.dart';
import 'package:app/views/profileSetup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  var userName = "".obs;
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
  void loginUser(String email, String password) async{
      try{
        if (email.isEmpty || password.isEmpty){
          Get.snackbar("Error", "Email and Password cannot be empty");
          return;

        }
        else{
          await auth.signInWithEmailAndPassword(email: email, password: password);
if(auth.currentUser != null){
            
            Get.snackbar("Success", "Login Successful");
            Get.offAll(()=>Homepage());
          }
        }

      }catch(e){
        debugPrint("This is Error: $e");
      }
    }
  void visible() {
    isshow.value = !isshow.value;
    debugPrint("this is the value:${isshow.value}");
  }
  void createUser(String email, String password) async {
    try{
      if(email.isEmpty || password.isEmpty){
        Get.snackbar("Error", "Email and Password cannot be empty");
        return;
      }
      else{
        await auth.createUserWithEmailAndPassword(email: email, password: password);
        if(auth.currentUser != null){
          Get.snackbar("Success", "User created successfully");
          Get.offAll(()=>Homepage());
        }
      }


    }
    catch(e){
      debugPrint("This is Error: $e");
    }
  }
}

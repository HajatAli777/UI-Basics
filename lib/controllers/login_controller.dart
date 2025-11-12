import 'package:app/const/loading_dialog.dart';
import 'package:app/models/user_model.dart';
import 'package:app/views/Login_form.dart';
import 'package:app/views/bottom_navbar/navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  var userName = "".obs;
    var isshow = false.obs;
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
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
          Get.dialog(LoadingDialog(), barrierDismissible: false);
          await auth.signInWithEmailAndPassword(email: email, password: password);
if(auth.currentUser != null){
            
            Get.snackbar("Success", "Login Successful");
            Get.offAll(()=>NavBar());
          }
        }

      }catch(e){
        Get.back();
        debugPrint("This is Error: $e");
      }
    }
  void visible() {
    isshow.value = !isshow.value;
    debugPrint("this is the value:${isshow.value}");
  }
  void createUser(String email, String password, String name) async {
    try{
      if(email.isEmpty || password.isEmpty){
        Get.snackbar("Error", "Email and Password cannot be empty");
        return;
      }
      else{
        Get.dialog(LoadingDialog(), barrierDismissible: false);
        await auth.createUserWithEmailAndPassword(email: email, password: password);
        if(auth.currentUser != null){
          Get.snackbar("Success", "User created successfully");
          userDataModel user = userDataModel(uid: auth.currentUser!.uid, name: name, email: email);
          await firestore.collection('users').doc(auth.currentUser!.uid).set(user.touserdata());
          Get.offAll(()=>NavBar());
        }
      }


    }
    catch(e){
      Get.back();
      debugPrint("This is Error: $e");
    }
  }
  void logoutUser()async{
    try{
      await auth.signOut();
      Get.snackbar("Success", "User logged out successfully");
      Get.offAll(()=>LoginScreen());
    }catch(e){
      debugPrint("This is Error: $e");
    }
  }
}

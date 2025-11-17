import 'package:app/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
class CurrentUserController extends GetxController{
  var auth = FirebaseAuth.instance;
  var firestore = FirebaseFirestore.instance;
  var userDataModel = Rxn<UserDataModel>();
  @override
  void onInit(){
    fetchUserData();
    super.onInit();
  }
  void fetchUserData() async{
    try{
      var uid = auth.currentUser?.uid;
      
      if(uid != null){
        var doc = await firestore.collection("users").doc(uid).get();
        if(doc.exists){
          debugPrint("User document data: ${doc.data()}");
          userDataModel.value = UserDataModel.fromJson(doc.data()!);

        }
        else{
          debugPrint("User document does not exist");
        }
      }
    }catch(e){
      debugPrint("This is Error: $e");
    }
  }
  
}

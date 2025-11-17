import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
class CurrentUserController extends GetxController{
  var auth = FirebaseAuth.instance;
  var firestore = FirebaseFirestore.instance;
  var userDataModel = Rxn<userDataModel>();
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
          userDataModel.value = userDataModel.fromJson(doc.data()!);

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
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firstapp/Models/user_model.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class CurrentUserController extends GetxController {
//   var auth = FirebaseAuth.instance;
//   var firestore = FirebaseFirestore.instance;
//   var userModel = Rxn<UserModel>();
//   @override
//   void onInit() {
//     fetchUserData();
//     super.onInit();
//   }

//   void fetchUserData() async {
//     try {
//       var uid = auth.currentUser?.uid;
//       if (uid != null) {
//         var doc = await firestore.collection('users').doc(uid).get();
//         if (doc.exists) {
//           userModel.value = UserModel.fromJson(doc.data()!);
//         } else {
//           debugPrint("User document does not exist.");
//         }
//       }
//     } catch (e) {
//       debugPrint("Error fetching user data: $e");
//     }
//   }
// }
import 'dart:io';
import 'package:app/const/loading_dialog.dart';
import 'package:app/models/card_model.dart';
import 'package:app/views/bottom_navbar_screens.dart/card_Data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class CardDataController extends GetxController {
  var firestore = FirebaseFirestore.instance;
  var storage = FirebaseStorage.instance.ref();
  var selectedImage = Rxn<File>();
  var _imagePicker = ImagePicker();
  var uuid = Uuid().v1();
  Future<void> pickImage() async {
    try {
      final pickedImage = await _imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      if (pickedImage != null) {
        selectedImage.value = File(pickedImage.path);
      }
    } catch (e) {
      debugPrint("this is the error:$e");
    }
  }
  Future<String?> uploadImage() async {
    try {
      final fileName = DateTime.now().microsecondsSinceEpoch.toString();
      final storageRef = storage.child('cardImages/$fileName');
      final uploadTask = storageRef.putFile(selectedImage.value!);
      final snapShot = await uploadTask;
      final downLoadUrl = await snapShot.ref.getDownloadURL();
      return downLoadUrl;
    } catch (e) {
      debugPrint("Error uploading image: $e");
      return null;
    }
  }
  void uploadToFirestore() async{
    try{
      Get.dialog(LoadingDialog(), barrierDismissible: false);
      final imageUrl = await uploadImage();
      if(imageUrl != null){
        final cardData = CardModel(
          imageUrl: imageUrl, title: 'Ramada', places: 'the place', rating: 4.5, reviews: 100, guest: 'guest', beds: '4', bathroom: '1', bookingDate: '25/2/2004', stayDays: '3', price: 20,
        );
        await firestore.collection("cardData").doc(uuid).set(cardData.toJson());
        Get.back(); 
        Get.snackbar("Success", "Card data uploaded successfully");

      }
    }catch(e){
      debugPrint("Error uploading data to Firestore: $e");
    }
  }
}
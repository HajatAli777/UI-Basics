import 'package:app/const/primarybutton.dart';
import 'package:app/controllers/current_user_controller.dart';
import 'package:app/controllers/login_controller.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
   var userController = Get.put(CurrentUserController());
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://www.shutterstock.com/image-vector/default-ui-image-placeholder-wireframes-600nw-1037719192.jpg"),
          ),
          const SizedBox(height: 20,),
          Obx(() => Text(userController.userDataModel.value?.email??"User", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.toldTextColor),)),
          Obx(() => Text(userController.userDataModel.value?.name??"User", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.toldTextColor),)),
          

        ],
      )),

    );
  }
}
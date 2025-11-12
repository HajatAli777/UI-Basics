import 'package:app/const/primarybutton.dart';
import 'package:app/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var loginController = Get.put(LoginController());
    return Center(
      child: PrimaryButton(buttontext: "logout", onTap: (){
        loginController.logoutUser();
      }),
    );
  }
}
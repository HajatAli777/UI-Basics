import 'package:app/views/Login_form.dart';
import 'package:flutter/material.dart';

class SplashController {

 void navigationToLoginScreen(BuildContext context) {

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false,
      );
    });
  }


}

import 'package:app/controllers/splash_controller.dart';
import 'package:app/views/Login_form.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController splashController = SplashController();
  @override
  void initState() {

    splashController.navigationToLoginScreen(context);

    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset("assets/Logo.png", height: 100, width: 300),
      ),
    );
  }
}
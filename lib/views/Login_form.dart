import 'package:app/const/toldText.dart';
import 'package:flutter/material.dart';
import 'package:app/utills/colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: AppColors.primaryColor,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 70),
              Image.asset('assets/Logo.png', height: 50, width: 200),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      ToldText(title: 'Login'),
                      // You can add input fields and buttons here later
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

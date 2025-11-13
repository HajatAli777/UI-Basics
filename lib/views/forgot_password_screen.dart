import 'package:app/const/primarybutton.dart';
import 'package:app/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final LoginController loginController = Get.put(LoginController());
  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    
                    labelText: 'Enter your email',
                        
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              PrimaryButton(
                buttontext: 'Reset Password',
                onTap: (){
                  loginController.resetPassword(emailController.text.trim());
                },
              ),
            ],
          ),

        ),
      )
    );
  }
}
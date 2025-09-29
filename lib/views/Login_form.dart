import 'package:app/const/line.dart';
import 'package:app/const/toldText.dart';
import 'package:app/views/profileSetup_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/const/custom_textfield.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/const/authbutton.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/signupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: AppColors.primaryColor,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset("assets/Logo.png", height: 50, width: 200),
              const SizedBox(height: 150),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 12),
                          Line() ,                       
                          const SizedBox(height: 16),
                          ToldText(
                            title: 'Login',
                            subTitle: 'Enter your credentials to login to your account',
                            
                          ),
                          
                          const SizedBox(height: 12),
                          CustomTextField(
                            label: "Email",
                            hint: "Enter your email",
                            controller: emailController,
                          ),
                          // const SizedBox(height: 12),
                          CustomTextField(
                            label: "Password",
                            hint: "Enter your password",
                            controller: passwordController,
                            obscureText: true,
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor.withAlpha(50),
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: AppColors.primaryColor),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "I agree with the",
                                style: TextStyle(
                                  color: AppColors.subtitleTextColor,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                "terms & policies",
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          PrimaryButton(
                            buttontext: "Login",
                              onTap: (){
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => ProfilesetupScreen()
                                  )
                                  );
                            },
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(child: Divider(color: AppColors.subtitleTextColor)),
                              const SizedBox(width: 4),
                              Text("Or login with", style: TextStyle(color: AppColors.subtitleTextColor)),
                              const SizedBox(width: 4),
                              Expanded(child: Divider(color: AppColors.subtitleTextColor)),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AuthButton(
                                imagePath: "assets/google.png",
                                ontap: () => debugPrint("Google button tapped"),
                              ),
                              AuthButton(
                                imagePath: "assets/facebook.png",
                                ontap: () => debugPrint("Facebook button tapped"),
                              ),
                              AuthButton(
                                imagePath: "assets/apple.png",
                                ontap: () => debugPrint("Apple button tapped"),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: AppColors.subtitleTextColor,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(width: 4),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => const Signupscreen()),
                                  );
                                },
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
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

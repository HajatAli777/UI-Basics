import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Imports
import 'package:app/const/line.dart';
import 'package:app/const/toldText.dart';
import 'package:app/controllers/login_controller.dart';
import 'package:app/views/signupScreen.dart';
import 'package:app/const/custom_textfield.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/const/authbutton.dart';
import 'package:app/utills/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = Get.put(LoginController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("this is user name ${loginController.userName}");
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
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
                        const Line(),
                        const SizedBox(height: 16),
                        const ToldText(
                          title: 'Login',
                          subTitle:
                              'Enter your credentials to login to your account',
                        ),
                        const SizedBox(height: 12),

                        // --- Text Fields Container ---
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.textFieldFillColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: AppColors.subtitleTextColor),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Email
                              CustomTextField(
                                label: "Email",
                                hint: "Enter your email",
                                controller: emailController,
                              ),
                              Divider(color: AppColors.subtitleTextColor),

                              // --- Password Field with Obx ---
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Password",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Obx(
                                      () => TextField(
                                        controller: passwordController,
                                        obscureText:
                                            loginController.isshow.value,
                                        decoration: InputDecoration(
                                          hintText: "Enter your password",
                                          suffixIcon: InkWell(
                                            onTap: () {
                                              loginController.visible();
                                            },
                                            child: Icon(
                                              loginController.isshow.value
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: AppColors.subtitleTextColor,
                                            ),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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

                        // --- Terms & Conditions ---
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color:
                                    AppColors.primaryColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    color: AppColors.primaryColor),
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

                        // --- Login Button ---
                        PrimaryButton(
                          buttontext: "Login",
                          onTap: () {
                            loginController.loginUser(
                              emailController.text.trim(),
                              passwordController.text.trim(),
                            );
                          },
                        ),

                        const SizedBox(height: 20),

                        // --- Divider ---
                        Row(
                          children: [
                            Expanded(
                                child: Divider(
                                    color: AppColors.subtitleTextColor)),
                            const SizedBox(width: 4),
                            Text(
                              "Or login with",
                              style: TextStyle(
                                  color: AppColors.subtitleTextColor),
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                                child: Divider(
                                    color: AppColors.subtitleTextColor)),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // --- Auth Buttons ---
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AuthButton(
                              imagePath: "assets/google.png",
                              ontap: () => debugPrint("Google button tapped"),
                            ),
                            AuthButton(
                              imagePath: "assets/facebook.png",
                              ontap: () =>
                                  debugPrint("Facebook button tapped"),
                            ),
                            AuthButton(
                              imagePath: "assets/apple.png",
                              ontap: () => debugPrint("Apple button tapped"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // --- Sign Up Navigation ---
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
                                  MaterialPageRoute(
                                      builder: (_) => const Signupscreen()),
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
    );
  }
}

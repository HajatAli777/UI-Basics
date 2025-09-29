import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Textfeild extends StatelessWidget {
  const Textfeild({super.key});

  @override
  Widget build(BuildContext context) {
    
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.strokeColor),
      ),
      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                color: AppColors.toldTextColor,
                                fontSize: 14,
                              )
                            ),
                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter your email",
                                hintStyle: TextStyle(
                                  color: AppColors.subtitleTextColor,
                                  fontSize: 14,
                                ),
                                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                              ),
                            ),
                          ],
                        ),
                        ),
                    ],
                ),
    );
  }
}

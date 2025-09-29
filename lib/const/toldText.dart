import 'package:flutter/material.dart';
import 'package:app/utills/colors.dart';

class ToldText extends StatelessWidget {
  final String title;

  const ToldText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // for better alignment
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.toldTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 8), // add some spacing
        const Text(
          'Enter your credentials to login to your account',
          style: TextStyle(
            color: AppColors.subtitleTextColor,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

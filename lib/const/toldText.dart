import 'package:flutter/material.dart';
import 'package:app/utills/colors.dart';

class ToldText extends StatelessWidget {
  final String title;
  final String subTitle;

  const ToldText({super.key, required this.title, required this.subTitle, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
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
           Text(
            subTitle,
            
            style: TextStyle(
              color: AppColors.subtitleTextColor,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

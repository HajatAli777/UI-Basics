import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Filterscreencard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const Filterscreencard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 110,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.subtitleTextColor.withValues(alpha: 0.3),
            offset: const Offset(2, 2),
            blurRadius: 6,
          )
        ]
      ),
      child: Column(
        children: [
          Image.asset(imageUrl, height: 60,color: AppColors.primaryColor,),
          Text(title, style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),)
        ],
      ),
    );
  }
}
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Filterscreencard extends StatelessWidget {
  // final String title;
  final String imageUrl;
  const Filterscreencard(
    {
    super.key, 
  required this.imageUrl
  }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.subtitleTextColor.withValues(alpha: 0.2),
            offset: const Offset(2, 2),
            blurRadius: 6,
          )
        ]
      ),
      child: Center(child: Image.asset(imageUrl, height: 100,)),
      
    );
  }
}
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Filterscreencard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const Filterscreencard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.subtitleTextColor.withValues(alpha: 0.2),
            blurRadius: 6,
            offset: const Offset(2, 2),
          )
        ]
      ),
    );
  }
}
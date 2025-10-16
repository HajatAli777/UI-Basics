import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class DetailContainer extends StatelessWidget {
  final String title;

  const DetailContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.secondaryColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.subtitleTextColor.withValues(alpha: 0.5),
            blurRadius: 0.5,
            spreadRadius: 0.5,
            offset: Offset(2, 2)
          )
        ]

      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(child: Text(title)),
      ),
    );
  }
}
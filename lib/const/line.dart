import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 4,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.subtitleTextColor,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}

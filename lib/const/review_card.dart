import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondaryColor,
      ),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                child: Image.network(src),
              )
            ],
          )
        ],
      ),
    );
  }
}
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class OntapContainer extends StatelessWidget {
  const OntapContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: AppColors.subtitleTextColor,

    ),

    );
  }
  
}
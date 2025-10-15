import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const Customappbar({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.subtitleTextColor.withValues(alpha: 0.2)
              ),
              child: Icon(Icons.arrow_back_ios_new_sharp),
            ),
            
          ),
          const SizedBox(width: 18,),
          Text(title, style: TextStyle(
            color: AppColors.toldTextColor,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
      
        ],
      ),
    );
  }
}
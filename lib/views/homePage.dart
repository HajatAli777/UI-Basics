import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/primeryLogo.png', width: 100,),
                Container(
                  
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.subtitleTextColor.withValues(alpha: 0.2),
                  ),
                  child: Icon(Icons.notification_important_outlined),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppColors.subtitleTextColor.withValues(alpha: 0.4))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, size: 30,),
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.ac_unit_sharp),
                    hintStyle: TextStyle(color: AppColors.subtitleTextColor)
                  ),
                  
                ),
              ),
              
            )

            
          ],
        ),
      )
      ),
      
      
    );
  }
}
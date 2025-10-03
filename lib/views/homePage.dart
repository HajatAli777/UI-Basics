import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
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
                    hintStyle: TextStyle(color: AppColors.subtitleTextColor),
                    suffixIcon: Image.asset(
                      'assets/icon.png',
                        width: 24,
                        height: 24,
                              ),

                  ),
                  
                ),
              ),
              
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset('assets/apartment.png'),
                  const SizedBox(width: 8,),
                  Image.asset('assets/homes.png'),
                  const SizedBox(width: 8,),
                  Image.asset('assets/villas.png'),
                  const SizedBox(width: 8,),
                  Image.asset('assets/bungalows.png')
                ],
              ),
            )  
          ],
        ),
      )
      ),   
    );
  }
}
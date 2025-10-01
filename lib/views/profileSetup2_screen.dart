
import 'package:app/const/primarybutton.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Profilesetup2Screen extends StatelessWidget {
  const Profilesetup2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/Logo.png", height: 30, width: 80),
        centerTitle: true,
      ),
      body: SafeArea(child: 

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ToldText(title: 'Profile Setup',
            subTitle: 'Lets setup your profilefirst to know you better'),
            const SizedBox(height: 16,),
            Row(
              children: [
                Container(
                   
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text('1', style: TextStyle(
                        color: AppColors.secondaryColor
                      ),),
                    ),
                  ),
                  Expanded(child: Divider(color: AppColors.primaryColor)),
                  
                Container(
                   
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text('1', style: TextStyle(
                        color: AppColors.secondaryColor
                      ),),
                    ),
                  ),
                  Expanded(child: Divider(color: AppColors.primaryColor)),
                  
                Container(
                   
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.subtitleTextColor,
                    ),
                    child: Center(
                      child: Text('1', style: TextStyle(
                        color: AppColors.secondaryColor
                      ),),
                    ),
                  ),
                  


                
              ],
            ),
            const SizedBox(height: 35,),
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: AppColors.C_color,
                  borderRadius: BorderRadius.circular(100)
              
                ),
                child: Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                      color: AppColors.subtitleTextColor,
                    ),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Text('Upload a Photo', style: TextStyle(
                color: AppColors.toldTextColor,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),),
            ),
            const SizedBox(height: 25,),
            Container(
              color: AppColors.C_color,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Preview', style: TextStyle(
                    color: App
                  ),)

                ],
              ),

            )
          ],
        ),
      )

      )

         );
  }
}
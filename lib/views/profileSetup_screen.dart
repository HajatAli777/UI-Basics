import 'package:app/const/custom_textfield.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class ProfilesetupScreen extends StatefulWidget {
  const ProfilesetupScreen({super.key});

  @override
  State<ProfilesetupScreen> createState() => _ProfilesetupScreenState();
}

class _ProfilesetupScreenState extends State<ProfilesetupScreen> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: Image.asset('assets/Logo.png', height: 40),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            ToldText(title: "Profile Setup", 
            subTitle: 'Lets setup your profile first to you know better'),
            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  child: Center(child: Text('1', style: TextStyle(color: AppColors.secondaryColor),)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.primaryColor,
                  ),
                  
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: Divider(
                    
                  ),
                ),
                const SizedBox(width: 8,),
                Container(
                   height: 25,
                  width: 25,
                  child: Center(child: Text('2', style: TextStyle(color: AppColors.secondaryColor),)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.subtitleTextColor,
                  ),
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: Divider(
                    
                  ),
                ),
                const SizedBox(width: 8,),
                Container(
                   height: 25,
                  width: 25,
                  child: Center(child: Text('3', style: TextStyle(color: AppColors.secondaryColor),)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.subtitleTextColor,
                  ),
                )
              ],
              
              
            ),
            const SizedBox(height: 20,),
            CustomTextField(label: 'Your Name', hint: 'Ali', controller: TextEditingController())
            

          ],
          
        ),
      )),

    );
  }
}
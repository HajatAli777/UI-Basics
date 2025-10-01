import 'package:app/const/custom_textfield.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/profileSetup2_screen.dart';
import 'package:flutter/material.dart';

class ProfilesetupScreen extends StatefulWidget {
  const ProfilesetupScreen({super.key});

  @override
  State<ProfilesetupScreen> createState() => _ProfilesetupScreenState();
}

class _ProfilesetupScreenState extends State<ProfilesetupScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: Image.asset('assets/primeryLogo.png', height: 40, width: 90,),
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
            subTitle: 'Lets setup your profile first to you know better',),
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
            Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.textFieldFillColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.subtitleTextColor),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
            CustomTextField(label: 'Your Name', hint: 'Ali', controller: TextEditingController()),
            Divider(
              color: AppColors.subtitleTextColor,
            ),
            CustomTextField(label: 'Email', hint: 'ali@email.com', controller: emailController),
             Divider(
              color: AppColors.subtitleTextColor,
            ),
            CustomTextField(label: 'Phone Number', hint: '+12334334', controller: phoneNumberController),
             Divider(
              color: AppColors.subtitleTextColor,
            ),
            CustomTextField(label: 'D,O,B', hint: '02/23/2023', controller: dobController),
            
                               
                      ]
                      
                    ),
    ),
    const SizedBox(height: 30,),
    PrimaryButton(buttontext: 'Next', onTap: (){
      Navigator.push(context,MaterialPageRoute(builder:(_)=> const Profilesetup2Screen()));

    })
 
            

          ],
          
        ),
      )),

    );
  }
}
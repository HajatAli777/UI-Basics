import 'package:app/const/custom_textfield.dart';
import 'package:app/const/line.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/create_password_screen.dart';
import 'package:flutter/material.dart';

class SetpasswordScreen extends StatefulWidget {
  const SetpasswordScreen({super.key});

  @override
  State<SetpasswordScreen> createState() => _SetpasswordScreenState();
}

class _SetpasswordScreenState extends State<SetpasswordScreen> {
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: AppColors.primaryColor,
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Image.asset('assets/Logo.png', height: 50, width: 200,),
            const SizedBox(height: 150,),
            Expanded(child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                 color: AppColors.secondaryColor,
                 borderRadius: 
                 BorderRadius.only(
                  topLeft: Radius.circular(20), 
                  topRight: Radius.circular(20)
                  ),

              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12,),
                      Line(),
                      const SizedBox(height: 16,),
                      ToldText(
                        title: 'Set New Password', 
                        subTitle: 'Enter your new Password to protect your \naccount',),
                        const SizedBox(height: 12,),
                        
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
                                       CustomTextField(
                          label: 'Password', 
                          hint: '*******', 
                          controller: passwordController),
                                
                            
                              ]
                            ),
    ),
                 
                          const SizedBox(height: 16,),
                          PrimaryButton(
                            buttontext: 'Set New Password', 
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_) => CreatePasswordScreen()));

                          }),
                    ],
                  ),
                ),
              ),
              
            )
            )
          ],
        ),
      ),
    );
  }
}
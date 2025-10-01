import 'package:app/const/custom_textfield.dart';
import 'package:app/const/line.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/verifycode_screen.dart';
import 'package:flutter/material.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: AppColors.primaryColor,
        child: SafeArea(child: Column(
          children: [
            const SizedBox(height: 50,),
            Image.asset('assets/Logo.png', height: 50,width: 200,),
            const SizedBox(height: 150,),
            Expanded(
              child: Container(
                width: double.infinity,
                
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), 
                    topRight: Radius.circular(20)
                    ),

                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 16.0), 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        const SizedBox(height: 12,),
                        Line(),
                        const SizedBox(height: 16,),
                        ToldText(
                          title: 'Password Recovery', 
                        subTitle: 'Enter your email so we can send you a 4-digit \ncode',),
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
                          label: 'Email',
                         hint: 'hajay@mail.com', 
                         controller:emailController),
                                
                         
                                
                              ]
                            ),
    ),

                         const SizedBox(height: 20,),
                         PrimaryButton(buttontext: 'Send Code',
                          onTap: () { 
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>VerifycodeScreen()
                            )
                            );

                          },
                          )

                      ],
                      
                    ),
                    ),

                ),
              
              ),
            )
          ],
        )),
      ),

    );
  }
}
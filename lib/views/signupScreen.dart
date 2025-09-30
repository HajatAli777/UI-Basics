import 'package:app/const/authbutton.dart';
import 'package:app/const/custom_textfield.dart';
import 'package:app/const/line.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/create_password_screen.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
    final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

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
            Image.asset('assets/Logo.png', height: 50, width: 200,),
            const SizedBox(height: 150,),
            Expanded(child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: 
                BorderRadius.only(
                  topLeft: Radius.circular(20), 
                  topRight: Radius.circular(20),
                  ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12,),
                    Line(),
                    const SizedBox(height: 15,),
                    ToldText(
                      title: 'Create Account',
                       subTitle: 'New to TripPani! Enter in your details to create your account',

                    ),
                                        

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
                      label: 'Full Name',
                      hint: 'Hajat Ali', 
                      controller: nameController,
                    ),
                    Divider(
                        color: AppColors.subtitleTextColor,
                      ),

                    CustomTextField(
                      label: 'Email', 
                      hint: 'Hajat@e.com', 
                      controller: emailController
                      ),
                      Divider(
                        color: AppColors.subtitleTextColor,
                      ),
                      CustomTextField(
                      label: 'Password', 
                      hint: '******', 
                      controller: passwordController
                      ),
                               
                              ]
                            ),
    ),
                    
                    
                    // 
                    const SizedBox(height: 25,),
                    Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withAlpha(24),
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(color: AppColors.primaryColor),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Text('I agree with the ', 
                        style: TextStyle(
                          color: AppColors.subtitleTextColor,
                          fontSize: 14,
                          ),
                          ),
                          Text('terms & policies', style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),)
                      ],  
                    ),         
                    const SizedBox(height: 10,),
                    PrimaryButton(
                      onTap: () {
        
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (_)=>const CreatePasswordScreen()
                            )
                            );
                        
                        
                      },
                      buttontext: 'Create Password',
                      
                    ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Divider(color: AppColors.subtitleTextColor)),
                      const SizedBox(width: 4),
                      Text("Or login with", style: TextStyle(color: AppColors.subtitleTextColor)),
                      const SizedBox(width: 4),
                       Expanded(child: Divider(color: AppColors.subtitleTextColor)),               
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    AuthButton(
                      imagePath: 'assets/google.png', 
                      ontap: () { 

                       },
                    ),
                    AuthButton(
                      imagePath: 'assets/facebook.png', 
                      ontap: (){
                    
                    }
                    ),
                    AuthButton(
                      imagePath: 'assets/apple.png', 
                      ontap: (){
                    
                    }
                    ),
                    ],

                  )  ,
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text('Don’t have an account?', style: TextStyle(
                        color: AppColors.subtitleTextColor,
                        fontSize: 14,
                      ),
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Text('Create Account', style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ),
                     ],
                  ) ,
                  const SizedBox(height: 30,)      




                  ],
                ),

              ),


            )
            )
            
            
          ],
        )),

      ),
    );
  }
}
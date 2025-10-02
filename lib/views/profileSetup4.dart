import 'package:app/const/custom_textfield.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/homePage.dart';
import 'package:app/views/profileSetup3.dart';
import 'package:flutter/material.dart';

class Profilesetup4 extends StatefulWidget {
  const Profilesetup4({super.key});

  @override
  State<Profilesetup4> createState() => _Profilesetup4State();
}

class _Profilesetup4State extends State<Profilesetup4> {
  final locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.transparent, // Remove background color
  elevation: 0, // Remove AppBar shadow
  centerTitle: true,
  automaticallyImplyLeading: false, // Remove back button
  title: Image.asset("assets/Logo.png", height: 30, width: 80),
),

      body: SafeArea(child: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
               ToldText(
                    title: 'Profile Setup',
                    subTitle: 'Lets setup your profilefirst to know you better',
                  ),
                  const SizedBox(height: 12),
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
                          child: Text(
                            '1',
                            style: TextStyle(color: AppColors.secondaryColor),
                          ),
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
                          child: Text(
                            '2',
                            style: TextStyle(color: AppColors.secondaryColor),
                          ),
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
                          child: Text(
                            '3',
                            style: TextStyle(color: AppColors.secondaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        color: AppColors.C_color,
                        borderRadius: BorderRadius.circular(20)
                        
                      ),
                      child: Image.asset('assets/map.png',fit: BoxFit.cover,),
                    ),
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
                                CustomTextField(label: 'Your Location', hint: 'EX+1, Waterloo, London, England', controller: locationController)
            
                               
                      ]
                      
                    ),

    ),
    const SizedBox(height: 80,),
    PrimaryButton(
                  buttontext: 'Next',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Homepage()));
                  },
                ),
                
                TextButton(onPressed: (){

                }, 
                child: Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Profilesetup3()));
                    },
                    child: Text('Back', style: TextStyle(
                      color: AppColors.subtitleTextColor,
                      
                    ),
                    ),
                  ),
                ), 
                )


          
            ],
          
          ),
        ),
        


      )
      ),
      );
  }
}
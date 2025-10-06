import 'package:app/const/primarybutton.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/profileSetup2_screen.dart';
import 'package:app/views/profileSetup4.dart';
import 'package:flutter/material.dart';

class Profilesetup3 extends StatelessWidget {
  const Profilesetup3({super.key});

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

      body: SafeArea(
        child: SingleChildScrollView(
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
                        color: AppColors.subtitleTextColor,
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
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppColors.C_color,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset('assets/person.png'),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'Upload a Photo',
                    style: TextStyle(
                      color: AppColors.toldTextColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  height: 159,
                  color: AppColors.C_color,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Preview',
                        style: TextStyle(
                          color: AppColors.toldTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: AppColors.subtitleTextColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.asset('assets/person.png'),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: AppColors.subtitleTextColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.asset('assets/person.png'),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: AppColors.subtitleTextColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.asset('assets/person.png'),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.subtitleTextColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.asset('assets/person.png'),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.subtitleTextColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.asset('assets/person.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                  buttontext: 'Next',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profilesetup4()));
                    // Navigation or logic
                  },
                ),
                
                TextButton(onPressed: (){

                }, 
                child: Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Profilesetup2Screen()));
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
        ),
      ),
    );

    
  }
}
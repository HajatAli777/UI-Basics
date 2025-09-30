import 'package:app/const/line.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/setPassword_Screen.dart';
import 'package:flutter/material.dart';

class VerifycodeScreen extends StatelessWidget {
  const VerifycodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: AppColors.primaryColor,
        child:SafeArea(child: Column(
          children: [
            const SizedBox(height: 50,),
            Image.asset('assets/Logo.png', width: 200, height: 50,),
            const SizedBox(height: 150,),
            Expanded(child: Container(
              width: double.infinity, 
              decoration: BoxDecoration(
                 color: AppColors.secondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), 
                  topRight: Radius.circular(20)
                  ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12,),
                    Line(),
                    const SizedBox(height: 16,),
                    ToldText(title: 'Verify Code', subTitle: 'Enter the 4 digit code to access your account'),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withAlpha(16),
                            borderRadius: BorderRadius.circular(4),
                            border:Border.all(color: AppColors.subtitleTextColor)
                          ),
                          child: Center(
                            child: Text('0', style: TextStyle(
                              color: AppColors.subtitleTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            ),),
                          ),
                        ),
                        const SizedBox(width: 13,),
                        Container(
                          width: 60,
                          height: 60,
                          
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withAlpha(16),
                            borderRadius: BorderRadius.circular(4),
                            border:Border.all(color: AppColors.subtitleTextColor)
                          ),
                          child: Center(
                            child: Text('0', style: TextStyle(
                              color: AppColors.subtitleTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            ),),
                          ),
                        ),
                        const SizedBox(width: 13,),
                        Container(
                          width: 60,
                          height: 60,
                          
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withAlpha(16),
                            borderRadius: BorderRadius.circular(4),
                            border:Border.all(color: AppColors.subtitleTextColor)
                          ),
                          child: Center(
                            child: Text('0', style: TextStyle(
                              color: AppColors.subtitleTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            ),),
                          ),
                        ),
                        const SizedBox(width: 13,),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withAlpha(16),
                            borderRadius: BorderRadius.circular(4),
                            border:Border.all(color: AppColors.subtitleTextColor)
                          ),
                          child: Center(
                            child: Text('0', style: TextStyle(
                              color: AppColors.subtitleTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            ),),
                          ),
                        ),
                        const SizedBox(width: 13,),

                        
                      ],
                    ),
                    const SizedBox(height: 20,),
                    PrimaryButton(
                      buttontext: 'Verify Code', 
                      onTap: (){
                        Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => const SetpasswordScreen()),
                                  );
                       

                    }
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('30:23', style: TextStyle(
                          color: AppColors.subtitleTextColor,
                          fontSize: 16,
                        ),
                        ),
                        const SizedBox(width: 4,),
                        Text('Resend Code', style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ],
                    )

                  ],

                ),
              ),
              


            ),
            )



          ],
        )
        )

      ),

    );
  }
}
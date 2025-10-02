import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            // backgroundColor: AppColors.primaryColor,
            leading: Image.asset('assets/primeryLogo.png',width: 100,height: 30,),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
            ],
          ),
        ),
      ),
    );
  }
}
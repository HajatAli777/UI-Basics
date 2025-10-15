import 'package:app/const/customAppbar.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class ApartmentBookingScreen extends StatelessWidget {
  const ApartmentBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(padding: EdgeInsets.all(16),
          child: Customappbar(onTap: () {
            
          },
          title: 'rere',
          )
          ),
          
        ],
      )),
    );
  }
}
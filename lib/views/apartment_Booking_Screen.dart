import 'package:app/const/customAppbar.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class ApartmentBookingScreen extends StatelessWidget {
  final Map<String, dynamic> data;
  final String? err;
  const ApartmentBookingScreen({super.key, required this.data, required this.err});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(padding: EdgeInsets.all(16),
          child: Customappbar(onTap: () {
            
          },
          title: data['title'],
          )
          ),
          const SizedBox(height: 12,),
          Image.network(data["image"]),
          Row(
            children: [
              Text(data['hello'] + 'Guest')
            ],
          )

        ],
      )),
    );
  }
}
import 'package:app/const/customAppbar.dart';
import 'package:flutter/material.dart';

class ApartmentBookingScreen extends StatelessWidget {
  final Map<String, dynamic> cardItem;
  final String? err;
  const ApartmentBookingScreen({super.key, required this.cardItem, required this.err});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(
        children: [
          Customappbar(
            onTap: () {
              Navigator.pop(context);
            }, 
            
            title: cardItem['title'],
          ),
          const SizedBox(height: 12),
          Image.network(cardItem['image']),
          
        ],
      )
      ),
      
    );
  }
}
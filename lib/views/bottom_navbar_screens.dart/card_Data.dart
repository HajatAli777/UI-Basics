import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  const CardData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey
              
            ),
            
          )
        ],
      )),
    );
  }
}
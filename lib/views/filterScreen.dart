import 'package:app/const/filterScreenCard.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Filterscreen extends StatefulWidget {
  const Filterscreen({super.key});

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  List  filterData= [{
    'title': 'Appartment',
    'imageUrl': 'assets/apartment.png'


  }]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/primeryLogo.png', height: 40,),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.subtitleTextColor.withValues(alpha: 0.2),
                    ),
                    child: Center(
                      child: Icon(Icons.notifications_outlined),
                    ),
                  )
                ],
              ),
              
        
            ),
            const SizedBox(height: 20,),
            Filterscreencard(title: filterData[0]['title'], imageUrl: filterData[0]['imageUrl'])

          ],
        ),
      )
    );
  }
}

import 'package:app/const/filterScreenCard.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Filterscreen extends StatefulWidget {
  const Filterscreen({super.key});

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  List cardData = [
    {
      'title': 'Apartment',
      'imageUrl': 'assets/apartment.png'
    },
    {
      'title': 'Homes',
      'imageUrl': 'assets/homes.png'
    },
    {
      'title': 'Villas',
      'imageUrl': 'assets/villas.png'
    },
    {
      'title': 'Bungalows',
      'imageUrl': 'assets/bungalows.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/primeryLogo.png'),
                    Center(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.subtitleTextColor.withValues(alpha: 0.6),
                      
                        ),
                        child: const Icon(Icons.notifications),
                      ),
                    )
                  ],
                ),
              ),
             
              const SizedBox(height: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Looking for?', style: TextStyle(
                    color: AppColors.toldTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  const SizedBox(height: 9,),
                  Text('Which of these suits you for this stay', style: TextStyle(
                    color: AppColors.subtitleTextColor.withValues(alpha: 0.6),
                    fontSize: 16,

                  ),)
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: GridView.builder(
                  itemCount: cardData.length,
                  padding: EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 12),
                    
                    itemBuilder: (context, index){
                      var Cards = cardData[index];
                      return Filterscreencard(
                        title: cardData[index]
                        ['title'], imageUrl: 
                        cardData[index]['imageUrl']
                        );
                    },
                  ),
              ),
              
              

            ],
          ),
        )
      ),



    );
  }
}
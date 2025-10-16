import 'package:app/const/customAppbar.dart';
import 'package:app/const/detail_container.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class ApartmentBookingScreen extends StatelessWidget {
  final Map<String, dynamic> cardItem;
  final String? err;
  const ApartmentBookingScreen({super.key, required this.cardItem, required this.err});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView(
        child: Column(
          children: [
            Customappbar(
              onTap: () {
                Navigator.pop(context);
              }, 
              
              title: cardItem['title'],
            ),
            const SizedBox(height: 12),
            Image.network(cardItem['imageUrl']),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
        
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(cardItem['title']),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.subtitleTextColor.withValues(alpha: 0.2)
                      ),
                      child: Icon(Icons.favorite, color: AppColors.subtitleTextColor.withValues(alpha: 0.5),),
                    )
                  ],),
                  Text(cardItem['places']??"Null"),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(cardItem['guest']),
                      SizedBox(width: 8,),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor
                        ),
        
                      ),
                      SizedBox(width: 6),
                      Text(cardItem['beds']),
                       SizedBox(width: 8,),
                       Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor
                        ),
        
                      ),
                      SizedBox(width: 6),
        
                      Text(cardItem['bathroom']??"unknow"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text('${cardItem['price']}\$',
                  style: TextStyle(
                    textBaseline: TextBaseline.ideographic
                  ),
                  ),
                  const SizedBox(height: 15),
                  Text('Your Stay', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),),
                  Row(
                    children: [
                      Text(cardItem["bookingDate"]),
                      const SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.subtitleTextColor
                        ),
                      ),
                      const SizedBox(width: 6),
        
                      Text(cardItem["stayDays"]),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text('${cardItem['price']}\$'),
                  const SizedBox(height: 14),
                  Text('Amenities', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),),
                  Row(
                    children: [
                      DetailContainer(title: "AC"),
                      const SizedBox(width: 17,),
                      DetailContainer(title: "Heating"),
                      const SizedBox(width: 17,),
                      DetailContainer(title: "Wifi"),
                      const SizedBox(width: 17,),
                      DetailContainer(title: "Free Parking"),

                    ],

                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      DetailContainer(title: "Kitchen"),
                      const SizedBox(width: 17,),
                      DetailContainer(title: "Dryer"),
                      const SizedBox(width: 17,),
                      DetailContainer(title: "Door Alarm"),
                      

                    ],

                  ),
                  const SizedBox(height: 15,),
                  Text("Reviews", style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(height: 20,),
                  
        
        
                ]
              ),
            )
            
          ],
        ),
      )
      ),
      
    );
  }
}
import 'package:app/const/customAppbar.dart';
import 'package:app/const/detail_container.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/booking_details_map_screen.dart';
import 'package:flutter/material.dart';

class ApartmentBookingScreen extends StatelessWidget {
  final Map<String, dynamic> cardItem;
  final String? err;
  const ApartmentBookingScreen({super.key, required this.cardItem, required this.err});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PrimaryButton(buttontext: 'Next', onTap: () {  
          Navigator.push(context, MaterialPageRoute(builder: (c)=>BookingDetailsMapScreen()));
        
        },),
      ),
      
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
                  Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                  ),
                  child: Image.network("assets/person.png",fit: BoxFit.cover ),
                ),
                Column(
                  children: [
                    Text('Hajat Ali' ,style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                    Text('10/3/2020', style: TextStyle(color: AppColors.subtitleTextColor),),
                  ],
                ),
                const SizedBox(width: 200,),
                Icon(Icons.star, color: AppColors.toldTextColor,size: 35,),
                const SizedBox(width: 13,),
                Text('5', style: TextStyle(fontSize: 20),),
                const SizedBox(width: 8,),
                Text('(20)', style: TextStyle(color: AppColors.subtitleTextColor.withValues(alpha: 0.5), fontSize: 20),)
              ],
            ),
            const SizedBox(height: 15,),
            Text('Lorem ipsum dolor sit amet consectetur. Mauris non blandit nulla felis donec lacus etiam pharetra nunc. Quisque lacinia in tortor amet felis fames sem. Proin viverra praesent magna nisl cursus nunc magna blandit. At convallis pellentesque at sollicitudin et vitae. Etiam semper nec sit a. Ut semper orci ut quam. Fringilla.', 
            style: TextStyle(
              color: AppColors.subtitleTextColor,
            ),)
          ],
        ),
      ),
    ),
    const SizedBox(height: 15,),
                 Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                  ),
                  child: Image.network("assets/person.png",fit: BoxFit.cover ),
                ),
                Column(
                  children: [
                    Text('Hajat Ali' ,style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                    Text('10/3/2020', style: TextStyle(color: AppColors.subtitleTextColor),),
                  ],
                ),
                const SizedBox(width: 200,),
                Icon(Icons.star, color: AppColors.toldTextColor,size: 35,),
                const SizedBox(width: 13,),
                Text('5', style: TextStyle(fontSize: 20),),
                const SizedBox(width: 8,),
                Text('(20)', style: TextStyle(color: AppColors.subtitleTextColor.withValues(alpha: 0.5), fontSize: 20),)
              ],
            ),
            const SizedBox(height: 15,),
            Text('Lorem ipsum dolor sit amet consectetur. Mauris non blandit nulla felis donec lacus etiam pharetra nunc. Quisque lacinia in tortor amet felis fames sem. Proin viverra praesent magna nisl cursus nunc magna blandit. At convallis pellentesque at sollicitudin et vitae. Etiam semper nec sit a. Ut semper orci ut quam. Fringilla.', 
            style: TextStyle(
              color: AppColors.subtitleTextColor,
            ),)
          ],
        ),
      ),
    ),
    const SizedBox(height: 100),
        
        
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
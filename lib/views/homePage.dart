import 'package:app/const/home_card_wedgits.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List cardList = [
    {
      'imageUrl':'https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D',
      'title': 'Luxury Apartment',
      'rating': 4.9,
      'reviews': 400,
      'price': 11000,

    },
    {
      'imageUrl':'https://plus.unsplash.com/premium_photo-1661964402307-02267d1423f5?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
      'title': 'The Grand Hotel',
      'rating': 3.6,
      'reviews': 370,
      'price': 5499,

    },
    {
      'imageUrl':'https://holopakistan.com/wp-content/uploads/2022/10/1407953244000-177513283.jpg',
      'title': 'Family Apartment',
      'rating': 4,
      'reviews': 330,
      'price': 7000,

    },
    {
      'imageUrl':'https://www.millenniumhotels.com/mhb-media/asia/13534-m-hotel-singapore/rooms/new-images/m-hotel.jpg?rev=9e50aad8af644f5387339ec40d324fb4',
      'title': 'Room with a view',
      'rating': 3.4,
      'reviews': 300,
      'price': 4300,

    },
    {
      'imageUrl':'https://www.travelandleisure.com/thmb/fXDn5hZ59eUXAMNtiyRQBe2Oh2g=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/TAL-mandarin-oreintal-new-york-NYCHOTELVIEWS0924-830f2725a84e4bc1a5203acb12023018.jpg',
      'title': 'Royal Hotel',
      'rating': 4.6,
      'reviews': 450,
      'price': 5000,

    },
    {
      'imageUrl':'https://media.cnn.com/api/v1/images/stellar/prod/4b-mandarin-oriental-jumeira-dubai-the-royal-penthouse-bedroom.jpg?q=w_1110,c_fill',
      'title': 'The Ramada Hotel',
      'rating': 5,
      'reviews': 1200,
      'price': 12000,

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/primeryLogo.png',
                      width: 100,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            AppColors.subtitleTextColor.withOpacity(0.2), // Fixed alpha
                      ),
                      child: const Icon(Icons.notification_important_outlined),
                    )
                  ],
                ),
                const SizedBox(height: 20),
            
                // Search Box
                Container(
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: AppColors.subtitleTextColor.withOpacity(0.4), // Fixed alpha
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.search, size: 30),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: AppColors.subtitleTextColor),
                        suffixIcon: Image.asset(
                          'assets/icon.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
            
                // Property Type Icons Row
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset('assets/apartment.png'),
                      const SizedBox(width: 8),
                      Image.asset('assets/homes.png'),
                      const SizedBox(width: 8),
                      Image.asset('assets/villas.png'),
                      const SizedBox(width: 8),
                      Image.asset('assets/bungalows.png'),
                    ],
                  ),
                  
                ),
                const SizedBox(height: 20),
                // HomeCardWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(itemCount: cardList.length, 
                  itemBuilder: (context, index){
                    var cardListData = cardList[index];
                    return HomeCardWidget(
                      imageUrl: cardListData['imageUrl'],
                      title: cardListData['title'],
                      rating: cardListData['rating'],
                      reviews: cardListData['reviews'],
                      price: cardListData['price'],

                    );
                    

                  }
                )
            
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

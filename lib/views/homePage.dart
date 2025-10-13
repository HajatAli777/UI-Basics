import 'package:app/const/home_card_wedgits.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/filterScreen.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List cardList = [
    {
      'imageUrl':
          'https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YXBhcnRtZW50JTIwaW50ZXJpb3J8ZW58MHx8MHx8fDA%3D',
      'title': 'Luxury Apartment',
      'rating': 4.9,
      'reviews': 400,
      'price': 100,
      'distance': 12,
    },
    {
      'imageUrl':
          'https://plus.unsplash.com/premium_photo-1661964402307-02267d1423f5?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww',
      'title': 'The Grand Hotel',
      'rating': 3.6,
      'reviews': 370,
      'price': 76,
      'distance': 34,
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo73dlbBQ1J4gZJuH2fwwWr4mWl0uIenxC8Q&s',
      'title': 'Family Apartment',
      'rating': 4.0,
      'reviews': 330,
      'price': 70,
      'distance': 20,
    },
    {
      'imageUrl':
          'https://www.millenniumhotels.com/mhb-media/asia/13534-m-hotel-singapore/rooms/new-images/m-hotel.jpg?rev=9e50aad8af644f5387339ec40d324fb4',
      'title': 'Room with a view',
      'rating': 3.4,
      'reviews': 300,
      'price': 43,
      'distance': 11,
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp9P6cL784vcHpdMvYPXkdkFYdTvoo5puSfg&s',
      'title': 'Royal Hotel',
      'rating': 4.6,
      'reviews': 450,
      'price': 50,
      'distance': 8
    },
    {
      'imageUrl':
          'https://media.cnn.com/api/v1/images/stellar/prod/4b-mandarin-oriental-jumeira-dubai-the-royal-penthouse-bedroom.jpg?q=w_1110,c_fill',
      'title': 'The Ramada Hotel',
      'rating': 5.0,
      'reviews': 1200,
      'price': 120,
      'distance': 5
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
                // Header
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
                        color: AppColors.subtitleTextColor.withOpacity(0.2),
                      ),
                      child: const Icon(Icons.notification_important_outlined),
                    ),
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
                      color: AppColors.subtitleTextColor.withOpacity(0.4),
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
                        suffixIcon: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (c)=>const Filterscreen()));
                          },
                          child: Image.asset(
                            'assets/icon.png',
                            width: 24,
                            height: 24,
                          ),
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
                // List of Cards
                ListView.builder(
                  shrinkWrap: true, // Allows ListView to take only needed space
                  physics: const NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  itemCount: cardList.length,
                  itemBuilder: (context, index) {
                    var cardListData = cardList[index];
                    return HomeCardWidget(
                      imageUrl: cardListData['imageUrl'],
                      title: cardListData['title'],
                      rating: cardListData['rating'].toDouble(),
                      reviews: cardListData['reviews'],
                      price: cardListData['price'],
                      distance: cardListData['distance'],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
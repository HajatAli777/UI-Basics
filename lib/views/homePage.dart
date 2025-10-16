import 'package:app/const/home_card_wedgits.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';
import 'package:app/views/apartment_booking_screen.dart';
import 'package:app/views/filterScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List cardList = [
    {
      'imageUrl':
          'https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000',
      'title': 'Luxury Apartment',
      'rating': 4.9,
      'reviews': 400,
      'price': 100,
      'distance': 12,
      'places': 'Pakistan,  india,  America,  Japan  ',
      'guest': '3 Guest',
      'beds': '3 Beds',
      'bathroom': '1 Bathroom',
      'bookingDate': "1 - 16 Dec",
      "stayDays": "16 Days"

    },
    {
      'imageUrl':
          'https://plus.unsplash.com/premium_photo-1661964402307-02267d1423f5?fm=jpg&q=60&w=3000',
      'title': 'The Grand Hotel',
      'rating': 3.6,
      'reviews': 370,
      'price': 76,
      'distance': 34,
      'places': 'Pakistan,  india,  America,  Japan  ',
      'guest': '4 Guest',
      'beds': '4 Beds',
      'bathroom': '1 Bathroom'
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo73dlbBQ1J4gZJuH2fwwWr4mWl0uIenxC8Q&s',
      'title': 'Family Apartment',
      'rating': 4.0,
      'reviews': 330,
      'price': 70,
      'distance': 20,
      'places': 'Pakistan,  india,  America,  Japan  ',
      'guest': '2 Guest',
      'beds': '2 Beds',
      'bathroom': '1 Bathroom'
    },
    {
      'imageUrl':
          'https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000',
      'title': 'MIdway ',
      'rating': 4.8,
      'reviews': 40,
      'price': 108,
      'distance': 42,
      'places': 'Pakistan,  india,  America,  Japan  ',
      'guest': '6 Guest',
      'beds': '6 Beds',
      'bathroom': '3 Bathroom'
    },
    {
      'imageUrl':
          'https://plus.unsplash.com/premium_photo-1661964402307-02267d1423f5?fm=jpg&q=60&w=3000',
      'title': 'KFC',
      'rating': 3.6,
      'reviews': 90,
      'price': 5,
      'distance': 4,
      'places': 'Pakistan,  india,  America,  Japan  ',
      'guest': '5 Guest',
      'beds': '6 Beds',
      'bathroom': '1 Bathroom'
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo73dlbBQ1J4gZJuH2fwwWr4mWl0uIenxC8Q&s',
      'title': 'Park Hotel',
      'rating': 4.0,
      'reviews': 630,
      'price': 90,
      'distance': 23,
      'places': 'Pakistan,  india,  America,  Japan  ',
      'guest': '2 Guest',
      'beds': '2 Beds',
      'bathroom': '1 Bathroom'
    },
    {
      'imageUrl':
          'https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?fm=jpg&q=60&w=3000',
      'title': 'Rupal in',
      'rating': 4.9,
      'reviews': 400,
      'price': 100,
      'distance': 12,
      'places': 'Pakistan,  india,  America,  Japan  ',
      'guest': '2 Guest',
      'beds': '2 Beds',
      'bathroom': '1 Bathroom'
    },
    {
      'imageUrl':
          'https://plus.unsplash.com/premium_photo-1661964402307-02267d1423f5?fm=jpg&q=60&w=3000',
      'title': 'Sareena Hotel',
      'rating': 3.6,
      'reviews': 30,
      'price': 56,
      'distance':43,
      'places': 'Pakistan,  india,  America,  Japan  ',
      'guest': '4 Guest',
      'beds': '4 Beds',
      'bathroom': '1 Bathroom'
      
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo73dlbBQ1J4gZJuH2fwwWr4mWl0uIenxC8Q&s',
      'title': 'Ramada Hotel',
      'rating': 4.0,
      'reviews': 330,
      'price': 73,
      'distance': 21,
      'places': 'Turkey,  india,  America,  Japan  ',
      'guest': '2 Guest',
      'beds': '2 Beds',
      'bathroom': '1 Bathroom'
    },
  ];

  List cardListData = [];

  @override
  void initState() {
    super.initState();
    cardListData = List.from(cardList);
  }

  void search(String query) {
    if (query.isEmpty) {
      setState(() {
        cardList = List.from(cardListData);
      });
      return;
    }
    setState(() {
      cardList = cardListData.where((data) {
        final title = data['title'].toString().toLowerCase();
        return title.startsWith(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Header Row
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
                      child: const Icon(Icons.notifications_none),
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
                      onChanged: search,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.search, size: 30),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: AppColors.subtitleTextColor),
                        suffixIcon: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) => const Filterscreen(),
                              ),
                            );
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

                const SizedBox(height: 20),

                // List of Cards
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cardList.length,
                  itemBuilder: (context, index) {
                    var cardItem = cardList[index];
                    return HomeCardWidget(
                      imageUrl: cardItem['imageUrl'],
                      title: cardItem['title'],
                      rating: cardItem['rating'].toDouble(),
                      reviews: cardItem['reviews'],
                      price: cardItem['price'],
                      distance: cardItem['distance'],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => ApartmentBookingScreen(cardItem: cardItem, err: 'sd',)
                          ),
                        );
                      },
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

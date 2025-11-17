import 'package:app/const/home_card_wedgits.dart';
import 'package:app/controllers/home_controller.dart';
import 'package:app/utills/colors.dart';
import 'package:app/views/bottom_navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:app/views/apartment_booking_screen.dart';
import 'package:app/views/filterScreen.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {

  HomeController homeController = HomeController();
  @override
  void initState() {
    super.initState();
    homeController.cardListData = List.from(homeController.cardList);
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },),
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
                      onChanged: (value){
                        if(value.isEmpty){
                          setState(() {
                            homeController.cardList = List.from(homeController.cardListData);
                          });

                        }
                        else{
                          setState(() {
                            homeController.search(value);
                          });
                        }
                      },
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

                Obx(()=>
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: homeController.cardList.length,
                  itemBuilder: (context, index) {
                    var cardItem = homeController.cardList[index];
                    
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
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

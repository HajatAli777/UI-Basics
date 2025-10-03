
import 'package:app/utills/colors.dart';
import 'package:app/views/bottom_navbar/card_screen.dart';
import 'package:app/views/bottom_navbar/inbox_screen.dart';
import 'package:app/views/bottom_navbar/profile_screen.dart';
import 'package:app/views/homePage.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  final List<Widget> screensList = [
    Homepage(),
    CardScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: AppColors.secondaryColor,
        unselectedItemColor: AppColors.toldTextColor,
        iconSize: 24,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Cart'),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_sharp),
            label: "Inbox",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: screensList[selectedIndex],
    );
  }
}
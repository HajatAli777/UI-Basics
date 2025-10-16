import 'package:app/const/customAppbar.dart';
import 'package:app/const/custom_textfield.dart';
import 'package:app/const/primarybutton.dart';
import 'package:app/const/toldText.dart';
import 'package:flutter/material.dart';

class BookingDetailsMapScreen extends StatefulWidget {
  const BookingDetailsMapScreen({super.key});

  @override
  State<BookingDetailsMapScreen> createState() => _BookingDetailsMapScreenState();
}

class _BookingDetailsMapScreenState extends State<BookingDetailsMapScreen> {
  final locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PrimaryButton(buttontext: 'Next', onTap: (){
          
        }),
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Customappbar(onTap: (){
                Navigator.pop(context);
              },
               title: 'Booking Details'),
               const SizedBox(height: 25,),
               ToldText(title: 'Locaton', subTitle: 'This is where you will be'),
               const SizedBox(height: 20,),
               Image.asset('assets/map.png'),
               const SizedBox(height: 16,),
               CustomTextField(label: 'Your location', hint: 'EX+1, Waterloo, London, England', controller: locationController),
            ],
          ),
        ),
      )),
    );
  }
}
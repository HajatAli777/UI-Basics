import 'package:app/const/customAppbar.dart';
import 'package:app/const/custom_textfield.dart';
import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter/material.dart';

class BookingDetailsPersonalDetails extends StatefulWidget {
  const BookingDetailsPersonalDetails({super.key});

  @override
  State<BookingDetailsPersonalDetails> createState() =>
      _BookingDetailsPersonalDetailsState();
}

class _BookingDetailsPersonalDetailsState
    extends State<BookingDetailsPersonalDetails> {
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final emailController = TextEditingController();
  final locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Customappbar(
                onTap: () {
                  Navigator.pop(context);
                },
                title: 'Booking Details',
              ),
              const SizedBox(height: 20),
              ToldText(
                title: 'Personal Details',
                subTitle:
                    'Confirm your personal details for the host to ensure your accommodation',
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,

                decoration: BoxDecoration(
                  color: AppColors.textFieldFillColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.subtitleTextColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      label: 'Your Name',
                      hint: 'Ali',
                      controller: nameController,
                    ),
                    Divider(color: AppColors.subtitleTextColor),
                    CustomTextField(
                      label: 'Phone Number',
                      hint: '+92355545453',
                      controller: numberController,
                    ),
                    Divider(color: AppColors.subtitleTextColor),
                    CustomTextField(
                      label: 'Email',
                      hint: 'example@email.com',
                      controller: emailController,
                    ),
                    Divider(color: AppColors.subtitleTextColor),
                    CustomTextField(
                      label: 'Your comming from',
                      hint: 'London xyz',
                      controller: nameController,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              



            ],
          ),
        ),
      ),
    );
  }
}

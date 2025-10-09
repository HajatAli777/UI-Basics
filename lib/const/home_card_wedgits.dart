import 'package:app/const/toldText.dart';
import 'package:app/utills/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final int reviews;
  final int price;
  final int distance;

  const HomeCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16), 
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: AppColors.subtitleTextColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text('Most Recommended'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: AppColors.toldTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    tapOnlyMode: true,
                    updateOnDrag: false,
                    ignoreGestures: true,
                    itemCount: 5,
                    itemSize: 24,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: AppColors.primaryColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text(
                    "($reviews)",
                    style: TextStyle(color: AppColors.subtitleTextColor),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Distance
              Text(
                "${distance} km away from your location",
                style: TextStyle(color: AppColors.subtitleTextColor),
              ),
              const SizedBox(height: 16),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        "\$$price a night",
                        style: TextStyle(color: AppColors.secondaryColor),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.subtitleTextColor.withOpacity(0.2),
                    ),
                    child: const Center(child: Icon(Icons.favorite_border)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
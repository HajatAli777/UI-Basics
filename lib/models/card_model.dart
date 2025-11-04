import 'package:flutter/foundation.dart';

class CardModel {
  final String title;
  final String imageUrl;
  final double rating;
  final int reviews;
  final int price;
  final String places;
  final String guest;
  final String beds;
  final String bathroom;
  final String bookingDate;
  final String stayDays;
  const CardModel( 
    { 
    required this.title,
  required this.places,
   required this.imageUrl,
    required this.rating,
     required this.reviews,
      required this.guest,
       required this.beds,
      required this.bathroom,
       required this.bookingDate,
        required this.stayDays, 
        required this.price
        }
        );
}
Map<String, dynamic>fromJson(){
  return {
    'title': title,
    'imageUrl': imageUrl,
    'rating': rating,
    'reviews': reviews,
    'price': price,
    'places': places,
    'guest': guest,
    'beds': beds,
    'bathroom': bathroom,
    'bookingDate': bookingDate,
    'stayDays': stayDays,
  };
}
Factory CardModel.fromJson(Map<String, dynamic> ){
  return CardModel(
    title: json['title'],
    imageUrl: json['imageUrl'],
    rating: json['rating'],
    reviews: json['reviews'],
    price: json['price'],
    places: json['places'],
    guest: json['guest'],
    beds: json['beds'],
    bathroom: json['bathroom'],
    bookingDate: json['bookingDate'],
    stayDays: json['stayDays'],
  );
}
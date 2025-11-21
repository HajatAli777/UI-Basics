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
  final int distance;

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
        required this.price,
        required this.distance
        }
        );
        Map<String, dynamic> toJson(){
          return{
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
            'distance': distance,
          };
        }
      factory CardModel.fromJson(Map<String, dynamic> map){
        return CardModel(title: map["title"]??"",
         places: map["places"],
        imageUrl: map["imageUrl"],
        rating: map["rating"],
        reviews: map["reviews"],
        guest: map["guest"],
        beds: map["beds"],
        bathroom: map["bathroom"],
        bookingDate: map["bookingDate"],
        stayDays: map["stayDays"],
        price: map["price"],
        distance: map["distance"],
        );
        
      }
}

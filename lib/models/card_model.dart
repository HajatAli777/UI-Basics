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

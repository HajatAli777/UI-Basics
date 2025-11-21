import 'package:app/models/card_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
    @override
  void onInit() {
    cardListData.assignAll(cardList);
    super.onInit();
  }

  var originalData = <CardModel>[].obs;

  List<CardModel> cardListData = [];

  List<CardModel> cardList = <CardModel>[
  ].obs;
  
  void search(String query) { 
      cardList = cardListData.where((data) {
        final title = data.title.toLowerCase();
        return title.startsWith(query.toLowerCase());
      }).toList(); 
  }
}

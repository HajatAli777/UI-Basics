import 'package:app/controllers/card_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class CardData extends StatelessWidget {
  const CardData({super.key});

  @override
  Widget build(BuildContext context) {
    var cardDataController = Get.put(CardDataController());
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50,),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              image: DecorationImage(image: cardDataController.selectedImage.value !=null ? FileImage(cardDataController.selectedImage.value!):NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/330px-Placeholder_view_vector.svg.png"),fit: BoxFit.cover)
              
            ),
            child: Center(
              child: IconButton(onPressed: (){
                cardDataController.pickImage();
              }, icon: Icon(Icons.camera_alt,size: 30,color: Colors.grey,)),
            ),
          
            
          )
        ],
      )),
    );
  }
}
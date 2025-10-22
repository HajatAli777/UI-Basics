import 'package:app/views/profileSetup_screen.dart';
import 'package:flutter/material.dart';

class LoginController {
  void loginUser(String password,String email, BuildContext context){
    try{
      if (email.isEmpty || password.isEmpty){
        throw Exception("Email or password cannot empty");

      }
      else{
        debugPrint("login sucefully");
        Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => ProfilesetupScreen()
                                  )
                                  );
      }
    }catch(e){
      debugPrint("This is Error$e");
    }
    
  }
}
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled18/auth.dart';
class signupController extends GetxController{
  static signupController get instance=> Get.find();
  final name = TextEditingController();
  final email = TextEditingController();
  final phn = TextEditingController();
  final password = TextEditingController();
   void registerUser(String email , String passward){
     AuthenticationRepotry.instance.CreateUserWithEmailAndPssward(email, passward);

   }

}
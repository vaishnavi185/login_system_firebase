import 'package:flutter/material.dart';
import 'package:untitled18/forget.dart';
import 'main.dart';
import 'forget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'code.dart';


class sign extends StatefulWidget {
  const sign({Key? key}) : super(key: key);

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  var _textController = TextEditingController();
  final controller = Get.put(signupController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Form(
        child: Column(
          children: [
            Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              ),)
            ),
            TextFormField(
              controller: controller.name,
              decoration: InputDecoration(
                hintText: "Name"
              ),
            ),
            TextFormField(
              controller: controller.phn,
              decoration: InputDecoration(
                hintText: "Phone_number"
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
            ),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                hintText: "password"
              ),
            ),
            Container(

              height: 20,
              child: TextField(
                controller: _textController ,

                autocorrect: true,
                decoration: InputDecoration(
                  hintText: "Enter Email",


                ),

                keyboardType: TextInputType.emailAddress,

              ),
            ),

            Center(
              child: TextButton(
                onPressed:(){Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:(context)=>login(),));},
                child: Text(
                  "Login"
                ),
              ),
            ),
            Center(
              child: TextButton(
                child: Text(
                    "Forget passward?"
                ),
                onPressed: (){Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:(context)=>forget(value:_textController.text,),));},
              ),

            ),
          ],
        ),

      ),
    );
  }
}

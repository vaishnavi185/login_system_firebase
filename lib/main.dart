import 'package:flutter/material.dart';
import 'package:untitled18/auth.dart';
import 'sign in.dart';
import 'splash.dart';
import 'forget.dart';
import 'code.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.ini
//
//   runApp(const MyApp());
// }
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: splash(),
    );
  }
}
class login extends StatelessWidget {
  // GlobalKey<FormState>_key=GlobalKey();
  // const login({Key? key}) : super(key: key);
  var _textController = TextEditingController();
  var authHandler = new Path();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.lightBlueAccent,
      body: Form(
        // key: _key,
         child:Column(
           children: [
             Center(
               child: Text(
                 "Login",
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w700
                 ),
               ),
             ),
             TextFormField(
               decoration: InputDecoration(
                 hintText: "Name",

               ),
               validator: (value){
                 if(value!.length==0){
                   return "name is required";
                 }
               },
             ),
             TextFormField(
               decoration: InputDecoration(
                 hintText: "passward",

               ),
             ),

             Center(
               child: TextButton(
                 child: Text(
                   "Sign In"
                 ),
                 onPressed: (){Navigator.pushReplacement(context,
                     MaterialPageRoute(builder:(context)=>sign(),));},
               ),
             ),


             Center(  child: TextButton(
                 child: Text(
                     "Login"
                 ),
                 onPressed: (

                     ){},
               ),

             ),


           ],

             )

    )
    ,
    );
  // _key.currentState.validate();
  }
}




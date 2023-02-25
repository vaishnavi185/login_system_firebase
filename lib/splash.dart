import 'package:flutter/material.dart';
import 'snack.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @ override
  void initState(){
    super.initState();
    navigateToHome();

  }
  navigateToHome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder:(context)=>snackBarDemo()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(

        child: Column(
          children:[
            SizedBox(
             width: 100,
             height: 100,
            ),


            Container(
            child: Text(
              "Login_screen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,

              ),
            ),
          ),
            SizedBox(
              width: 10,
              height: 20,
            ),
            Container(
              child: Icon(
                  Icons.logout_sharp
              ),
            ),

          ])


        ),
      );

  }
}
import 'package:flutter/material.dart';
import 'main.dart';
import 'sign in.dart';
class forget extends StatefulWidget {

  final  String value;
  const forget({Key? key,required this.value }) : super(key: key);

  @override
  State<forget> createState() => _forgetState();
}

class _forgetState extends State<forget> {
  @override
  Widget build(BuildContext context) {

  

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          children: [
            Container(
              child: Icon(
                Icons.lock_reset
              ),
            ),
            SizedBox(
              width: 300,
              height: 10,
            ),
            Container(
              child: Text(
                "Reset Passward",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,

                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 20,
            ),
            Center(
              child:
            Text("${widget.value}" ,
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,)),

            SizedBox(
              height: 50,
              width: 50,
            ),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter new passward"
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Confirm passward"
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 20,
            ),



            Container(
              child: ElevatedButton(
                child: Text(
                  "Reset passward"
                ),
                onPressed: (){
                  print("send");
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}

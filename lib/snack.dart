import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const header = 'LOGIN';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: header,
      home: MyHomePage(title: header),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body: const snackBarDemo(),
    );
  }
}


class snackBarDemo extends StatelessWidget {
  const snackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        onPressed: () { Navigator.pushReplacement(context,
    MaterialPageRoute(builder:(context)=>login(),));
          const snackdemo = SnackBar(
            content: Text('this is login screen'),
            backgroundColor: Colors.blueGrey,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackdemo);


        },
        child: const Text('login'),
      ),


    );
  }
}


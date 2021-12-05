import 'package:flutter/material.dart';
import 'package:myburger/view/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ann's Hot Burger",
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SplashPage(),
      ));
  }
}


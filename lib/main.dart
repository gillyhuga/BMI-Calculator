import 'package:flutter/material.dart';
import 'package:praktikum2/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xffF5F6F8),
        fontFamily: "Nunito",
      ),
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provit_foods/screens/splash_screen.dart';

void main() {
  runApp(IdealChickenApp());
}

class IdealChickenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ideal Chicken',
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: SplashScreen(),
    );
  }
}

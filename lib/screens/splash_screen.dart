import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provit_foods/screens/homescreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              'assets/images/banner.jpeg',
              'assets/images/dayoldchick.jpg',
              'assets/images/tyson.jpg',
            ].map((imgPath) {
              return Image.asset(imgPath, fit: BoxFit.cover);
            }).toList(),
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
          ),
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/banner.jpeg'),
          ),
          SizedBox(height: 10),
          Text(
            'Ideal Chicken',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Provit Foods Private Limited',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productDescription;

  DetailScreen({
    required this.productName,
    required this.productImage,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(productName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(productImage, height: MediaQuery.of(context).size.height * 0.5, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              productName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(productDescription, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}

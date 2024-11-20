import 'package:flutter/material.dart';

class AboutAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('About App'),
      ),
      body: ListView(
        children: [
          Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            '''Company Profile

            This App Is Portfolio of Provit Foods which shows diffrent Items of Provit Foods Private Limited 
      
      ANUPAMA FEEDS & FARMS
      
      Provit Foods Pvt. Ltd. is a leading poultry production and supply chain company specializing in the distribution of high-quality poultry products. Headquartered in Kalpane, Kulshekar, Mangalore, we proudly market our products under the brand name IDEAL CHICKEN.
      
      IDEAL CHICKEN
      
      IDEAL CHICKEN is one of Karnataka's leading poultry producers today. The family-owned and operated company was established in 2005 by Mr. Vincent Cutinha, an entrepreneur who identified the potential of poultry sales in the market. The company's retail business began with the first Ideal Chicken outlet at Kulshekar Kaikamba, Mangalore, on 27 September 2005.
      
      Through Mr. Vincent's expertise, well-balanced sales analysis, and determination to elevate the business, the company has grown significantly over the years. Today, IDEAL CHICKEN boasts a chain of 12 retail outlets.
      
      The company has diversified its operations into Feed Production/Sales, Breeder Production, Hatching, Livestock Production/Sales, Dressed Chicken Division, Institutional/Retail Sales, and Online Retail Sales.
      
      The feed factory, located in Moodbidri, is equipped with top-class machinery and produces approximately 3,000 tons of poultry and cattle feed per month for both internal use and external customers. Additionally, the breeding farm, situated in the serene outskirts of Belur, fulfills the company's hatching egg requirements.
      ''',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ),
        ],
      ),
    );
  }
}

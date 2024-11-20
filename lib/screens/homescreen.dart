import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provit_foods/screens/appdrawer.dart';
import 'package:provit_foods/screens/detailsscreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> liveProducts = [
  {
    "name": "Day Old Chick",
    "image": "assets/images/dayoldchick.jpg",
    "description": "Chicks are transported to our own farms and are also available for sale. Utmost hygiene is maintained in the hatchery to protect chicks from infection."
  },
  {
    "name": "Broiler Live Bird",
    "image": "assets/images/broiler.jpg",
    "description": "Birds are lifted from the farms by our own vehicles and distributed with the brand name Ideal chicken."
  },
  {
    "name": "Tyson Live Bird",
    "image": "assets/images/tyson.jpg",
    "description": "Tyson birds are purchased from well-known breeder farms and recirculated in our own outlets and are also available for sale."
  },
  {
    "name": "Eggs",
    "image": "assets/images/eggs.jpg",
    "description": "Eggs are among the most nutritious foods on the planet. They are loaded with nutrients, some of which are rare in the modern diet."
  }
];


  final List<Map<String, String>> feedProducts = [
  {
    "name": "Broiler Pre-starter",
    "image": "assets/images/broilerprestart.png",
    "description": "Consumed by Broiler birds starting from age 0 up to 13 days."
  },
  {
    "name": "Broiler Starter",
    "image": "assets/images/broiler.png",
    "description": "Consumed by Broiler birds starting from age 13 up to 24 days."
  },
  {
    "name": "Broiler Finisher-I",
    "image": "assets/images/broiler1.png",
    "description": "Consumed by Broiler birds starting from age 24 up to 32 days."
  },
  {
    "name": "Broiler Finisher-II",
    "image": "assets/images/broiler2.png",
    "description": "Consumed by Broiler birds starting from age 33 up to farm lifting."
  },
  {
    "name": "Mash feed",
    "image": "assets/images/diamondmesh.png",
    "description": "Mash is in its ground form. It is smaller in size and can be easily consumed by younger birds."
  },
  {
    "name": "Crumble feed",
    "image": "assets/images/crumblefeed.png",
    "description": "Crumbles are pellets that have been sent through rollers to break them into granules."
  },
  {
    "name": "Pellet feed",
    "image": "assets/images/palletfeed.png",
    "description": "Pellets are compressed and molded form of ground feed. It is mainly used to avoid selective eating by birds."
  }
];

  final List<Map<String, String>> processProducts = [
  {
    "name": "Chicken Tendy",
    "image": "assets/images/chickentendy.jpg",
    "description": "Tendy chicken is lifted from our farms at 28 days of age. It is mainly used as tandoori chicken and recommended for cardiac patients, cholesterol affected people, and diet-conscious individuals."
  },
  {
    "name": "Chicken Juicy",
    "image": "assets/images/chickenjuicy.jpg",
    "description": "Juicy chicken is soft and juicy with minimum fat and is lifted from farms at 35 days of age. These birds are mostly used as grilled chicken and in restaurants."
  },
  {
    "name": "Chicken Tasty",
    "image": "assets/images/chickentasty.jpg",
    "description": "Tasty chicken are lifted at the age of 38-42 days which is very tasty with normal fat content. These birds are used in homes, for parties, and catering."
  },
  {
    "name": "Chicken with skin",
    "image": "assets/images/chickenwithskin.jpg",
    "description": "The chicken is boiled in hot water and de-feathered in a feather-out machine."
  },
  // {
  //   "name": "Chicken without skin",
  //   "image": "assets/images/chicken_without_skin.png",
  //   "description": "The chicken skin is pulled out entirely along with the feathers."
  // },
  // {
  //   "name": "Drumstick with skin",
  //   "image": "assets/images/drumstick_with_skin.png",
  //   "description": "Drumstick is dark meat and is the lower part of the leg."
  // },
  // {
  //   "name": "Drumstick without skin",
  //   "image": "assets/images/drumstick_without_skin.png",
  //   "description": "Drumstick is dark meat and is the lower part of the leg."
  // },
  // {
  //   "name": "Full leg thigh with skin",
  //   "image": "assets/images/full_leg_thigh_with_skin.png",
  //   "description": "Full leg thigh comprises the thigh and the drumstick."
  // },
  // {
  //   "name": "Full leg thigh without skin",
  //   "image": "assets/images/full_leg_thigh_without_skin.png",
  //   "description": "Full leg thigh comprises the thigh and the drumstick."
  // },
  // {
  //   "name": "Chicken Breast",
  //   "image": "assets/images/chicken_breast.png",
  //   "description": "These are white meat and are relatively dry."
  // },
  // {
  //   "name": "Boneless",
  //   "image": "assets/images/boneless.png",
  //   "description": "Boneless meat is obtained by de-boning the breast or thigh piece."
  // },
  // {
  //   "name": "Chicken wings",
  //   "image": "assets/images/chicken_wings.png",
  //   "description": "Chicken wings are often served as a light meal. These are also used to make lollipops."
  // },
  // {
  //   "name": "Chicken lollypop",
  //   "image": "assets/images/chicken_lollypop.png",
  //   "description": "These are made from chicken wings. They are shaped like small drumsticks."
  // },
  // {
  //   "name": "Chicken liver",
  //   "image": "assets/images/chicken_liver.png",
  //   "description": "This is the largest organ of the chicken."
  // },
  // {
  //   "name": "Chicken gizzard",
  //   "image": "assets/images/chicken_gizzard.png",
  //   "description": "Gizzard is an organ found in the digestive tract of a chicken, similar to a stomach."
  // },
  // {
  //   "name": "Chicken soupstick",
  //   "image": "assets/images/chicken_soupstick.png",
  //   "description": "These contain relatively little meat and are eaten mainly for the skin and cartilage."
  // },
  // {
  //   "name": "Chicken heart",
  //   "image": "assets/images/chicken_heart.png",
  //   "description": "Chicken hearts are a delicacy often enjoyed in various cuisines."
  // },
  // {
  //   "name": "Chicken mince",
  //   "image": "assets/images/chicken_mince.png",
  //   "description": "Skinless and boneless breasts and thighs are used to make minced chicken."
  // },
  // {
  //   "name": "Chicken back and neck",
  //   "image": "assets/images/chicken_back_and_neck.png",
  //   "description": "These parts are often used for making chicken broth or soups."
  // }
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Provit Foods',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(12.0),
            color: Colors.red,
            child: CarouselSlider(
              items: [
                'assets/images/broiler.jpg',
                'assets/images/dayoldchick.jpg',
                'assets/images/tyson.jpg',
              ].map((imgPath) {
                return Image.asset(imgPath, fit: BoxFit.cover,width:double.infinity,);
              }).toList(),
              options: CarouselOptions(
                height: 150.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
          ),
          buildSection(context, "Live Products", liveProducts),
          buildSection(context, "Feed Products", feedProducts),
          buildSection(context, "Processed Products", processProducts),
        ],
      ),
    );
  }

  Widget buildSection(BuildContext context, String title, List<Map<String, String>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        productName: items[index]['name']!,
                        productImage: items[index]['image']!,
                        productDescription: items[index]['description']!,
                      ),
                    ),
                  );
                },
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    width: MediaQuery.sizeOf(context).width*0.40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Image.asset(items[index]['image']!, width: 80, height: 80, fit: BoxFit.cover)),
                        Expanded(
                          flex: 3,
                          child: Text(items[index]['name']!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

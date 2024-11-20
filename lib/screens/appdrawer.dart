import 'package:flutter/material.dart';
import 'package:provit_foods/screens/aboutappscreen.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {


final Uri _url =
      Uri.parse('https://www.freeprivacypolicy.com/live/7cd73246-ccac-40cf-9daa-0d9048f54c02');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.yellow,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.yellow),
            child: UserAccountsDrawerHeader(
              accountName: Text("Welcome",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),), 
              accountEmail: Text("Provit Foods Private Ltd.",style: TextStyle(fontSize: 18,color: Colors.white),)),
          ),
          Container(
             margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
            color: Colors.grey,
            child: ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text('About App',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutAppScreen()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            color: Colors.grey,
            child: ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text('Privacy Policy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              onTap: () {
                _launchUrl();
              },
            ),
          ),
          Container(
             margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
            color: Colors.grey,
            child: ListTile(
              trailing: Icon(Icons.arrow_downward),
              title: Text('Contact Us',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              onTap: () {
                showTopSnackBar(
                  snackBarPosition: SnackBarPosition.bottom,
                  Overlay.of(context),
                  const CustomSnackBar.info(
                    message:
                        "For Any Issues and Enqueries Reach Us At : hansalodyyunus@gmail.com",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

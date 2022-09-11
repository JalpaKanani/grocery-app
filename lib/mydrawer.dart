import 'package:flutter/material.dart';
import 'package:vegapp/screen/drawer%20screen/Payment.dart';
import 'package:vegapp/screen/drawer%20screen/faqscreen.dart';
import 'package:vegapp/screen/drawer%20screen/ratingscreen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Grocer App',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'THE ALL IN THE FOOD SHOP',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                 // textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        // ListTile(
        //   title: Text(
        //     'Notifications',
        //     style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        //   ),
        //   leading: Icon(
        //     Icons.notifications,
        //     color: Colors.deepOrange,
        //   ),
        //   onTap: () {},
        // ),
        ListTile(
          title: Text(
            'Rating & Reviews',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.star,
            color: Colors.deepOrange,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(RatingScreen.routeName);
          },
        ),
        ListTile(
          title: Text(
            'FAQs',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(FaqScreen.routeName);
          },
          leading: Icon(
            Icons.help,
            color: Colors.deepOrange,
          ),
        ),
        ListTile(
          title: Text(
            'Payment',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(PaymentScreen.routeName);
          },
          leading: Icon(
            Icons.payment,
            color: Colors.deepOrange,
          ),
        ),
        ListTile(
          title: Text(
            'Terms & Conditions',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.fact_check,
            color: Colors.deepOrange,
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.security,
            color: Colors.deepOrange,
          ),
          onTap: () {

          },
        ),
        ListTile(
          title: Text(
            'About Us',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.apartment,
            color: Colors.deepOrange,
          ),
          onTap: () {},
        ),
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('contact Us',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Call Us:',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '  +91 7990425274',
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Mail Us:',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '  retrytech@gmail.comv1.0',
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

      ]),
    );
  }
}

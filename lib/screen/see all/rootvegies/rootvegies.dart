import 'dart:math';

import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/main.dart';
import 'package:vegapp/screen/rootvegies/beetroot.dart';
import 'package:vegapp/screen/rootvegies/carrotorange.dart';
import 'package:vegapp/screen/rootvegies/cauliflower.dart';
import 'package:vegapp/screen/rootvegies/mooli.dart';
import 'package:vegapp/screen/rootvegies/onion.dart';
import 'package:vegapp/screen/rootvegies/potato.dart';
import 'package:vegapp/screen/rootvegies/potatoes.dart';
import 'package:vegapp/screen/see%20all/rootvegies/rootvegiesitem.dart';
import 'package:vegapp/shimmer/veg_card_shimmer.dart';

class RootVegiesScreen extends StatefulWidget {
  static String routeName = '/rootvegies';

  @override
  _RootVegiesScreenState createState() => _RootVegiesScreenState();
}

class _RootVegiesScreenState extends State<RootVegiesScreen> {
  static List<RootVegies> rootvegies = [
    RootVegies(
      'https://5.imimg.com/data5/RV/HE/PX/SELLER-33434421/white-sweet-potato-500x500.jpg',
      'Potatoes',
      '1 Kg',
      '\u{20B9} 20',
      Potatoes.routeName,
    ),
    RootVegies(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQYw9GjW_ph3XjNHLL4EptVvDMiXDmGsJxkHfs2JhSgk4dFf8JT_e6ejlnC4_grCcIeI&usqp=CAU',
        'Carrot Orange ',
        '500 Gram',
        '\u{20B9} 30',
        Carrotorange.routeName),
    RootVegies(
      'https://rukminim1.flixcart.com/image/416/416/jtsz3bk0/vegetable/b/8/4/2-potato-un-branded-no-whole-original-imafdsymh2aepaph.jpeg?q=70',
      'Potato',
      '2 Kg',
      '\u{20B9} 28',
      Potato.routeName,
    ),
    RootVegies(
      'http://ocdn.eu/images/pulscms/YjA7MDA_/61b48c9fe44623f22315f7563538ec88.jpeg',
      'Onion',
      '1 Kg',
      '\u{20B9} 25',
      Onion.routeName,
    ),
    RootVegies(
      'https://i2.wp.com/kashmirlife.net/wp-content/uploads/2018/09/beetroot.jpg?resize=696%2C503&ssl=1',
      'Beet Root',
      '1 Kg',
      '\u{20B9} 30',
      Beetroot.routeName,
    ),
    RootVegies(
      'https://thumbs.dreamstime.com/b/fresh-broccoli-isolate-white-background-green-cabbage-broccoli-white-background-141912531.jpg',
      'Cauliflower',
      '1 Piece',
      '\u{20B9} 40',
      Cauliflower.routeName,
    ),
    RootVegies(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUU4d8eChCLq6Jejo5PqlLi2ALtaQ-yc0GfyzyxvblDkmGaRZtsWvERazh5qXxEDa8LoM&usqp=CAU',
        'Mooli',
        '20.5 Kg',
        '\u{20B9} 200.5',
        Mooli.routeName),
  ];

  // List<String> iImg = [
  //   'https://5.imimg.com/data5/RV/HE/PX/SELLER-33434421/white-sweet-potato-500x500.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQYw9GjW_ph3XjNHLL4EptVvDMiXDmGsJxkHfs2JhSgk4dFf8JT_e6ejlnC4_grCcIeI&usqp=CAU',
  //   'https://rukminim1.flixcart.com/image/416/416/jtsz3bk0/vegetable/b/8/4/2-potato-un-branded-no-whole-original-imafdsymh2aepaph.jpeg?q=70',
  //   'http://ocdn.eu/images/pulscms/YjA7MDA_/61b48c9fe44623f22315f7563538ec88.jpeg',
  //   'https://i2.wp.com/kashmirlife.net/wp-content/uploads/2018/09/beetroot.jpg?resize=696%2C503&ssl=1',
  //   'https://thumbs.dreamstime.com/b/fresh-broccoli-isolate-white-background-green-cabbage-broccoli-white-background-141912531.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUU4d8eChCLq6Jejo5PqlLi2ALtaQ-yc0GfyzyxvblDkmGaRZtsWvERazh5qXxEDa8LoM&usqp=CAU',
  // ];
  // List<String> iName = [
  //   'Potatoes',
  //   'Carrot Orange ',
  //   'Potato',
  //   'Onion',
  //   'Beet Root',
  //   'Cauliflower',
  //   'Mooli',
  // ];
  // List<String> iUnit = [
  //   '1 Kg',
  //   '500 Gram',
  //   '2 Kg',
  //   '1 Kg',
  //   '1 Kg',
  //   '1 Piece',
  //   '20.5 Kg',
  // ];
  // List<String> iPrice = [
  //   '\u{20B9} 20',
  //   '\u{20B9} 30',
  //   '\u{20B9} 28',
  //   '\u{20B9} 25',
  //   '\u{20B9} 30',
  //   '\u{20B9} 40',
  //   '\u{20B9} 200.5',
  // ];
  // List<String> iRoute = [
  //   Potatoes.routeName,
  //   Carrotorange.routeName,
  //   Potato.routeName,
  //   Onion.routeName,
  //   Beetroot.routeName,
  //   Cauliflower.routeName,
  //   Mooli.routeName,
  // ];

//  var list;
 // var random;
  //var refreshKey = GlobalKey<RefreshIndicatorState>();
  late bool isLoading;

  @override
  void initState() {
    //list = List.generate(3, (i) => ListView());
    super.initState();
   // random = Random();
   // refreshList();

    isLoading = true;
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Root Vegies',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () => showSearch(
              context: context,
              delegate: SearchPage<RootVegies>(
                searchLabel: 'Search Rootvegies',

                //    barTheme: Theme.of(context),
                //barTheme: ThemeData.from(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)),
                itemStartsWith: true,

                //  onQueryUpdate: (s)=>print(s),
                suggestion: Container(
                  // height: 400,width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                    child: ListView.builder(
                      itemCount: rootvegies.length,
                      itemBuilder: (context, index) {
                        final RootVegies attas = rootvegies[index];

                        return Card(
                          elevation: 6,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(attas.route);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6),
                                      child: Image(
                                        height: 80,
                                        width: 80,
                                        image: NetworkImage(attas.image),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            attas.name,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            attas.unit,
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            attas.price,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Colors.deepOrange),
                                          ),
                                        ],
                                      ),
                                    ),
                                    AddButton1(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                builder: (contact) => Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                  child: Card(
                    elevation: 6,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(contact.route);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Image(
                                  height: 80,
                                  width: 80,
                                  image: NetworkImage(contact.image),
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      contact.name,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      contact.unit,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      contact.price,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.deepOrange),
                                    ),
                                  ],
                                ),
                              ),
                              AddButton1(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                filter: (contact) => [
                  contact.image,
                  contact.name,
                  contact.unit,
                  contact.price,
                ],
                items: rootvegies,
                // failure: Text(
                //   'No Suggestion......',
                //   style: TextStyle(fontSize: 20),
                // ),
                failure: Center(
                    child: Container(
                        child: Image.network(
                            'https://media2.giphy.com/media/fTzTrSGJkVGcciMrQr/source.gif'))),
              ),
            ),
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          isLoading
              ? Expanded(
                  child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) => VegCartShimmer()))
              : Expanded(
                  child: RefreshIndicator(

                    onRefresh: ()=>Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (a, b, c) =>RootVegiesScreen(),
                              transitionDuration: Duration(seconds: 0))),

                    // key: refreshKey,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 8, right: 8),
                      child: ListView.builder(
                        itemCount: rootvegies.length,
                        itemBuilder: (context, index) {
                          final RootVegies rootvegi = rootvegies[index];
                          return Card(
                            elevation: 6,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(rootvegi.route);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 6),
                                        child: Image(
                                          height: 80,
                                          width: 80,
                                          image: NetworkImage(
                                            rootvegi.image,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              rootvegi.name,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              rootvegi.unit,
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              rootvegi.price,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  color: Colors.deepOrange),
                                            ),
                                          ],
                                        ),
                                      ),
                                      AddButton1(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

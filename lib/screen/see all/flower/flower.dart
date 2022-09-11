import 'dart:math';

import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/screen/flower/lily.dart';
import 'package:vegapp/screen/flower/lotus.dart';
import 'package:vegapp/screen/flower/rose.dart';
import 'package:vegapp/screen/flower/sunflower.dart';
import 'package:vegapp/screen/flower/tulips.dart';
import 'package:vegapp/screen/see%20all/flower/floweritem.dart';
import 'package:vegapp/shimmer/veg_card_shimmer.dart';

class FlowerScreen extends StatefulWidget {
  static String routeName = 'flower';


  static List<Flower> flower = [
    Flower(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmeQ1ZSzOtvwo4Ra89e7xBUVRf6O0NYQaGeyqxpY6ZctgTBctaq8sNLb27x4jqGqGlYFI&usqp=CAU',
      'Rose',
      '1 Piece',
      '\u{20B9}25',
      RoseScreen.routeName,
    ),
    Flower(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB6QhBzSmZQkvbnHWTDaF0DfdLG3e_vN9MztPEgqXmW8yh1n4CKYJD_V3zAXmr71CBECw&usqp=CAU',
      'Lotus',
      '1 Piece',
      '\u{20B9}35',
      LotusScreen.routeName,
    ),
    Flower(
      'https://c7.uihere.com/files/477/572/868/sunflower-yellow-flower-nature.jpg',
      'SunFlower',
      '1 Piece',
      '\u{20B9}35',
      SunFlowerScreen.routeName,
    ),
    Flower(
      'https://static7.depositphotos.com/1004017/781/i/600/depositphotos_7816194-stock-photo-tiger-lily.jpg',
      'Lily',
      '5 Piece',
      '\u{20B9}20',
      LilyScreen.routeName,
    ),
    Flower(
      'https://images.fineartamerica.com/images/artworkimages/mediumlarge/3/bouquet-of-tulips-on-a-white-background-larisa-fedotova.jpg',
      'Tulips',
      '1 Piece',
      '\u{20B9}30',
      TulipsScreen.routeName,
    ),
  ];

  @override
  State<FlowerScreen> createState() => _FlowerScreenState();
}

class _FlowerScreenState extends State<FlowerScreen> {
  // List<String> iImg =[


  late bool isLoading ;

  @override
  void initState() {
    isLoading = true;
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        isLoading=false;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Flowers',
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
              delegate: SearchPage<Flower>(
                searchLabel: 'Search flowers',

                //    barTheme: Theme.of(context),
                //barTheme: ThemeData.from(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)),
                itemStartsWith: true,

                //  onQueryUpdate: (s)=>print(s),
                suggestion: Container(
                  // height: 400,width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                    child: ListView.builder(
                      itemCount: FlowerScreen.flower.length,
                      itemBuilder: (context, index) {
                        final Flower flowers = FlowerScreen.flower[index];

                        return Card(
                          elevation: 6,
                          child: InkWell(
                            onTap: () {
                               Navigator.of(context).pushNamed(flowers.route);
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
                                        image: NetworkImage(flowers.image),
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
                                            flowers.name,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            flowers.unit,
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            flowers.price,
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
                  padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                  child: Card(
                    elevation: 6,
                    child: InkWell(
                      onTap: () {
                        // Navigator.of(context).pushNamed(iRoute[index]);
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
                items: FlowerScreen.flower,
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
      isLoading?Expanded(child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context,index)=>VegCartShimmer())):
          Expanded(
            child: RefreshIndicator(


              onRefresh: ()=>Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (a, b, c) =>FlowerScreen(),
                      transitionDuration: Duration(seconds: 0))),
              child: Padding(
                padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                child: ListView.builder(
                  itemCount: FlowerScreen.flower.length,
                  itemBuilder: (context, index) {
                    final Flower flowers = FlowerScreen.flower[index];

                    return Card(
                      elevation: 6,
                      child: InkWell(
                        onTap: () {
                           Navigator.of(context).pushNamed(flowers.route);
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
                                    image: NetworkImage(flowers.image
                                        // iImg[index].toString(),
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        flowers.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        flowers.unit,
                                        //   iUnit[index].toString(),
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        flowers.price,
                                        //iPrice[index].toString(),
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

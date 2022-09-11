import 'dart:math';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/screen/grocery/almonds.dart';
import 'package:vegapp/screen/grocery/dryfruits.dart';
import 'package:vegapp/screen/grocery/figs.dart';
import 'package:vegapp/screen/grocery/marri.dart';
import 'package:vegapp/screen/grocery/mashroom.dart';
import 'package:vegapp/screen/grocery/redbull.dart';
import 'package:vegapp/screen/grocery/riceflour.dart';
import 'package:vegapp/screen/grocery/skittles.dart';
import 'package:vegapp/screen/see%20all/grocery/groceryitem.dart';
import 'package:vegapp/shimmer/veg_card_shimmer.dart';

class GroceryScreen extends StatefulWidget {
  static String routeName = '/grocery';

  @override
  _GroceryScreenState createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  late bool isLoading ;

  @override
  void initState() {
    //list = List.generate(3, (i) => ListView());
    super.initState();


    isLoading = true;
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        isLoading=false;
      });
    });
  }







  static List<Grocery>grocery=[
    Grocery('https://3.imimg.com/data3/AY/PY/MY-18884422/black-pepper-kali-mirch-500x500.jpg','Marri',  '100 Gram','\u{20B9}45', Marri.routeName,),
    Grocery( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToCpKyErAZ3n7iNRQeYqtUnqlpIOOZu3YlzpCDuoNt_WsS41iYrx3sOTbbW5TdaZYaZEU&usqp=CAU','Skittles','33 Gram', '\u{20B9}46',     Skittles.routeName,),
    Grocery( 'https://5.imimg.com/data5/NS/XU/MY-17977060/common-fig-500x500.png','Figs','500 Gram','\u{20B9}500', Figs.routeName,),
    Grocery( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1MO7QD3KCbGa76QAlJbvMvNZDncWnAkFLTBbK7PLL6xZa1_Eop-SUbxgIfdshLPpwYW4&usqp=CAU', 'Dry Fruits',  '1 Kg', '\u{20B9}405',  DryFruits.routeName,),
    Grocery( 'https://img2.exportersindia.com/product_images/bc-full/dir_128/3829655/jute-rice-bags-2441832.jpg', 'Rice Flour',    '500 Gram', '\u{20B9}27',  RiceFlour.routeName, ),
    Grocery('https://3.imimg.com/data3/SF/TL/GLADMIN-55748/almond-nuts-500x500.jpg', 'Almonds', '500 Gram','\u{20B9}407',Almonds.routeName,),
    Grocery( 'https://thumbs.dreamstime.com/b/fresh-champignion-mushrooms-blue-box-20070272.jpg',  'Mashroom',  '200 Gram', '\u{20B9}44',  Mashroom.routeName,),
    Grocery( 'https://media.istockphoto.com/photos/can-of-red-bull-on-a-bed-of-ice-picture-id539272093?k=20&m=539272093&s=612x612&w=0&h=OnkDOgNY73R16TMDR-IK7i5tyTh3W51Xu5c3rVDF-hU=',   'Red Bull', '1 Piece',  '\u{20B9} 30',  RedBull.routeName,),

  ];


  // List<String> iImg = [
  //   'https://3.imimg.com/data3/AY/PY/MY-18884422/black-pepper-kali-mirch-500x500.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToCpKyErAZ3n7iNRQeYqtUnqlpIOOZu3YlzpCDuoNt_WsS41iYrx3sOTbbW5TdaZYaZEU&usqp=CAU',
  //   'https://5.imimg.com/data5/NS/XU/MY-17977060/common-fig-500x500.png',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1MO7QD3KCbGa76QAlJbvMvNZDncWnAkFLTBbK7PLL6xZa1_Eop-SUbxgIfdshLPpwYW4&usqp=CAU',
  //   'https://img2.exportersindia.com/product_images/bc-full/dir_128/3829655/jute-rice-bags-2441832.jpg',
  //   'https://3.imimg.com/data3/SF/TL/GLADMIN-55748/almond-nuts-500x500.jpg',
  //   'https://thumbs.dreamstime.com/b/fresh-champignion-mushrooms-blue-box-20070272.jpg',
  //   'https://media.istockphoto.com/photos/can-of-red-bull-on-a-bed-of-ice-picture-id539272093?k=20&m=539272093&s=612x612&w=0&h=OnkDOgNY73R16TMDR-IK7i5tyTh3W51Xu5c3rVDF-hU=',
  // ];
  // List<String> iName = [
  //   'Marri',
  //   'Skittles',
  //   'Figs',
  //   'Dry Fruits',
  //   'Rice Flour',
  //   'Almonds',
  //   'Mashroom',
  //   'Red Bull',
  // ];
  // List<String> iUnit = [
  //   '100 Gram',
  //   '33 Gram',
  //   '500 Gram',
  //   '1 Kg',
  //   '500 Gram',
  //   '500 Gram',
  //   '200 Gram',
  //   '1 Piece',
  // ];
  // List<String> iPrice = [
  //   '\u{20B9}45',
  //   '\u{20B9}46',
  //   '\u{20B9}500',
  //   '\u{20B9}405',
  //   '\u{20B9}27',
  //   '\u{20B9}407',
  //   '\u{20B9}44',
  //   '\u{20B9} 30',
  // ];
  // List<String> iRoute = [
  //   Marri.routeName,
  //   Skittles.routeName,
  //   Figs.routeName,
  //   DryFruits.routeName,
  //   RiceFlour.routeName,
  //   Almonds.routeName,
  //   Mashroom.routeName,
  //   RedBull.routeName,
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Grocery',
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
              delegate: SearchPage<Grocery>(
                searchLabel: 'Search Grocery',

                //    barTheme: Theme.of(context),
                //barTheme: ThemeData.from(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)),
                itemStartsWith: true,

                //  onQueryUpdate: (s)=>print(s),
                suggestion: Container(
                  // height: 400,width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                    child: ListView.builder(
                      itemCount: grocery.length,
                      itemBuilder: (context, index) {
                        final Grocery groceries = grocery[index];

                        return Card(
                          elevation: 6,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(groceries.route);
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
                                        image: NetworkImage(groceries.image),
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
                                            groceries.name,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            groceries.unit,
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            groceries.price,
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
                items: grocery,
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
                        pageBuilder: (a, b, c) =>GroceryScreen(),
                        transitionDuration: Duration(seconds: 0))),
            child: Padding(
              padding: const EdgeInsets.only(top:10,left: 8, right: 8),
              child: ListView.builder(
                  itemCount: grocery.length,
                  itemBuilder: (context, index) {
                    final Grocery groceries= grocery[index];
                    return Card(
                      elevation: 6,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(groceries.route);
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
                                      groceries.image,
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
                                        groceries.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        groceries.unit,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        groceries.price,
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
                  }),
            ),
          ))
        ],
      ),
    );
  }
}

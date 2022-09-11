import 'dart:math';

import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/screen/fruits/Orange.dart';
import 'package:vegapp/screen/fruits/apple.dart';
import 'package:vegapp/screen/fruits/banana.dart';
import 'package:vegapp/screen/fruits/coconut.dart';
import 'package:vegapp/screen/fruits/cranberries.dart';
import 'package:vegapp/screen/fruits/grepes.dart';
import 'package:vegapp/screen/fruits/kiwigreen.dart';
import 'package:vegapp/screen/fruits/papaya.dart';
import 'package:vegapp/screen/fruits/pearsgreen.dart';
import 'package:vegapp/screen/fruits/pineapple.dart';
import 'package:vegapp/screen/fruits/pomegrante.dart';
import 'package:vegapp/screen/fruits/stroberi.dart';
import 'package:vegapp/screen/fruits/swettamarind.dart';
import 'package:vegapp/screen/fruits/watermelon.dart';
import 'package:vegapp/screen/see%20all/Fruits/fruititem.dart';
import 'package:vegapp/screen/see%20all/flower/floweritem.dart';
import 'package:vegapp/shimmer/veg_card_shimmer.dart';

import '../../fruits/muskmelons.dart';

class FruitsScreen extends StatefulWidget {
  static String routeName = '/fruits';

  @override
  _FruitsScreenState createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {

  static List<Fruits> fruit=[
    Fruits('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9RTBZuhuKIAhl8gQAMzfA9T3oeoA3ZyDs4w&usqp=CAU', 'Coconut',  '1 Piece','₹100',  Coconut.routeName,),
    Fruits(  'https://5.imimg.com/data5/YK/XG/MY-30125612/fresh-tamarind-500x500.jpg',  'Sweet Tamarind',  '250 Gram',  '\u{20B9} 100',SweetTamarind.routeName,),
    Fruits('https://sc02.alicdn.com/kf/U65b0ff39bb134344a34d2f0e0b5a5fabo/FRESH-KIWI-GREEN-COLOR-AND-YELLOW.jpg',  'Kiwi Green',  '3 Piece', '\u{20B9} 80', kiwiGreen.routeName,),
    Fruits(    'https://www.bigbasket.com/media/uploads/p/m/40048445_2-fresho-pear-green-imported.jpg',  'Pears Green',    '4 Piece','\u{20B9} 80', PearsGreen.routeName,),
    Fruits( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5-eq1S9C9YldKd1Rmx7YSQz9sSoKScJpl-uXRcrWE7kXPV4g3JwN3CYO89AQ6hErECS8&usqp=CAU',  'Musk Mealons',  '2 Kg',    '\u{20B9} 120', MuskMelons.routeName,),
    Fruits(  'https://thumbs.dreamstime.com/b/watermelon-slice-10432108.jpg',   'WaterMelon', '1 Piece',  '\u{20B9} 109', WaterMelon.routeName,),
    Fruits( 'https://cdn.shopify.com/s/files/1/0004/6157/0107/products/Strawberry_900x.png?v=1593190272', 'Stroberi',  '1 Kg',  '\u{20B9} 80',Stroberi.routeName,),
    Fruits( 'https://cdn.shopify.com/s/files/1/0104/1059/0266/products/Organic_Papaya.jpg?v=1612511248',   'Papaya',   '800 Gram',  '\u{20B9} 59', Papaya.routeName,),
    Fruits('https://live.staticflickr.com/65535/49496205511_a3de391082_b.jpg',  'Grapes',  '1 Kg',  '\u{20B9} 50', Grepes.routeName,),
    Fruits( 'https://media.istockphoto.com/photos/pomegranate-isolated-on-white-background-with-clipping-path-picture-id1152895164?k=20&m=1152895164&s=612x612&w=0&h=h9eJJ6Wuu8VDtOoVmp57u7AhvuZmmlQY2q-dqiyIOyU=',  'Pomegrante',  '7 Piece','\u{20B9} 600',Pomegranate.routeName,),
    Fruits('https://cdn.shopify.com/s/files/1/0066/7418/6301/products/50913eeb04768a5b1fa9985c16704d96_1600x.jpg?v=1610582043',   'Orange', '1 Kg',    '\u{20B9} 10',  Orange.routeName,),
    Fruits( 'https://media.istockphoto.com/photos/banana-bunch-picture-id173242750?k=20&m=173242750&s=612x612&w=0&h=dgXrAP6otDeY5h6fhy-SRmW-2dFOCKx1_hNS1lLWF7Y=',   'Banana',    '10.05 Piece',    '\u{20B9} 25.05',Banana.routeName,),
    Fruits( 'https://gardenandme.com/wp-content/uploads/2021/02/pineapple.jpg',  'PineApple',   '1 Piece',     '\u{20B9} 70', PineApple.routeName,),
    Fruits( 'https://media.istockphoto.com/photos/cranberries-picture-id481615534?k=20&m=481615534&s=612x612&w=0&h=0A-t1qI41PoRZ0mSXE3C6TCjEwe1B5o4JNa588hXbqI=',  'Candberries','1 Kg',  '\u{20B9} 100', Candberries.routeName,),
    Fruits('https://static9.depositphotos.com/1642482/1111/i/950/depositphotos_11111805-stock-photo-red-apples-and-half-of.jpg',  'Apple', '2 Kg', '\u{20B9} 71.5', Apple.routeName),

  ];

  // List<String> iImg = [
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9RTBZuhuKIAhl8gQAMzfA9T3oeoA3ZyDs4w&usqp=CAU',
  //   'https://5.imimg.com/data5/YK/XG/MY-30125612/fresh-tamarind-500x500.jpg',
  //   'https://sc02.alicdn.com/kf/U65b0ff39bb134344a34d2f0e0b5a5fabo/FRESH-KIWI-GREEN-COLOR-AND-YELLOW.jpg',
  //   'https://www.bigbasket.com/media/uploads/p/m/40048445_2-fresho-pear-green-imported.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5-eq1S9C9YldKd1Rmx7YSQz9sSoKScJpl-uXRcrWE7kXPV4g3JwN3CYO89AQ6hErECS8&usqp=CAU',
  //   'https://thumbs.dreamstime.com/b/watermelon-slice-10432108.jpg',
  //   'https://cdn.shopify.com/s/files/1/0004/6157/0107/products/Strawberry_900x.png?v=1593190272',
  //   'https://cdn.shopify.com/s/files/1/0104/1059/0266/products/Organic_Papaya.jpg?v=1612511248',
  //   'https://live.staticflickr.com/65535/49496205511_a3de391082_b.jpg',
  //   'https://media.istockphoto.com/photos/pomegranate-isolated-on-white-background-with-clipping-path-picture-id1152895164?k=20&m=1152895164&s=612x612&w=0&h=h9eJJ6Wuu8VDtOoVmp57u7AhvuZmmlQY2q-dqiyIOyU=',
  //   'https://cdn.shopify.com/s/files/1/0066/7418/6301/products/50913eeb04768a5b1fa9985c16704d96_1600x.jpg?v=1610582043',
  //   'https://media.istockphoto.com/photos/banana-bunch-picture-id173242750?k=20&m=173242750&s=612x612&w=0&h=dgXrAP6otDeY5h6fhy-SRmW-2dFOCKx1_hNS1lLWF7Y=',
  //   'https://gardenandme.com/wp-content/uploads/2021/02/pineapple.jpg',
  //   'https://media.istockphoto.com/photos/cranberries-picture-id481615534?k=20&m=481615534&s=612x612&w=0&h=0A-t1qI41PoRZ0mSXE3C6TCjEwe1B5o4JNa588hXbqI=',
  //   'https://static9.depositphotos.com/1642482/1111/i/950/depositphotos_11111805-stock-photo-red-apples-and-half-of.jpg',
  // ];
  // List<String> iName = [
  //   'Coconut',
  //   'Sweet Tamarind',
  //   'Kiwi Green',
  //   'Pears Green',
  //   'Musk Mealons',
  //   'WaterMelon',
  //   'Stroberi',
  //   'Papaya',
  //   'Grapes',
  //   'Pomegrante',
  //   'Orange',
  //   'Banana',
  //   'PineApple',
  //   'Candberries',
  //   'Apple',
  // ];
  // List<String> iUnit = [
  //   '1 Piece',
  //   '250 Gram',
  //   '3 Piece',
  //   '4 Piece',
  //   '2 Kg',
  //   '1 Piece',
  //   '1 Kg',
  //   '800 Gram',
  //   '1 Kg',
  //   '7 Piece',
  //   '1 Kg',
  //   '10.05 Piece',
  //   '1 Piece',
  //   '1 Kg',
  //   '2 Kg',
  // ];
  // List<String> iPrice = [
  //   '\u{20B9} 100',
  //   '\u{20B9} 100',
  //   '\u{20B9} 80',
  //   '\u{20B9} 80',
  //   '\u{20B9} 120',
  //   '\u{20B9} 109',
  //   '\u{20B9} 80',
  //   '\u{20B9} 59',
  //   '\u{20B9} 50',
  //   '\u{20B9} 600',
  //   '\u{20B9} 10',
  //   '\u{20B9} 25.05',
  //   '\u{20B9} 70',
  //   '\u{20B9} 100',
  //   '\u{20B9} 71.5',
  // ];
  // List<String> iRoute = [
  //   Coconut.routeName,
  //   SweetTamarind.routeName,
  //   kiwiGreen.routeName,
  //   PearsGreen.routeName,
  //   MuskMelons.routeName,
  //   WaterMelon.routeName,
  //   Stroberi.routeName,
  //   Papaya.routeName,
  //   Grepes.routeName,
  //   Pomegranate.routeName,
  //   Orange.routeName,
  //   Banana.routeName,
  //   PineApple.routeName,
  //   Candberries.routeName,
  //   Apple.routeName
  // ];


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




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Fruits',
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
              delegate: SearchPage<Fruits>(
                searchLabel: 'Search item',

                //    barTheme: Theme.of(context),
                //barTheme: ThemeData.from(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)),
                itemStartsWith: true,

                //  onQueryUpdate: (s)=>print(s),
                suggestion: Container(
                  // height: 400,width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                    child: ListView.builder(
                      itemCount: fruit.length,
                      itemBuilder: (context, index) {
                        final Fruits fruits = fruit[index];

                        return Card(
                          elevation: 6,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(fruits.route);
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
                                        image: NetworkImage(fruits.image),
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
                                            fruits.name,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            fruits.unit,
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            fruits.price,
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
                builder: (fruits) => Padding(
                  padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                  child: Card(
                    elevation: 6,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(fruits.route);
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
                                  image: NetworkImage(fruits.image),
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
                                      fruits.name,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      fruits.unit,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      fruits.price,
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
                items: fruit,
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
                      pageBuilder: (a, b, c) =>FruitsScreen(),
                      transitionDuration: Duration(seconds: 0))),
              child: Padding(
                padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                child: ListView.builder(
                  itemCount: fruit.length,
                  itemBuilder: (context, index) {
                    final Fruits fruits = fruit[index];

                    return Card(
                      elevation: 6,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(fruits.route);
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
                                      fruits.image,
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
                                        fruits.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        fruits.unit,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        fruits.price,
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

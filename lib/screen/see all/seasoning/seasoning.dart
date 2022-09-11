import 'dart:math';

import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/screen/seasoning/chilligreen.dart';
import 'package:vegapp/screen/seasoning/curryleaves.dart';
import 'package:vegapp/screen/seasoning/garlic.dart';
import 'package:vegapp/screen/seasoning/gingerindian.dart';
import 'package:vegapp/screen/seasoning/grasscartoon.dart';
import 'package:vegapp/screen/seasoning/lemon.dart';
import 'package:vegapp/screen/seasoning/ras_ei_hanount.dart';
import 'package:vegapp/screen/see%20all/seasoning/seasoningitem.dart';
import 'package:vegapp/shimmer/veg_card_shimmer.dart';

class SeasoningScreen extends StatefulWidget {
  static String routeName = '/seasoning';

  @override
  _SeasoningScreenState createState() => _SeasoningScreenState();
}

class _SeasoningScreenState extends State<SeasoningScreen> {
  static List<Seasonig>seasoning=[
    Seasonig( 'https://5.imimg.com/data5/IX/VW/RB/SELLER-12007525/kashmeeri-chilli-masala-500x500.png', 'RAS EI hanout',  '10 Gram',  '\u{20B9} 7.9',  RasEIHanount.routeName,),
    Seasonig('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuZeTnc3qoiPMzDF0CMv1B54SLxeEI-yEn9zW3gntxVvABJ_ZOoDcZs6HBZ56xjGMrevI&usqp=CAU',   'GrassCartoon','10 Gram',  '\u{20B9} 7.9',GrassCartoon.routeName,),
    Seasonig('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyjTGR9HKnM1iFC-BAWPZkLPb4mWWUWk2lTfSeNKizyj77wy8MrNnef7niYPuwOoT0zL4&usqp=CAU','Ginger Indian', '5 Piece',  '\u{20B9} 50',  GingerIndian.routeName,),
    Seasonig( 'https://st4.depositphotos.com/1466240/40938/i/600/depositphotos_409388758-stock-photo-curry-leaves-white-background.jpg','Curry Leaves', '100 Gram',  '\u{20B9} 8',  CurryLeaves.routeName,),
    Seasonig('https://5.imimg.com/data5/SJ/LQ/MY-1232526/green-chillies-500x500.jpg',  'Chilli Green',    '200 Gram', '\u{20B9} 30',  ChilliGreen.routeName),
    Seasonig( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnARTDF_mbk0L3ackOFHHw7AobnV8qckpsBJR7_hgA0Wmo2XtqE304fvCXL4LxbTEvH0&usqp=CAU', 'Lemon','1 Kg', '\u{20B9} 120',  Lemon.routeName,),
    Seasonig('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbGToIhNAkDd2Pf8-kZqeajkiLyweSRvFkntfUtG9gXCz-6Fc1pXqPWGlnMQ_L4kTHzV0&usqp=CAU', 'Garlic',  '200 Gram', '\u{20B9} 30', Garlic.routeName,),

  ];
  // List<String> iImg = [
  //   'https://5.imimg.com/data5/IX/VW/RB/SELLER-12007525/kashmeeri-chilli-masala-500x500.png',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuZeTnc3qoiPMzDF0CMv1B54SLxeEI-yEn9zW3gntxVvABJ_ZOoDcZs6HBZ56xjGMrevI&usqp=CAU',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyjTGR9HKnM1iFC-BAWPZkLPb4mWWUWk2lTfSeNKizyj77wy8MrNnef7niYPuwOoT0zL4&usqp=CAU',
  //   'https://st4.depositphotos.com/1466240/40938/i/600/depositphotos_409388758-stock-photo-curry-leaves-white-background.jpg',
  //   'https://5.imimg.com/data5/SJ/LQ/MY-1232526/green-chillies-500x500.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnARTDF_mbk0L3ackOFHHw7AobnV8qckpsBJR7_hgA0Wmo2XtqE304fvCXL4LxbTEvH0&usqp=CAU',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbGToIhNAkDd2Pf8-kZqeajkiLyweSRvFkntfUtG9gXCz-6Fc1pXqPWGlnMQ_L4kTHzV0&usqp=CAU',
  // ];
  // List<String> iName = [
  //   'RAS EI hanout',
  //   'GrassCartoon',
  //   'Ginger Indian',
  //   'Curry Leaves',
  //  'Chilli Green',
  //   'Lemon',
  //   'Garlic',
  // ];
  // List<String> iUnit = [
  //   '10 Gram',
  //   '10 Gram',
  //   '5 Piece',
  //   '100 Gram',
  //   '200 Gram',
  //   '1 Kg',
  //   '200 Gram',
  // ];
  // List<String> iPrice = [
  //   '\u{20B9} 7.9',
  //   '\u{20B9} 7.9',
  //   '\u{20B9} 50',
  //   '\u{20B9} 8',
  //   '\u{20B9} 30',
  //   '\u{20B9} 120',
  //   '\u{20B9} 30',
  // ];
  // List<String> iRoute = [
  //   RasEIHanount.routeName,
  //   GrassCartoon.routeName,
  //   GingerIndian.routeName,
  //   CurryLeaves.routeName,
  //   ChilliGreen.routeName,
  //   Lemon.routeName,
  //   Garlic.routeName,
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
              'Seasoning',
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
              delegate: SearchPage<Seasonig>(
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
                      itemCount: seasoning.length,
                      itemBuilder: (context, index) {
                        final Seasonig attas = seasoning[index];

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
                items: seasoning,
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
                      pageBuilder: (a, b, c) =>SeasoningScreen(),
                      transitionDuration: Duration(seconds: 0))),
              child: Padding(
                padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                child: ListView.builder(
                  itemCount: seasoning.length,
                  itemBuilder: (context, index) {
                    final Seasonig seasonings = seasoning[index];
                    return Card(
                      elevation: 6,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(seasonings.route);
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
                                        seasonings.image,
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
                                        seasonings.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        seasonings.unit,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        seasonings.price,
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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/screen/rootvegies/sweetcorn.dart';
import 'package:vegapp/screen/seasoning/babycorn.dart';
import 'package:vegapp/screen/seasoning/gingerindian.dart';
import 'package:vegapp/screen/see%20all/rootvegies/rootvegiesitem.dart';
import 'package:vegapp/screen/see%20all/vegitables/vegitableitem.dart';
import 'package:vegapp/screen/vegitables/Lauki.dart';
import 'package:vegapp/screen/vegitables/Methi%20Leaves.dart';
import 'package:vegapp/screen/vegitables/amala.dart';
import 'package:vegapp/screen/vegitables/bhendi.dart';
import 'package:vegapp/screen/vegitables/bittergourd.dart';
import 'package:vegapp/screen/vegitables/brinjalnagpure.dart';
import 'package:vegapp/screen/vegitables/cabbage.dart';
import 'package:vegapp/screen/vegitables/coccinia.dart';
import 'package:vegapp/screen/vegitables/corianderbunch.dart';
import 'package:vegapp/screen/vegitables/cucumber.dart';
import 'package:vegapp/screen/vegitables/greencapsicum.dart';
import 'package:vegapp/screen/vegitables/paalak.dart';
import 'package:vegapp/screen/vegitables/ridgegourd.dart';
import 'package:vegapp/screen/vegitables/tomato.dart';
import 'package:vegapp/shimmer/veg_card_shimmer.dart';

import '../../fruits/coconut1.dart';

class VegetablesScreen extends StatefulWidget {
  static String routeName = '/vegetables';

  @override
  _VegetablesScreenState createState() => _VegetablesScreenState();
}

class _VegetablesScreenState extends State<VegetablesScreen> {

  late bool isLoading ;


  @override
  void initState() {

    super.initState();



    isLoading = true;
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        isLoading=false;
      });
    });
  }







  static List<Vegitable> vegitable = [
    Vegitable(
      'https://thumbs.dreamstime.com/b/cabbage-isolated-white-background-und-5913263.jpg',
      'Cabbage',
      '1 Piece',
      '\u{20B9} 20',
      Cabbage.routeName,
    ),
    Vegitable(
      'https://t3.ftcdn.net/jpg/03/36/29/26/360_F_336292653_D7vlCbHuMvHyoulmj1XweCihlykoEUnI.jpg',
      ' Bitter Gourd',
      '500 Gram',
      '\u{20B9} 15',
      BitterGourd.routeName,
    ),
    Vegitable(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNwob17o4R3t1AzkTNL5AeXtfOT4lrM_nyYO-1n5p4CAgDuVS1XrHCFvrd4poO-UDvhzQ&usqp=CAU',
      'Ridge Gourd',
      '500 Gram',
      '\u{20B9} 25',
      Ridgeground.routeName,
    ),
    Vegitable(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8VMDsY1hoDisr_HEJh17V35cqyADehQtE07zdyV6n3zD_UmPqIQYgFEJwkFWnGNCRPHs&usqp=CAU',
      'Paalak',
      '500 Gram',
      '\u{20B9} 40',
      Paalak.routeName,
    ),
    Vegitable(
      'https://image.freepik.com/free-photo/cucumber-vegetable-isolated-white-background_42033-135.jpg',
      'Cucumber',
      '500 Gram',
      '\u{20B9} 24',
      Cucumber.routeName,
    ),
    Vegitable(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpizPzOK8nBK6guNZccufv_fOsILsxJPuboOkNsdF2Bx3DC8soGHBw2jP2-2m-GRNtFJU&usqp=CAU',
      'Coccinia',
      '500 Gram',
      '\u{20B9} 40',
      Coccinia.routeName,
    ),
    Vegitable(
      'https://img.freepik.com/free-photo/raw-okra-ladyfingers-isolated-white-background_14349-552.jpg?size=626&ext=jpg',
      'Bhindi',
      '500 Gram',
      '\u{20B9} 14',
      Bhendi.routeName,
    ),
    Vegitable(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDkNMUN97daX4HXjm34xhKCnnjJtv5PMsNnSyc5Fi3828vO1stE0PNzOtkKStKhYH4i_s&usqp=CAU',
      'Corinder Bunch',
      '200 Gram',
      '\u{20B9} 14',
      Corinderbunch.routeName,
    ),
    Vegitable(
      'https://5.imimg.com/data5/EV/LT/MY-48969557/fresh-methi-500x500.png',
      'Methi Leaves ',
      '300 Gram',
      '\u{20B9} 40',
      MethiLeaves.routeName,
    ),
    Vegitable(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyjTGR9HKnM1iFC-BAWPZkLPb4mWWUWk2lTfSeNKizyj77wy8MrNnef7niYPuwOoT0zL4&usqp=CAU',
      'Ginger Indian',
      '5 Piece',
      '\u{20B9} 50',
      GingerIndian.routeName,
    ),
    Vegitable(
      'https://4.imimg.com/data4/RR/RR/GLADMIN-/wp-content-uploads-2016-04-brinjal-long-violet-500x500-400x400-500x500.jpg',
      'BrinajalNagpur',
      '5 Piece',
      '\u{20B9} 50',
      BrinjalNagpure.routeName,
    ),
    Vegitable(
      'https://media.istockphoto.com/photos/broken-coconut-picture-id492552666',
      'Coconut',
      '1 Piece',
      '\u{20B9} 40',
      Coconut1.routeName,
    ),
    Vegitable(
      'http://cdn.shopify.com/s/files/1/0536/3764/4474/products/Babycorn.png?v=1624338595',
      'Baby Corn',
      '150 Gram',
      '\u{20B9} 15',
      BabyCorn.routeName,
    ),
    Vegitable(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqnwQNxOKrkB6wucnnhtNTv3_g_kYv3gYvLwrae09TIOUeXxN-jhm3y6smNLHw41vI6Bs&usqp=CAU',
      'Lauki',
      '1 Piece',
      '\u{20B9} 29',
      Lauki.routeName,
    ),
    Vegitable(
      'https://5.imimg.com/data5/LD/NH/MY-7467985/amla-500x500.jpg',
      'Amala ',
      '500 Gram',
      '\u{20B9} 70',
      Amala.routeName,
    ),
    Vegitable(
      'https://5.imimg.com/data5/MC/EO/MY-12129325/fresh-green-capsicum-500x500.jpg',
      'Green Capsicum ',
      '55 Gram',
      '\u{20B9} 18',
      GreenCapsicum.routeName,
    ),
    Vegitable(
      'https://media.istockphoto.com/photos/corn-picture-id134173335?k=20&m=134173335&s=612x612&w=0&h=mAzL_-ZJtW-r6eSPGkIoqGCWvBptuZ1CfSh3l0klE1g=',
      'Sweet Corn',
      '100 Gram',
      '\u{20B9} 150',
      SweetCorn.routeName,
    ),
    Vegitable(
      'https://st2.depositphotos.com/1005063/7099/i/600/depositphotos_70995043-stock-photo-two-red-tomatoes-isolated-on.jpg',
      'Tomato',
      '10 Kg',
      '\u{20B9} 70',
      Tomato.routeName,
    ),
  ];

  // List<String> iImg = [
  //   'https://thumbs.dreamstime.com/b/cabbage-isolated-white-background-und-5913263.jpg',
  //   'https://t3.ftcdn.net/jpg/03/36/29/26/360_F_336292653_D7vlCbHuMvHyoulmj1XweCihlykoEUnI.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNwob17o4R3t1AzkTNL5AeXtfOT4lrM_nyYO-1n5p4CAgDuVS1XrHCFvrd4poO-UDvhzQ&usqp=CAU',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8VMDsY1hoDisr_HEJh17V35cqyADehQtE07zdyV6n3zD_UmPqIQYgFEJwkFWnGNCRPHs&usqp=CAU',
  //   'https://image.freepik.com/free-photo/cucumber-vegetable-isolated-white-background_42033-135.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpizPzOK8nBK6guNZccufv_fOsILsxJPuboOkNsdF2Bx3DC8soGHBw2jP2-2m-GRNtFJU&usqp=CAU',
  //   'https://img.freepik.com/free-photo/raw-okra-ladyfingers-isolated-white-background_14349-552.jpg?size=626&ext=jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDkNMUN97daX4HXjm34xhKCnnjJtv5PMsNnSyc5Fi3828vO1stE0PNzOtkKStKhYH4i_s&usqp=CAU',
  //   'https://5.imimg.com/data5/EV/LT/MY-48969557/fresh-methi-500x500.png',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyjTGR9HKnM1iFC-BAWPZkLPb4mWWUWk2lTfSeNKizyj77wy8MrNnef7niYPuwOoT0zL4&usqp=CAU',
  //   'https://4.imimg.com/data4/RR/RR/GLADMIN-/wp-content-uploads-2016-04-brinjal-long-violet-500x500-400x400-500x500.jpg',
  //   'https://media.istockphoto.com/photos/broken-coconut-picture-id492552666',
  //   'http://cdn.shopify.com/s/files/1/0536/3764/4474/products/Babycorn.png?v=1624338595',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqnwQNxOKrkB6wucnnhtNTv3_g_kYv3gYvLwrae09TIOUeXxN-jhm3y6smNLHw41vI6Bs&usqp=CAU',
  //   'https://5.imimg.com/data5/LD/NH/MY-7467985/amla-500x500.jpg',
  //   'https://5.imimg.com/data5/MC/EO/MY-12129325/fresh-green-capsicum-500x500.jpg',
  //   'https://media.istockphoto.com/photos/corn-picture-id134173335?k=20&m=134173335&s=612x612&w=0&h=mAzL_-ZJtW-r6eSPGkIoqGCWvBptuZ1CfSh3l0klE1g=',
  //   'https://st2.depositphotos.com/1005063/7099/i/600/depositphotos_70995043-stock-photo-two-red-tomatoes-isolated-on.jpg',
  // ];
  // List<String> iName = [
  //   'Cabbage',
  //   ' Bitter Gourd',
  //   'Ridge Gourd',
  //   'Paalak',
  //   'Cucumber',
  //   'Coccinia',
  //   'Bhindi',
  //   'Corinder Bunch',
  //   'Methi Leaves ',
  //   'Ginger Indian',
  //   'BrinajalNagpur',
  //   'Coconut',
  //   'Baby Corn',
  //   'Lauki',
  //   'Amala ',
  //   'Green Capsicum ',
  //   'Sweet Corn',
  //   'Tomato',
  // ];
  // List<String> iUnit = [
  //   '1 Piece',
  //   '500 Gram',
  //   '500 Gram',
  //   '500 Gram',
  //   '500 Gram',
  //   '500 Gram',
  //   '500 Gram',
  //   '200 Gram',
  //   '300 Gram',
  //   '5 Piece',
  //   '5 Piece',
  //   '1 Piece',
  //   '150 Gram',
  //   '1 Piece',
  //   '500 Gram',
  //   '55 Gram',
  //   '100 Gram',
  //   '10 Kg',
  // ];
  // List<String> iPrice = [
  //   '\u{20B9} 20',
  //   '\u{20B9} 15',
  //   '\u{20B9} 25',
  //   '\u{20B9} 40',
  //   '\u{20B9} 24',
  //   '\u{20B9} 40',
  //   '\u{20B9} 14',
  //   '\u{20B9} 14',
  //   '\u{20B9} 40',
  //   '\u{20B9} 50',
  //   '\u{20B9} 50',
  //   '\u{20B9} 40',
  //   '\u{20B9} 15',
  //   '\u{20B9} 29',
  //   '\u{20B9} 70',
  //   '\u{20B9} 18',
  //   '\u{20B9} 150',
  //   '\u{20B9} 70',
  // ];
  // List<String> iRoute = [
  //   Cabbage.routeName,
  //   BitterGourd.routeName,
  //   Ridgeground.routeName,
  //   Paalak.routeName,
  //   Cucumber.routeName,
  //   Coccinia.routeName,
  //   Bhendi.routeName,
  //   Corinderbunch.routeName,
  //   MethiLeaves.routeName,
  //   GingerIndian.routeName,
  //   BrinjalNagpure.routeName,
  //   Coconut1.routeName,
  //   BabyCorn.routeName,
  //   Lauki.routeName,
  //   Amala.routeName,
  //   GreenCapsicum.routeName,
  //   SweetCorn.routeName,
  //   Tomato.routeName,
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Vegetables',
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
              delegate: SearchPage<Vegitable>(
                searchLabel: 'Search Vegitable',

                //    barTheme: Theme.of(context),
                //barTheme: ThemeData.from(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)),
                itemStartsWith: true,

                //  onQueryUpdate: (s)=>print(s),
                suggestion: Container(
                  // height: 400,width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                    child: ListView.builder(
                      itemCount: vegitable.length,
                      itemBuilder: (context, index) {
                        final Vegitable attas = vegitable[index];

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
                items: vegitable,
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
                      pageBuilder: (a, b, c) =>VegetablesScreen(),
                      transitionDuration: Duration(seconds: 0))),
              child: Padding(
                padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                child: ListView.builder(
                  itemCount: vegitable.length,
                  itemBuilder: (context, index) {
                    final Vegitable vegitables = vegitable[index];
                    return Card(
                      elevation: 6,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(vegitables.route);
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
                                      vegitables.image,
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
                                       vegitables.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        vegitables.unit,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        vegitables.price,
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

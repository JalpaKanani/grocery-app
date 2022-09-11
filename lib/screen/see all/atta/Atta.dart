import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_page/search_page.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vegapp/bottombar/cart.dart';
import 'package:vegapp/button/Home_Add_button.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/model/cartprovider.dart';

import 'package:vegapp/screen/Atta/Chickpeas.dart';
import 'package:vegapp/screen/Atta/Millet.dart';
import 'package:vegapp/screen/Atta/Wheat.dart';
import 'package:vegapp/screen/Atta/cornflour.dart';
import 'package:vegapp/screen/Atta/rise.dart';
import 'package:vegapp/shimmer/veg_card_shimmer.dart';

import 'AttaItem.dart';

class AttaScreen extends StatefulWidget {
  static String routeName = '/atta';



  static List<Atta1> atta = [
    Atta1(
      'https://media.istockphoto.com/photos/rice-in-burlap-sack-picture-id1239195614?k=20&m=1239195614&s=612x612&w=0&h=gczCPGxEhsWz4hfuwyiI_8uQkVKp1xcVunU0KaxWzRc=',
      'Rice',
      '200 Gram',
      '\u{20B9}45',
      RiceScreen.routeName,
    ),
    Atta1(
      'https://thumbs.dreamstime.com/b/millet-bag-scoop-green-spikelets-isolated-white-background-98226503.jpg',
      'Milet',
      '100 Gram',
      '\u{20B9}80',
      MilletScreen.routeName,
    ),
    Atta1(
      'https://media.istockphoto.com/photos/wheat-and-wooden-scoop-on-white-background-picture-id174849073',
      'Wheat',
      '500 Gram',
      '\u{20B9}95',
      Wheat.routeName,
    ),
    Atta1(
      'https://media.istockphoto.com/photos/heap-of-chickpeas-isolated-on-white-from-above-picture-id613532198?k=20&m=613532198&s=612x612&w=0&h=XN6-j45geAUo8bGaPgbQndpjbbnWKqr-_0XOSf6_rs0=',
      'ChickPeas',
      '400 Gram',
      '\u{20B9}45',
      ChickpeasScreen.routeName,
    ),
    Atta1(
      'https://t3.ftcdn.net/jpg/04/32/64/64/360_F_432646466_YRQNkqJUqY6yiVJ4O1hmjHYsUDzerPdG.jpg',
      'CornFlour',
      '200 Gram',
      '\u{20B9}25',
      CornFlourScreen.routeName,
    ),
  ];

  @override
  State<AttaScreen> createState() => _AttaScreenState();
}

class _AttaScreenState extends State<AttaScreen> {
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

  // List<Item> items = [
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atta'),
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
              delegate: SearchPage<Atta1>(
                searchLabel: 'Search Atta',
                itemStartsWith: true,


                suggestion: Container(

                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                    child: ListView.builder(
                      itemCount: AttaScreen.atta.length,
                      itemBuilder: (context, index) {
                        final Atta1 attas = AttaScreen.atta[index];

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
                items: AttaScreen.atta,
                // failure: Text(
                //   'No Suggestion......',
                //   style: TextStyle(fontSize: 20),
                // ),
                failure: Center(
                    child: Container(
                        child: Image.network(
                            'https://media2.giphy.com/media/fTzTrSGJkVGcciMrQr/source.gif'))),
                // failure: Image.network('https://i.gifer.com/origin/d3/d3a98959d028a404663bbdcf4fc9e5f8_w200.webp'),
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
                      pageBuilder: (a, b, c) =>AttaScreen(),
                      transitionDuration: Duration(seconds: 0))),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                child: ListView.builder(
                  itemCount: AttaScreen.atta.length,
                  itemBuilder: (context, index) {
                    final Atta1 contacts = AttaScreen.atta[index];

                    return Card(
                      elevation: 6,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(contacts.route);
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
                                    image: NetworkImage(contacts.image),
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
                                        contacts.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        contacts.unit,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        contacts.price,
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

// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:vegapp/screen/Atta/Chickpeas.dart';
// import 'package:vegapp/screen/Atta/Millet.dart';
// import 'package:vegapp/screen/Atta/Wheat.dart';
// import 'package:vegapp/screen/Atta/cornflour.dart';
// import 'package:vegapp/screen/Atta/rise.dart';
// import 'package:vegapp/screen/see%20all/atta/AttaItem.dart';
//
// class AttaScreen extends StatefulWidget {
//
//   static String routeName = '/atta';
//
//   @override
//   _AttaScreenState createState() => _AttaScreenState();
// }
//
// class _AttaScreenState extends State<AttaScreen> {
//
//   List<String> iImg =[
//     'https://media.istockphoto.com/photos/rice-in-burlap-sack-picture-id1239195614?k=20&m=1239195614&s=612x612&w=0&h=gczCPGxEhsWz4hfuwyiI_8uQkVKp1xcVunU0KaxWzRc=',
//     'https://thumbs.dreamstime.com/b/millet-bag-scoop-green-spikelets-isolated-white-background-98226503.jpg',
//     'https://media.istockphoto.com/photos/wheat-and-wooden-scoop-on-white-background-picture-id174849073',
//     'https://media.istockphoto.com/photos/heap-of-chickpeas-isolated-on-white-from-above-picture-id613532198?k=20&m=613532198&s=612x612&w=0&h=XN6-j45geAUo8bGaPgbQndpjbbnWKqr-_0XOSf6_rs0=',
//   'https://t3.ftcdn.net/jpg/04/32/64/64/360_F_432646466_YRQNkqJUqY6yiVJ4O1hmjHYsUDzerPdG.jpg',
//   ];
//
//   List<String> iName =[
//     'Rice',
//     'Milet',
//     'Wheat',
//     'ChickPeas',
//     'CornFlour'
//   ];
//   List<String> iUnit =[
//
//     '200 Gram',
//     '500 Gram',
//     '500 Gram',
//     '200 Gram',
//     '200 Gram',
//   ];
//   List<String> iPrice = [
//     '\u{20B9}45',
//     '\u{20B9}80',
//     '\u{20B9}95',
//     '\u{20B9}45',
//     '\u{20B9}25',
//   ];
//   List<String> iRoute = [
//     RiceScreen.routeName,
//     MilletScreen.routeName,
//     Wheat.routeName,
//     ChickpeasScreen.routeName,
//     CornFlourScreen.routeName,
//   ];
//
//
//
//
//   var list;
//   var random;
//   var refreshKey = GlobalKey<RefreshIndicatorState>();
//   @override
//   void initState() {
//
//
//     //list = List.generate(3, (i) => ListView());
//     super.initState();
//     random = Random();
//     refreshList();
//   }
//
//   Future<Null> refreshList() async {
//     refreshKey.currentState?.show(atTop: true);
//     await Future.delayed(Duration(seconds: 2));
//
//     setState(() {
//       list = List.generate(random.nextInt(3), (i) => ListView());
//     });
//
//     return null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Text(
//               'Atta',
//               style: TextStyle(fontWeight: FontWeight.w600),
//             ),
//           ],
//         ),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             // onPressed: () {
//             //   Navigator.of(context).pushNamed(SearchScreen());},
//             icon: Icon(Icons.filter_alt),
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(top: 20, right: 13, left: 13),
//             padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey,
//                   offset: Offset(0.0, 1.0), //(x,y)
//                   blurRadius: 6.0,
//                 ),
//               ],
//               borderRadius: BorderRadius.all(
//                 Radius.circular(35),
//               ),
//             ),
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: TextField(
//
//                     keyboardType: TextInputType.text,
//                     decoration: InputDecoration(
//                       hintText: "Search items",
//                       hintStyle: TextStyle(
//                         color: Colors.black.withAlpha(120),
//                       ),
//                       border: InputBorder.none,
//                     ),
//                     onChanged: (value) {
//
//
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(right: 1, left: 60),
//                   child: CircleAvatar(
//                     child: Icon(
//                       Icons.search,
//                       color: Colors.black.withAlpha(120),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Expanded(
//             child: RefreshIndicator(
//               onRefresh: refreshList,
//               key: refreshKey,
//               child: ListView.builder(
//                 itemCount: iName.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(left: 8, right: 8),
//                     child: Card(
//                       elevation: 6,
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.of(context).pushNamed(iRoute[index]);
//                         },
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 6),
//                                   child: Image(
//                                     height: 80,
//                                     width: 80,
//                                     image: NetworkImage(
//                                    iImg[index].toString(),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 18,
//                                 ),
//                                 Expanded(
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         iName[index].toString(),
//                                         style: TextStyle(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                        iUnit[index].toString(),
//                                         style: TextStyle(color: Colors.grey),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                      iPrice[index].toString(),
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 18,
//                                             color: Colors.deepOrange),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: ElevatedButton(
//                                       style: ElevatedButton.styleFrom(
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 40, vertical: 10),
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(10.0)),
//                                         primary: Colors.deepOrange,
//                                       ),
//                                       onPressed: () {},
//                                       child: Text('Add '),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//
//
//   }
//
// }
//
//

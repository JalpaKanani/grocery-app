import 'package:flutter/material.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/shimmer/page_shimmer.dart';

import '../../bottombar_custom.dart';

class PineApple extends StatefulWidget {
  static String routeName = '/pineapple';

  @override
  _PineAppleState createState() => _PineAppleState();
}

class _PineAppleState extends State<PineApple> {
  bool isReadmore = false;
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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Pine Apple',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        leading: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepOrange),
            child:IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Center(child: Padding(
                padding: const EdgeInsets.only(left: 4,top: 0),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,),
              )),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
      body: isLoading?PageShimmer(): ListView(
        children: [
          Container(
            height: 250,
            //color: Colors.deepOrange,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://gardenandme.com/wp-content/uploads/2021/02/pineapple.jpg'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 17),
                  child: Row(
                    children: [
                      Text(
                        'Available Options',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: CircleAvatar(
                            radius: 5,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '1 Piece',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '\u{20B9} 70',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.deepOrange),
                        ),
                        AddButton1(),
                      ],
                    ),
                  ),
                  elevation: 5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text(
                            'Product Description',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: buildText(
                    "A pineapple is a sweet tropical fruit with a tough leathery skin and spiky leaves on top. Pineapple is excellent, whether eaten as a snack, in a sweet dessert, in savory dishes like fried rice, or even on pizza."),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isReadmore = !isReadmore;
                        });
                      },
                      child: Text(isReadmore ? 'Read Less' : 'Read More'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildText(String text) {
    final lines = isReadmore ? null : 3;

    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
      ),
      maxLines: lines,
      //overflow: TextOverflow.ellipsis,
    );
  }
}

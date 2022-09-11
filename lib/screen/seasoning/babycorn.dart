import 'package:flutter/material.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/bottombar_custom.dart';
import 'package:vegapp/shimmer/page_shimmer.dart';

class BabyCorn extends StatefulWidget {
  static String routeName = '/babycorn';

  @override
  _BabyCornState createState() => _BabyCornState();
}

class _BabyCornState extends State<BabyCorn> {
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
          'Baby Corn',
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
      body:   isLoading?PageShimmer():ListView(
        children: [
          Container(
            height: 250,

           // color: Colors.deepOrange,
            decoration: BoxDecoration(
              //color: Colors.white,
              image: DecorationImage(

                image: NetworkImage(
                    'https://5.imimg.com/data5/EV/OL/QD/SELLER-89419408/baby-corn-500x500.png'),
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
              Column(
                children: [
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
                                '150 Gram',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '\u{20B9} 15',
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
                                '2 Kg',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '\u{20B9} 50',
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

                ],
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
                    "Baby corn (also known as young corn, cornlets or baby sweetcorn) is a cereal grain taken from corn (maize) harvested early while the stalks are still small and immature. It typically is eaten whole — cob included — in contrast to mature corn, whose cob is too tough for human consumption."),
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

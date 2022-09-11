import 'package:flutter/material.dart';
import 'package:vegapp/bottombar_custom.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/shimmer/page_shimmer.dart';

class GingerIndian extends StatefulWidget {
  static String routeName = '/gingerindian';

  @override
  _GingerIndianState createState() => _GingerIndianState();
}

class _GingerIndianState extends State<GingerIndian> {
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
          'Ginger Indian',
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
      body:isLoading?PageShimmer(): ListView(
        children: [
          Container(
            height: 250,
            //color: Colors.deepOrange,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyjTGR9HKnM1iFC-BAWPZkLPb4mWWUWk2lTfSeNKizyj77wy8MrNnef7niYPuwOoT0zL4&usqp=CAU',
                  // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnARTDF_mbk0L3ackOFHHw7AobnV8qckpsBJR7_hgA0Wmo2XtqE304fvCXL4LxbTEvH0&usqp=CAU'
                ),
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
                                '5 Piece',
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
                                '200 Gram',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '\u{20B9} 20',
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
                    "Ginger is the dried knobby shaped rhizome of the plant Zingiber officinale. The Latin name, zingiber, derives from interpretations of the name in Indic languages where ginger was described as “shaped like a deer's antler (horn)”."),
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

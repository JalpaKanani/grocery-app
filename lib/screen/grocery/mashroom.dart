import 'package:flutter/material.dart';
import 'package:vegapp/bottombar_custom.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/shimmer/page_shimmer.dart';

class Mashroom extends StatefulWidget {
  static String routeName = '/mashroom';

  @override
  _MashroomState createState() => _MashroomState();
}

class _MashroomState extends State<Mashroom> {
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
          'MashRoom',
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
      bottomNavigationBar:BottomBar(),
      body: isLoading?PageShimmer():ListView(
        children: [
          Container(
            height: 250,
            //color: Colors.deepOrange,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://thumbs.dreamstime.com/b/fresh-champignion-mushrooms-blue-box-20070272.jpg'),
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
                            '200 Gram',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '\u{20B9} 44',
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
                    "A mushroom is the fleshy, spore-bearing fruiting body (sporocarp or reproductive structure) of a fungus, typically produced above ground on soil or on its food source. The term mushroom also is used to designate the entire fungus with a fruiting body."),
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

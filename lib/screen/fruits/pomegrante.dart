import 'package:flutter/material.dart';
import 'package:vegapp/bottombar_custom.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/shimmer/page_shimmer.dart';

class Pomegranate extends StatefulWidget {
  static String routeName = '/pomegrante';

  @override
  _PomegranateState createState() => _PomegranateState();
}

class _PomegranateState extends State<Pomegranate> {
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
          'Pomegrante',
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
      body: isLoading?PageShimmer(): ListView(
        children: [
          Container(
            height: 250,
            //color: Colors.deepOrange,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'data:image/jpeg;base64,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'),
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
                            '7 Piece',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '\u{20B9} 600',
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
                    "The pomegranate plant is a large shrub or small tree that has smooth, evergreen leaves and showy orange to red flowers. It has rounded fruit with a dry outer covering (husk) made up of two layers: a hard-outer layer called an epicarp, a soft inner layer called a mesocarp."),
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

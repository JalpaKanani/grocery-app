import 'package:flutter/material.dart';
import 'package:vegapp/bottombar_custom.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/shimmer/page_shimmer.dart';

class CustardApple extends StatefulWidget {
  static String routeName = '/custardapple';

  @override
  _CustardAppleState createState() => _CustardAppleState();
}

class _CustardAppleState extends State<CustardApple> {
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
          'Custard Apple',
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
      body:  isLoading?PageShimmer(): ListView(
        children: [
          Container(
            height: 250,
            //color: Colors.deepOrange,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    //'data:image/jpeg;base64,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'
                    'https://4.imimg.com/data4/IB/QO/ANDROID-28328519/product-500x500.jpeg'),
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
                            '4 Piece',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '\u{20B9} 140',
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
                    "common custard apple (Annona reticulata), also called sugar apple or bullock's-heart in the West Indies, is dark brown in colour and marked with depressions giving it a quilted appearance; its pulp is reddish yellow, sweetish, and very soft."),
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

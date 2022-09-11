import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vegapp/bottombar_custom.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/shimmer/page_shimmer.dart';

class Coconut extends StatefulWidget {
  static String routeName = '/cocnut';

  @override
  _CoconutState createState() => _CoconutState();
}

class _CoconutState extends State<Coconut> {
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController();


    isLoading = true;
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        isLoading=false;
      });
    });
  }


  late bool isLoading ;
  bool isReadmore = false;
  int activeIndex = 0;
  List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6JcjkDzmMTlwEQ6OM4EIxqyI6bNDjOaRtuw&usqp=CAU',
    'https://m.media-amazon.com/images/I/41HgW4CyzKL._AC_SY580_.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Coconut',
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
      body:isLoading?PageShimmer(): ListView(
        children: [
          SizedBox(
            height: 10,
            child: PageView(
              controller: _controller,
            ),
          ),

          CarouselSlider.builder(
            options: CarouselOptions(
              height: 190,

              viewportFraction: 1,
              autoPlay: true,
              //  reverse: true,
              //enableInfiniteScroll: false,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              //  reverse: true,
              autoPlayInterval: Duration(seconds: 2),
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
            itemCount: imgList.length,
            itemBuilder: (context, index, realIndex) {
              final images = imgList[index];
              return buildImage(images, index);
            },
          ),
          SizedBox(
            height: 8,
          ),
          buildIndicator(),
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
                                '1 Piece',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '\u{20B9} 100',
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
                                '2 Piece',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '\u{20B9} 170',
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
                    "Coconut is the fruit of a tropical palm plant. It has a hard shell, edible white flesh and clear liquid, sometimes referred to as “water,” which is often used as a beverage. Coconut flesh or “meat” is aromatic, chewy in texture and rich in taste."),
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

  Widget buildImage(String image, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    color: Colors.white,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.network(
        image,
        fit: BoxFit.fitHeight,
        width: double.infinity,

      ),
    ),
  );

  Widget buildIndicator() => Center(
    child: AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imgList.length,
      effect: ScrollingDotsEffect(
        dotWidth: 7,
        dotHeight: 7,
        spacing: 7,
        activeDotColor: Colors.deepOrange,
      ),
    ),
  );
}

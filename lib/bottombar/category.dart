import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vegapp/See_All/see_all.dart';
import 'package:vegapp/See_All/see_all1.dart';

import 'package:vegapp/bottombar/home.dart';
import 'package:vegapp/model/product_model.dart';
import 'package:vegapp/mydrawer.dart';
import 'package:vegapp/screen/see%20all/Fruits/Fruits.dart';
import 'package:vegapp/screen/see%20all/atta/Atta.dart';
import 'package:vegapp/screen/see%20all/flower/flower.dart';
import 'package:vegapp/screen/see%20all/grocery/grocery.dart';
import 'package:vegapp/screen/see%20all/rootvegies/rootvegies.dart';
import 'package:vegapp/screen/see%20all/seasoning/seasoning.dart';
import 'package:vegapp/screen/see%20all/vegitables/vegetables.dart';
import 'package:vegapp/shimmer/category_shimmer.dart';
import 'package:http/http.dart' as http;
import 'package:vegapp/widgets/search/searchscreen.dart';

import '../model/api_services.dart';
import 'package:vegapp/model/product_model.dart';

import '../model/product_model.dart';

class CategoryScreen extends StatefulWidget {
  static String routeName = '/category';

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class Debouncer {
  int? milliseconds;
  VoidCallback? action;
  Timer? timer;

  run(VoidCallback action) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(
      Duration(milliseconds: Duration.millisecondsPerSecond),
      action,
    );
  }
}

class _CategoryScreenState extends State<CategoryScreen> {
  final _debouncer = Debouncer();

  int activeIndex = 0;
  int count = 1;
  bool _isLoading = false;
  int _currentIndex = 0;
  late bool isLoading;

  List<Product> product = [];
  Product? _productResponse;
  FetchUser _userList = FetchUser();

  @override
  void initState() {
    super.initState();
    _fetchAllProduct();

    isLoading = true;
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  void _fetchAllProduct() async {
    _isLoading = true;
    final response = await http.post(
     Uri.parse("http://gng.invatomarket.com/api/Product/homePage"),
      //  Uri.parse("http://vegi.kanadtech.com/api/Product/homePage"),
        headers: {"apikey": "123"});
    _isLoading = false;
    setState(() {
      if (response.statusCode == 200) {
        Product product = Product.fromJson(jsonDecode(response.body));

        _productResponse = Product.fromJson(jsonDecode(response.body));
      } else {}
    });
  }

  List<String> route = [
    AttaScreen.routeName,
    FlowerScreen.routeName,
    RootVegiesScreen.routeName,
    SearchScreen.routeName,
    '',
    '',
    VegetablesScreen.routeName,
    FruitsScreen.routeName,
    GroceryScreen.routeName,
    ''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: isLoading ? Category_shimmer() : _buildBody());
  }

  Widget _buildBody() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 15),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15, right: 13, left: 13),
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Search Categories",
                      hintStyle: TextStyle(
                        color: Colors.black.withAlpha(120),
                      ),
                      border: InputBorder.none,
                    ),
                    onChanged: (string) {

                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 1, left: 60),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: 600,
                      width: double.infinity,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: (1.5 / 1.8),
                                  crossAxisSpacing: 4,
                                  mainAxisSpacing: 4,
                                  crossAxisCount: 3),
                          itemCount: _productResponse!.data!.category!.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 400,
                              child: Card(
                                elevation: 5,
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(route[index]);
                                  },


                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "http://gng.invatomarket.com/public/storage/" +
                                                    _productResponse!.data!
                                                        .category![index].image
                                                        .toString()),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 125),
                                          child: Text(
                                            _productResponse!
                                                .data!.category![index].title
                                                .toString(),
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        alignment: Alignment.bottomCenter,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

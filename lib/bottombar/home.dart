

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:provider/provider.dart';
import 'package:vegapp/See_All/see_all.dart';
import 'package:vegapp/See_All/see_all1.dart';
import 'package:vegapp/See_All/see_all_2.dart';
import 'package:vegapp/See_All/see_all_3.dart';
import 'package:vegapp/See_All/see_all_4.dart';
import 'package:vegapp/button/Home_Add_button.dart';
import 'package:vegapp/model/api_services.dart';
import 'package:vegapp/model/cart_db_model.dart';
import 'package:vegapp/screen/see%20all/Fruits/Fruits.dart';
import 'package:vegapp/screen/see%20all/grocery/grocery.dart';
import 'package:vegapp/screen/see%20all/rootvegies/rootvegies.dart';
import 'package:vegapp/screen/see%20all/seasoning/seasoning.dart';
import 'package:vegapp/screen/see%20all/vegitables/vegetables.dart';
import 'package:vegapp/shimmer/home_shimmer.dart';
import 'package:vegapp/widgets/product_widget.dart';
import 'package:vegapp/widgets/search/searchscreen.dart';

import '../db/db_provider.dart';
import '../model/product_model.dart';
import '../screen/see all/atta/Atta.dart';
import '../screen/see all/flower/flower.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int activeIndex = 0;
  int count = 1;
  bool _isLoading = false;
  int _currentIndex = 0;
  late bool isLoading;

  List<Product> _product = <Product>[];
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

  //
  // void _populateAllProduct() async {
  //   final product = await _fetchAllProduct();
  //   setState(() {
  //     _product = product as List<Product>;
  //   });
  // }

  /*Future<Product> _fetchAllProduct() async {
    final response = await http
        .get(Uri.parse("http://gng.invatomarket.com/api/Product/homePage"));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["category"];
      list.map((product) => Product.fromJson(product)).toString();
    }else{
         throw Exception("faield");
    }
    return Product();
  }*/

  // Working

  /*Future<Product> _fetchAllProduct() async {
    final response = await http.post(
        Uri.parse("http://gng.invatomarket.com/api/Product/homePage"),
        headers: {"apikey": "123"});

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["category"];
      list.map((product) => Product.fromJson(product)).toString();
    } else {
      throw Exception("faield");
    }
    return Product();
  }*/

  void _fetchAllProduct() async {
    _isLoading = true;

    final response = await http.post(
    //Uri.parse("http://gng.invatomarket.com/api/Product/homePage"),

        Uri.parse("http://vegi.kanadtech.com/api/Product/homePage"),
        headers: {"apikey": "123"});

    _isLoading = false;
    setState(() {
      if (response.statusCode == 200) {
        Product product = Product.fromJson(jsonDecode(response.body));

        _productResponse = Product.fromJson(jsonDecode(response.body));
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
      }
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ? HomeShimmerScreen() : _buildBody(),
    );
  }

  Widget buildImage(String image, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: ScrollingDotsEffect(
          dotWidth: 7,
          dotHeight: 7,
          spacing: 7,
          activeDotColor: Colors.deepOrange,
        ),
      );

  Widget _buildBody() {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    return ListView(
      children: [
        Column(
          children: [
            SizedBox(height: 9),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 190,
                viewportFraction: 1,
                autoPlay: true,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: Duration(seconds: 3),
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
              itemCount: _productResponse!.data!.banner!.length,
              itemBuilder: (context, index, realIndex) {
                final images = "http://vegi.kanadtech.com/public/storage/" +
                    _productResponse!.data!.banner![index].image.toString();
                return buildImage(images, index);
              },
            ),
            SizedBox(
              height: 8,
            ),
            buildIndicator(),
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                        ),
                        child: Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: double.infinity,
              child: Expanded(
                child: ListView.builder(
                  //controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: _productResponse!.data!.category!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(route[index]);
                        },
                        child: Card(
                          elevation: 5,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "http://vegi.kanadtech.com/public/storage/" +
                                        _productResponse!
                                            .data!.category![index].image
                                            .toString()),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                _productResponse!.data!.category![index].title
                                    .toString(),
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 14),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            _productResponse!.data!.categoryWithProduct![0].title
                                .toString(),
                            style: TextStyle(color: Colors.black,
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      // Container(
                      //   child: Padding(
                      //     padding: EdgeInsets.only(
                      //       right: 16,
                      //     ),
                      //     child: TextButton(
                      //       onPressed: () {
                      //         Navigator.of(context).pushNamed(SeeAllWidget.routeName);
                      //       },
                      //       child: Text(
                      //         'See All',
                      //         style: TextStyle(
                      //             color: Colors.grey,
                      //             fontWeight: FontWeight.w400),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 16,
                        ),
                        child: TextButton(
                          onPressed: () {
                            final data = _productResponse!
                                .data!.categoryWithProduct![0].products![0];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeeAllWidget(
                                          data,
                                          settingData: _productResponse!
                                              .data!.settingData,
                                          data1: _productResponse!.data!,
                                        )));
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _productResponse!
                      .data!.categoryWithProduct![0].products!.length,
                  itemBuilder: (context, index) {
                    final data = _productResponse!
                        .data!.categoryWithProduct![0].products![index];
                    return Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductWidget(data,
                                      _productResponse!.data!.settingData)));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "http://vegi.kanadtech.com/public/storage/" +
                                          _productResponse!
                                              .data!
                                              .categoryWithProduct![0]
                                              .products![index]
                                              .images![0]
                                              .image
                                              .toString()),
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment:
                              //     MainAxisAlignment.start,
                              children: [
                                Text(
                                  _productResponse!
                                      .data!
                                      .categoryWithProduct![0]
                                      .products![index]
                                      .name
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6),
                                  child: Text(
                                    _productResponse!
                                            .data!.settingData!.currencies! +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![0]
                                            .products![index]
                                            .prices![0]
                                            .salePrice
                                            .toString() +
                                        '/' +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![0]
                                            .products![index]
                                            .prices![0]
                                            .unit
                                            .toString() +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![0]
                                            .products![index]
                                            .prices![0]
                                            .units!
                                            .title
                                            .toString(),
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                AddButton(
                                  onPlus: (qty) async {
                                    print(data.id);
                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: res['qty'] + 1,
                                      ));
                                    } else {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: qty,
                                      ));
                                    }

                                    /*DBProvider.db.updateCartProductQty(
                                      qty: 15,
                                      cartDbModel: CartDbModel(
                                          id: 1648125834405306,
                                          productId: 68,
                                          name: data.name,
                                          image: data.images![0].image,
                                          price: data.prices![0].salePrice,
                                          unit: data.prices![0].unit,
                                          qty: 15),
                                    );*/
                                  },
                                  onMinus: (qty) async {
                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      if (res['qty'] == 1) {
                                        DBProvider.db
                                            .deleteItemFromCart(data.id);
                                      } else {
                                        DBProvider.db.updateCartProductQty(
                                          qty: res['qty'] - 1,
                                          cartDbModel: CartDbModel(
                                              id: data.id,
                                              productId: data.id,
                                              name: data.name,
                                              image: data.images![0].image,
                                              price: data.prices![0].salePrice,
                                              unit: data.prices![0].unit,
                                              qty: res['qty'] - 1),
                                        );
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text("First Add item!!")));
                                    }
                                  },
                                ),
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
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            _productResponse!.data!.categoryWithProduct![1].title
                                .toString(),
                            style: TextStyle(color: Colors.black,
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 16,
                        ),
                        child: TextButton(
                          onPressed: () {
                            final data = _productResponse!
                                .data!.categoryWithProduct![1].products![0];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeeAll1Widget(
                                          data,
                                          settingData: _productResponse!
                                              .data!.settingData,
                                          data1: _productResponse!.data!,
                                        )));
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              // width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _productResponse!
                      .data!.categoryWithProduct![1].products!.length,
                  itemBuilder: (context, index) {
                    final data = _productResponse!
                        .data!.categoryWithProduct![1].products![index];
                    return Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductWidget(data,
                                      _productResponse!.data!.settingData)));
                          // Navigator.of(context)
                          //     .pushNamed(ProductWidget.routeName,arguments:_productResponse!.data!.categoryWithProduct![1].products![0].toString() );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "http://vegi.kanadtech.com/public/storage/" +
                                          _productResponse!
                                              .data!
                                              .categoryWithProduct![1]
                                              .products![index]
                                              .images![0]
                                              .image
                                              .toString()),
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment:
                              //     MainAxisAlignment.start,
                              children: [
                                Text(
                                  _productResponse!
                                      .data!
                                      .categoryWithProduct![1]
                                      .products![index]
                                      .name
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6),
                                  child: Text(
                                    _productResponse!
                                            .data!.settingData!.currencies! +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![1]
                                            .products![index]
                                            .prices![0]
                                            .salePrice
                                            .toString() +
                                        '/' +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![1]
                                            .products![index]
                                            .prices![0]
                                            .unit
                                            .toString() +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![1]
                                            .products![index]
                                            .prices![0]
                                            .units!
                                            .title
                                            .toString(),
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                AddButton(
                                  onPlus: (qty) async {
                                    print(qty);

                                    ///
                                    ///[Jay's ] Code
                                    ///

                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: res['qty'] + 1,
                                      ));
                                    } else {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: qty,
                                      ));
                                    }
                                    // print(
                                    //     "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                    // DBProvider.db.addToCart(CartDbModel(
                                    //   id: data.id,
                                    //   productId: data.id,
                                    //   name: data.name,
                                    //   image: data.images![0].image,
                                    //   price: data.prices![0].salePrice,
                                    //   unit: data.prices![0].units!.title,
                                    //   //  units: data.prices![0].unit, //25-3-22
                                    //   qty: qty,
                                    // ));

                                    /*DBProvider.db.updateCartProductQty(
                                      qty: 15,
                                      cartDbModel: CartDbModel(
                                          id: 1648125834405306,
                                          productId: 68,
                                          name: data.name,
                                          image: data.images![0].image,
                                          price: data.prices![0].salePrice,
                                          unit: data.prices![0].unit,
                                          qty: 15),
                                    );*/
                                  },
                                  onMinus: (qty) async {
                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      if (res['qty'] == 1) {
                                        DBProvider.db
                                            .deleteItemFromCart(data.id);
                                      } else {
                                        DBProvider.db.updateCartProductQty(
                                          qty: res['qty'] - 1,
                                          cartDbModel: CartDbModel(
                                              id: data.id,
                                              productId: data.id,
                                              name: data.name,
                                              image: data.images![0].image,
                                              price: data.prices![0].salePrice,
                                              unit: data.prices![0].unit,
                                              qty: res['qty'] - 1),
                                        );
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text("First Add item!!")));
                                    }
                                  },
                                ),
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
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            _productResponse!.data!.categoryWithProduct![2].title
                                .toString(),
                            style: TextStyle(color: Colors.black,
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 16,
                        ),
                        child: TextButton(
                          onPressed: () {
                            final data = _productResponse!
                                .data!.categoryWithProduct![2].products![0];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeeAll2Widget(
                                          data,
                                          settingData: _productResponse!
                                              .data!.settingData,
                                          data1: _productResponse!.data!,
                                        )));
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              // width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _productResponse!
                      .data!.categoryWithProduct![2].products!.length,
                  itemBuilder: (context, index) {
                    final data = _productResponse!
                        .data!.categoryWithProduct![2].products![index];
                    return Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductWidget(data,
                                      _productResponse!.data!.settingData)));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "http://vegi.kanadtech.com/public/storage/" +
                                          _productResponse!
                                              .data!
                                              .categoryWithProduct![2]
                                              .products![index]
                                              .images![0]
                                              .image
                                              .toString()),
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment:
                              //     MainAxisAlignment.start,
                              children: [
                                Text(
                                  _productResponse!
                                      .data!
                                      .categoryWithProduct![2]
                                      .products![index]
                                      .name
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6),
                                  child: Text(
                                    _productResponse!
                                            .data!.settingData!.currencies! +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![2]
                                            .products![index]
                                            .prices![0]
                                            .salePrice
                                            .toString() +
                                        '/' +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![2]
                                            .products![index]
                                            .prices![0]
                                            .unit
                                            .toString() +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![2]
                                            .products![index]
                                            .prices![0]
                                            .units!
                                            .title
                                            .toString(),
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                AddButton(
                                  onPlus: (qty) async {
                                    ///
                                    ///[Jay's] code
                                    ///
                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: res['qty'] + 1,
                                      ));
                                    } else {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: qty,
                                      ));
                                    }

                                    // print(
                                    //     "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                    // DBProvider.db.addToCart(CartDbModel(
                                    //   id: data.id,
                                    //   productId: data.id,
                                    //   name: data.name,
                                    //   image: data.images![0].image,
                                    //   price: data.prices![0].salePrice,
                                    //   unit: data.prices![0].units!.title,
                                    //   //  units: data.prices![0].unit, //25-3-22
                                    //   qty: qty,
                                    // ));

                                    /*DBProvider.db.updateCartProductQty(
                                      qty: 15,
                                      cartDbModel: CartDbModel(
                                          id: 1648125834405306,
                                          productId: 68,
                                          name: data.name,
                                          image: data.images![0].image,
                                          price: data.prices![0].salePrice,
                                          unit: data.prices![0].unit,
                                          qty: 15),
                                    );*/
                                  },
                                  onMinus: (qty) async {
                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      if (res['qty'] == 1) {
                                        DBProvider.db
                                            .deleteItemFromCart(data.id);
                                      } else {
                                        DBProvider.db.updateCartProductQty(
                                          qty: res['qty'] - 1,
                                          cartDbModel: CartDbModel(
                                              id: data.id,
                                              productId: data.id,
                                              name: data.name,
                                              image: data.images![0].image,
                                              price: data.prices![0].salePrice,
                                              unit: data.prices![0].unit,
                                              qty: res['qty'] - 1),
                                        );
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text("First Add item!!")));
                                    }
                                  },
                                ),
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
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            _productResponse!.data!.categoryWithProduct![3].title
                                .toString(),
                            style: TextStyle(color: Colors.black,
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 16,
                        ),
                        child: TextButton(
                          onPressed: () {
                            final data = _productResponse!
                                .data!.categoryWithProduct![3].products![0];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeeAll3Widget(
                                          data,
                                          settingData: _productResponse!
                                              .data!.settingData,
                                          data1: _productResponse!.data!,
                                        )));
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              // width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _productResponse!
                      .data!.categoryWithProduct![3].products!.length,
                  itemBuilder: (context, index) {
                    final data = _productResponse!
                        .data!.categoryWithProduct![3].products![index];
                    return Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductWidget(data,
                                      _productResponse!.data!.settingData)));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "http://vegi.kanadtech.com/public/storage/" +
                                          _productResponse!
                                              .data!
                                              .categoryWithProduct![3]
                                              .products![index]
                                              .images![0]
                                              .image
                                              .toString()),
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment:
                              //     MainAxisAlignment.start,
                              children: [
                                Text(
                                  _productResponse!
                                      .data!
                                      .categoryWithProduct![3]
                                      .products![index]
                                      .name
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6),
                                  child: Text(
                                    _productResponse!
                                            .data!.settingData!.currencies! +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![3]
                                            .products![index]
                                            .prices![0]
                                            .salePrice
                                            .toString() +
                                        '/' +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![3]
                                            .products![index]
                                            .prices![0]
                                            .unit
                                            .toString() +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![3]
                                            .products![index]
                                            .prices![0]
                                            .units!
                                            .title
                                            .toString(),
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                AddButton(
                                  onPlus: (qty) async {
                                    ///
                                    ///[Jay's Code]
                                    ///

                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: res['qty'] + 1,
                                      ));
                                    } else {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: qty,
                                      ));
                                    }
                                    // print(
                                    //     "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                    // DBProvider.db.addToCart(
                                    //   CartDbModel(
                                    //     id: data.id,
                                    //     productId: data.id,
                                    //     name: data.name,
                                    //     image: data.images![0].image,
                                    //     price: data.prices![0].salePrice,
                                    //     unit: data.prices![0].units!.title,
                                    //     //  units: data.prices![0].unit, //25-3-22
                                    //     qty: qty,
                                    //   ),
                                    // );
                                    // DBProvider.db.updateCartProductQty(qty: qty, cartDbModel: CartDbModel());

                                    /*  DBProvider.db.updateCartProductQty(
                                      qty: 15,
                                      cartDbModel: CartDbModel(
                                          id: data.id,
                                          productId: data.id,
                                          name: data.name,
                                          image: data.images![0].image,
                                          price: data.prices![0].salePrice,
                                          unit: data.prices![0].unit,
                                          qty: 15),
                                    );*/
                                  },
                                  onMinus: (qty) async {
                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      if (res['qty'] == 1) {
                                        DBProvider.db
                                            .deleteItemFromCart(data.id);
                                      } else {
                                        DBProvider.db.updateCartProductQty(
                                          qty: res['qty'] - 1,
                                          cartDbModel: CartDbModel(
                                              id: data.id,
                                              productId: data.id,
                                              name: data.name,
                                              image: data.images![0].image,
                                              price: data.prices![0].salePrice,
                                              unit: data.prices![0].unit,
                                              qty: res['qty'] - 1),
                                        );
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text("First Add item!!")));
                                    }
                                  },
                                ),
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
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            _productResponse!.data!.categoryWithProduct![4].title
                                .toString(),
                            style: TextStyle(color: Colors.black,
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 16,
                        ),
                        child: TextButton(
                          onPressed: () {
                            final data = _productResponse!
                                .data!.categoryWithProduct![4].products![0];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SeeAll4Widget(
                                          data,
                                          settingData: _productResponse!
                                              .data!.settingData,
                                          data1: _productResponse!.data!,
                                        )));
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              // width: double.infinity,d
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _productResponse!
                      .data!.categoryWithProduct![4].products!.length,
                  itemBuilder: (context, index) {
                    final data = _productResponse!
                        .data!.categoryWithProduct![4].products![index];
                    return Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductWidget(data,
                                      _productResponse!.data!.settingData)));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "http://vegi.kanadtech.com/public/storage/" +
                                          _productResponse!
                                              .data!
                                              .categoryWithProduct![4]
                                              .products![index]
                                              .images![0]
                                              .image
                                              .toString()),
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _productResponse!
                                      .data!
                                      .categoryWithProduct![4]
                                      .products![index]
                                      .name
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    _productResponse!
                                            .data!.settingData!.currencies! +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![4]
                                            .products![index]
                                            .prices![0]
                                            .salePrice
                                            .toString() +
                                        '/' +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![4]
                                            .products![index]
                                            .prices![0]
                                            .unit
                                            .toString() +
                                        _productResponse!
                                            .data!
                                            .categoryWithProduct![4]
                                            .products![index]
                                            .prices![0]
                                            .units!
                                            .title
                                            .toString(),
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                // Row(
                                //   children: [
                                //     TextButton(
                                //       child: Container(
                                //           height: 25,
                                //           width: 100,
                                //           decoration: BoxDecoration(
                                //             border: Border.all(color: Colors.deepOrange),
                                //             color: Colors.deepOrange,
                                //             borderRadius: BorderRadius.circular(4),
                                //           ),
                                //           child: Center(
                                //             child: Text(
                                //               'Add',
                                //               style: TextStyle(color: Colors.black),
                                //             ),
                                //           )),
                                //       onPressed: () {
                                //        DBProvider.db.addToCart(CartDbModel(
                                //
                                //                id: data.id,
                                //                productId: data.id,
                                //                name: data.name,
                                //                image: data.images![0].image,
                                //                price: data.prices![0].salePrice,
                                //                unit: data.prices![0].unit,
                                //
                                //                //units: data.prices[0].units, //25-3-22
                                //               // qty: qty,
                                //
                                //
                                //        ));
                                //       },
                                //     ),
                                //   ],
                                // )
                                AddButton(
                                  onPlus: (qty) async {
                                    ///
                                    ///[Jay's ] Code
                                    ///
                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: res['qty'] + 1,
                                      ));
                                    } else {
                                      print(
                                          "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                      DBProvider.db.addToCart(CartDbModel(
                                        id: data.id,
                                        productId: data.id,
                                        name: data.name,
                                        image: data.images![0].image,
                                        price: data.prices![0].salePrice,
                                        unit: data.prices![0].units!.title,
                                        //  units: data.prices![0].unit, //25-3-22
                                        qty: qty,
                                      ));
                                    }

                                    // print(
                                    //     "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                    // DBProvider.db.addToCart(CartDbModel(
                                    //   id: data.id,
                                    //   productId: data.id,
                                    //   name: data.name,
                                    //   image: data.images![0].image,
                                    //   price: data.prices![0].salePrice,
                                    //   unit: data.prices![0].unit,

                                    //   //units: data.prices[0].units, //25-3-22
                                    //   qty: qty,
                                    // ));

                                    /*DBProvider.db.updateCartProductQty(
                                      qty: 15,
                                      cartDbModel: CartDbModel(
                                          id: 1648125834405306,
                                          productId: 68,
                                          name: data.name,
                                          image: data.images![0].image,
                                          price: data.prices![0].salePrice,
                                          unit: data.prices![0].unit,
                                          qty: 15),
                                    );*/
                                  },
                                  onMinus: (qty) async {
                                    Map<dynamic, dynamic> res = await DBProvider
                                            .db
                                            .getItem(data.id ?? 0)
                                        as Map<dynamic, dynamic>;
                                    if (res.isNotEmpty) {
                                      if (res['qty'] == 1) {
                                        DBProvider.db
                                            .deleteItemFromCart(data.id);
                                      } else {
                                        DBProvider.db.updateCartProductQty(
                                          qty: res['qty'] - 1,
                                          cartDbModel: CartDbModel(
                                              id: data.id,
                                              productId: data.id,
                                              name: data.name,
                                              image: data.images![0].image,
                                              price: data.prices![0].salePrice,
                                              unit: data.prices![0].unit,
                                              qty: res['qty'] - 1),
                                        );
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  Text("First Add item!!")));
                                    }
                                  },
                                ),
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
          ],
        ),
      ],
    );
  }
}

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vegapp/checkout.dart';
import 'package:vegapp/db/db_provider.dart';
import 'package:vegapp/model/cartprovider.dart';
import 'package:vegapp/model/product_model.dart';
import 'package:vegapp/widgets/product_widget.dart';


import '../model/cart_db_model.dart';

class Cart extends StatefulWidget {
  static String routeName = '/cart';
  final Function? onPlus;
  final Function? onMinus;

  Cart({this.onPlus, this.onMinus});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  DBProvider? dbHelper = DBProvider.db;
  int count = 1;
  bool isTrue = false;
  int? totalPrice =0;
  int? price;
  List<CartDbModel> _cartList = [];
  Product? _productResponse;
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  var list;
  var random;

  @override
  void initState() {
    _init();
    super.initState();
 //reefresh
    random = Random();
    refreshList();
  }

  Future<Null> refreshList() async {
    refreshKey.currentState?.show(atTop: true);
    await Future.delayed(Duration(seconds: 2));

    setState(() {
    //  list = List.generate(random.nextInt(3), (i) => ListView());
    });

    return null;
  }

  void _init() async {
    // await DBProvider.db.clearCart();
    _cartList = await DBProvider.db.getCartList();
    _cartList.forEach(
      (element) {
        price = int.parse(element.qty.toString()) *
            double.parse(element.price.toString()).toInt();

        totalPrice = totalPrice! + price!.toInt();
        price = 0;
      },
    );
    print(
        "TAG:: _init _cartList >>>>>>>>>>>>>>>>> ${_cartList.length} :: ${json.encode(_cartList)}");
    setState(() {
      print(totalPrice);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 6,
          child: Container(
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                    child: ListTile(
                  title: Text(
                    'Total Amount',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  subtitle: Row(
                    children: [
                      Text('₹', style: TextStyle(color: Colors.green),),
                      Text(
                        "${ totalPrice}",
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70.0, right: 20),
                    child: MaterialButton(
                      onPressed: () {
                             Navigator.of(context).pushNamed(CheckOutscreen.routeName);


                      },
                      minWidth: 200.0,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Text(
                        "Check out",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {

    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: _cartList.length,
      itemBuilder: (context, index) {
        final data = _cartList[index];
        return _buildCartItem(data);
      },
    );
  }

  Widget _buildCartItem(CartDbModel data) {
    final cart  = Provider.of<CartProvider>(context);

    // final data = _productResponse!
    //     .data!.categoryWithProduct![3].products![0];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Image(
                      image: NetworkImage(
                          "http://gng.invatomarket.com/public/storage/" +
                              data.image!),
                    ),
                    alignment: Alignment.centerLeft,
                  ),

                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text('ver'),
                        Text(
                          data.name.toString(),
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // Text(
                        //   data.units.toString(),
                        //   style: TextStyle(
                        //       fontWeight: FontWeight.w600,
                        //       fontSize: 18,
                        //       color: Colors.deepOrange),
                        // ),
                        Text(
                          '\u20B9' + data.price.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.deepOrange),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100,bottom: 5),
                          child: InkWell(
                              onTap: (){

                                dbHelper!.deleteItemFromCart(data.id);
                                  cart.removerCounter();
                                  cart.removeTotalPrice(double.parse(data.price.toString()));


                              },
                              child: Icon(Icons.delete,color: Colors.deepOrange,),),
                        ),
                        Container(
                          height: 33,
                          //width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrange),
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: ()async{
                                  setState(() {

                                  });
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
                                            image: data.image,
                                            price: data.price,
                                            unit: data.unit,
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
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.deepOrange.shade400),
                                    child: Icon(
                                      Icons.remove,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                              TextButton(
                                child: Text(
                                  "${data.qty}",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  // cart.count;
                                },
                              ),
                              InkWell(

                                onTap: () async {
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
                                      image: data.image,
                                      price: data.price,
                                      unit: data.unit,
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
                                      image: data.image,
                                      price: data.price,
                                      unit: data.unit,
                                      //  units: data.prices![0].unit, //25-3-22
                                      qty: data.qty,
                                    ));
                                  }
                                  //   print(data.id);
                                  //   Map<dynamic, dynamic> res = await DBProvider
                                  //       .db
                                  //       .getItem(data.id ?? 0)
                                  //   as Map<dynamic, dynamic>;
                                  //   if (res.isNotEmpty) {
                                  //     print(
                                  //         "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                  //     DBProvider.db.addToCart(CartDbModel(
                                  //       id: data.id,
                                  //       productId: data.id,
                                  //       name: data.name,
                                  //        image: data.image,
                                  //        price: data.price,
                                  //        unit: data.unit,
                                  //       // units: data.prices![0].unit, //25-3-22
                                  //       qty: res['qty'] + 1,
                                  //     ));
                                  //   } else {
                                  //     print(
                                  //         "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                  //     DBProvider.db.addToCart(CartDbModel(
                                  //       id: data.id,
                                  //       productId: data.id,
                                  //       name: data.name,
                                  //       // image: data.images![0].image,
                                  //       // price: data.prices![0].salePrice,
                                  //       // unit: data.prices![0].units!.title,
                                  //       //  units: data.prices![0].unit, //25-3-22
                                  //     //  qty: qty,
                                  //     ));
                                  //   }
                                  // DBProvider.db.updateCartProductQty(qty: cartDbModel: cartDbModel);
                                  ///adding item
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.deepOrange.shade400),
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

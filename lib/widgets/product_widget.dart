import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:vegapp/bottombar_custom.dart';
import 'package:vegapp/button/Home_Add_button.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/db/db_provider.dart';
import 'package:vegapp/model/api_services.dart';
import 'package:vegapp/model/cart_db_model.dart';
import 'package:vegapp/model/product_model.dart';
import 'package:vegapp/shimmer/page_shimmer.dart';

class ProductWidget extends StatefulWidget {
  final ProductElement productDetails;
  final SettingData? settingData;

  static String routeName = 'page';

  ProductWidget(this.productDetails, this.settingData);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool isReadmore = false;
  FetchUser _userList = FetchUser();
  List<Product> _product = <Product>[];
  List<CartDbModel> _cartList = [];
  Product? _productResponse;

  late bool isLoading;

  @override
  void initState() {
    isLoading = true;
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  void _init() async {
    // await DBProvider.db.clearCart();
    _cartList = await DBProvider.db.getCartList();
    print(
        "TAG:: _init _cartList >>>>>>>>>>>>>>>>> ${_cartList.length} :: ${json.encode(_cartList)}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ? PageShimmer() : _buildBody(),
      bottomNavigationBar: BottomBar(),
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

  Widget _buildBody() {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 8),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Center(
                        child: Icon(
                      Icons.arrow_back_ios,
                     // color: Colors.deepOrange,
                    )),
                  ),
                  SizedBox(width: 10),
                  Text(
                    widget.productDetails.name ?? "",
                    style: const TextStyle(
                      fontSize: 18,

                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "http://gng.invatomarket.com/public/storage/" +
                          widget.productDetails.images![0].image!),
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
                              widget.productDetails.prices![0].unit.toString() +
                                  widget.productDetails.prices![0].units!.title
                                      .toString(),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            widget.settingData!.currencies! +
                                widget.productDetails.prices![0].salePrice
                                    .toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.deepOrange),
                          ),
                          AddButton(
                            onPlus: (qty) async {
                              print(   widget.productDetails.id);
                              Map<dynamic, dynamic> res = await DBProvider
                                  .db
                                  .getItem(   widget.productDetails.id ?? 0)
                              as Map<dynamic, dynamic>;
                              if (res.isNotEmpty) {
                                print(
                                    "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                DBProvider.db.addToCart(CartDbModel(
                                  id:    widget.productDetails.id,
                                  productId:    widget.productDetails.id,
                                  name:    widget.productDetails.name,
                                  image:    widget.productDetails.images![0].image,
                                  price:    widget.productDetails.prices![0].salePrice,
                                  unit:    widget.productDetails.prices![0].units!.title,
                                  //  units: data.prices![0].unit, //25-3-22
                                  qty: res['qty'] + 1,
                                ));
                              } else {
                                print(
                                    "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                                DBProvider.db.addToCart(CartDbModel(
                                  id:    widget.productDetails.id,
                                  productId:    widget.productDetails.id,
                                  name:    widget.productDetails.name,
                                  image:    widget.productDetails.images![0].image,
                                  price:    widget.productDetails.prices![0].salePrice,
                                  unit:    widget.productDetails.prices![0].units!.title,
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
                                  .getItem(   widget.productDetails.id ?? 0)
                              as Map<dynamic, dynamic>;
                              if (res.isNotEmpty) {
                                if (res['qty'] == 1) {
                                  DBProvider.db
                                      .deleteItemFromCart(   widget.productDetails.id);
                                } else {
                                  DBProvider.db.updateCartProductQty(
                                    qty: res['qty'] - 1,
                                    cartDbModel: CartDbModel(
                                        id:    widget.productDetails.id,
                                        productId:    widget.productDetails.id,
                                        name:    widget.productDetails.name,
                                        image:    widget.productDetails.images![0].image,
                                        price:    widget.productDetails.prices![0].salePrice,
                                        unit:    widget.productDetails.prices![0].unit,
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
                          // AddButton(
                          //   onPlus: (qty) {
                          //     print(
                          //         "TAG:: >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ");
                          //     // DBProvider.db.addToCart(CartDbModel(
                          //     //   id: data.id,
                          //     //   productId: data.id,
                          //     //   name: data.name,
                          //     //   image: data.images![0].image,
                          //     //   price: data.prices![0].salePrice,
                          //     //   unit: data.prices![0].units!.title,
                          //     //   //  units: data.prices![0].unit, //25-3-22
                          //     //   qty: qty,
                          //     // ));
                          //
                          //     // DBProvider.db.updateCartProductQty(
                          //     //         qty: 15,
                          //     //         cartDbModel: CartDbModel(
                          //     //             id: 1648125834405306,
                          //     //             productId: 68,
                          //     //             name: data.name,
                          //     //             image: data.images![0].image,
                          //     //             price: data.prices![0].salePrice,
                          //     //             unit: data.prices![0].unit,
                          //     //             qty: 15),
                          //     //       );
                          //   },
                          //   onMinus: (qty) {
                          //     // if (qty == 1) {
                          //     //   DBProvider.db.deleteItemFromCart(data.id);
                          //     // } else {
                          //     //   DBProvider.db.updateCartProductQty(
                          //     //           qty: 15,
                          //     //           cartDbModel: CartDbModel(
                          //     //               id: data.id,
                          //     //               productId: data.id,
                          //     //               name: data.name,
                          //     //               image: data.images![0].image,
                          //     //               price: data.prices![0].salePrice,
                          //     //               unit: data.prices![0].unit,
                          //     //               qty: qty),
                          //     //         );
                          //     // }
                          //   },
                          // ),
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
                  child:
                      buildText(widget.productDetails.description.toString()),
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
              ],
            ),
          ],
        ),
      ],
    );
  }
}

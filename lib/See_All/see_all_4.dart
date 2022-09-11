import 'package:flutter/material.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/db/db_provider.dart';
import 'package:vegapp/model/cart_db_model.dart';
import 'package:vegapp/model/product_model.dart';
import 'package:vegapp/shimmer/veg_card_shimmer.dart';
import 'package:vegapp/widgets/product_widget.dart';

import '../button/Home_Add_button.dart';

class SeeAll4Widget extends StatefulWidget {
  final Data? data1;
  final SettingData? settingData;

  SeeAll4Widget(ProductElement data,  {  this.settingData, this.data1});

  @override
  _SeeAll4WidgetState createState() => _SeeAll4WidgetState();
}

class _SeeAll4WidgetState extends State<SeeAll4Widget> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( widget.data1!.categoryWithProduct![4].title.toString()),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return isLoading
        ? ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return VegCartShimmer();
        })
        : Padding(

      padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
      child: ListView.builder(
        itemCount: widget.data1!.categoryWithProduct![4].products!.length,
        itemBuilder: (context, index) {
          final data =
          widget.data1!.categoryWithProduct![4].products![index];
          return Card(
            elevation: 5,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductWidget(data, widget.settingData)));
              },
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
                                  widget.data1!.categoryWithProduct![4]
                                      .products![index].images![0].image
                                      .toString()),
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
                              widget.data1!.categoryWithProduct![4]
                                  .products![index].name
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.data1!.categoryWithProduct![4]
                                  .products![index].prices![0].unit
                                  .toString() +
                                  ' ' +
                                  widget
                                      .data1!
                                      .categoryWithProduct![4]
                                      .products![index]
                                      .prices![0]
                                      .units!
                                      .title
                                      .toString(),
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.data1!.categoryWithProduct![4]
                                  .products![index].prices![0].salePrice
                                  .toString() +
                                  widget.data1!.settingData!.currencies
                                      .toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.deepOrange),
                            ),
                          ],
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
    );
  }
}

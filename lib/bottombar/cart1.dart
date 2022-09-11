import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AddCart extends StatefulWidget {
  static String routeName = '/cart1';

  @override
  _AddCartState createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.white,
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
            child: IconButton(
              alignment: Alignment.center,
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  subtitle: Text(
                    '\₹230',
                    style: TextStyle(color: Colors.green),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0, right: 20),

                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 400.0,
                      height: 35,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      //clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Text(
                        "Check out",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green.shade700,
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
}

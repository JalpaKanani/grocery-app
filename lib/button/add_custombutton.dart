import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegapp/model/cartprovider.dart';

class AddButton1 extends StatefulWidget {
  @override
  _AddButton1State createState() => _AddButton1State();
}

class _AddButton1State extends State<AddButton1> {
  int count = 1;
  bool isTrue = false;

  // bool isBool = false;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: EdgeInsets.all(14.0),
      child: Expanded(
        child: SizedBox(
          //height: 40,
          width: 115,
          child: TextButton(
            onPressed: () {},
            child: Container(
              height: 25,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepOrange),
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(4),
              ),
              child: isTrue == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            if (count > 1) {
                              setState(() {
                                count--;
                              });
                            }
                            if (count == 1) {
                              setState(() {
                                isTrue = false;
                              });
                            }
                          },
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
                        Text(
                          "$count",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
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
                            )),
                      ],
                    )
                  : Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isTrue = true;
                          });
                        },
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ),
          ),

        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegapp/model/cartprovider.dart';

class AddButton extends StatefulWidget {
  final Function? onPlus;
  final Function? onMinus;

  AddButton({this.onPlus, this.onMinus});

  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  int count = 1;
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    //AddCartProvider addCartProvider = Provider.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10, bottom: 3, top: 13),
      child: SizedBox(
        width: 120,
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
                          if (widget.onMinus != null) widget.onMinus!(count);
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
                            if (widget.onPlus != null) widget.onPlus!(count);
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
                        if (widget.onPlus != null) widget.onPlus!(count);
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
    );
  }
}

import 'package:flutter/material.dart';

class FaqScreen extends StatefulWidget {
  static String routeName = '/faqScreen';

  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Faqs',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Card(
                          elevation: 6,
                          child: Container(
                            height: 80,
                            width: 500,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Are there any charges for registration?',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.deepOrange,
                                  // height: 20,
                                  // thickness: 5,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 10, top: 1),
                                        child: Text(
                                          'No. Registration oon GNG is absolutely free.',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          elevation: 6,
                          child: Container(
                            height: 120,
                            width: 500,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Do I have to necessarily register to shop on CNG?',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.deepOrange,
                                  // height: 20,
                                  // thickness: 5,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'You can register by clicking in the "Sign up" button.Please provide the information in the from that appears.You can Divider  just increases and tried setting the color to see if it was defaulting to transparone. Nothing works!',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          elevation: 6,
                          child: Container(
                            height: 200,
                            width: 500,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'How do I register? ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.deepOrange,
                                  // height: 20,
                                  // thickness: 5,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    'You can register by clicking in the "Sign up" button.Please provide the information in the from that appears.You can review the termas Im currently learning how to build apps using the Flutter SDK and Android Studio. My problem is that I need to add a Divider widget between the Administrative text and the rest of the Card but as you can see in the screenshot below, the divider isnt showing up. Ive tried changing the size (In which case the space between the two texts just increases and tried setting the color to see if it was defaulting to transparent on my phone. Nothing works!',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

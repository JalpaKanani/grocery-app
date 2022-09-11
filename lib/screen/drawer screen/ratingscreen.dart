import 'package:emojis/emoji.dart';
import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';

class RatingScreen extends StatefulWidget {
  static String routeName = '/ratingscreen';

  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  Future<void> _loadData() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          title: Center(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('Rating & Reviews',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.start),
                ),
              ],
            ),
          ),
          leading: Padding(
            padding: EdgeInsets.only(top: 20),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _loadData,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Card(
                            elevation: 6,
                            child: Container(
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Amazing experience',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2, right: 20),
                                                    child: Text(
                                                      'Parth Kotadiya',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
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
                                            'The most amazing experience',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2, right: 20),
                                                    child: Text(
                                                      'Parth Kotadiya',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 105,
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
                                          Container(
                                            child: Column(
                                              children: [
                                                Text(
                                                  'very fast Delivery.',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 20),
                                                      child: Row(
                                                        children: [
                                                          Text(Emojis
                                                              .smilingFaceWithSmilingEyes),
                                                          Text(Emojis
                                                              .smilingFaceWithSmilingEyes),
                                                          Text(Emojis
                                                              .smilingFaceWithSmilingEyes),
                                                          Text(Emojis
                                                              .smilingFaceWithSmilingEyes),
                                                          Text(Emojis
                                                              .smilingFaceWithSmilingEyes),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: CircleAvatar(
                                            child: Image.network(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrJSOH85Ch6ayM8zVpTxJA-9VaEhEkxPzX-w&usqp=CAU'),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Colors.deepOrange,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Colors.deepOrange,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Colors.deepOrange,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.grey.shade300,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      color:
                                                          Colors.grey.shade300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 80),
                                                child: Text(
                                                  'fenil',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Nice!!!!!',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc3CRk6fb8S5QG3XexDUtLPQbyx-eS1s2x9rFWh4s9RvFDvolUGEmPnjr4rK_ZkAQC8zw&usqp=CAU'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 70),
                                                    child: Text(
                                                      'Ankur',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'mast',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc3CRk6fb8S5QG3XexDUtLPQbyx-eS1s2x9rFWh4s9RvFDvolUGEmPnjr4rK_ZkAQC8zw&usqp=CAU'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 70),
                                                    child: Text(
                                                      'Ankur',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'amazing',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc3CRk6fb8S5QG3XexDUtLPQbyx-eS1s2x9rFWh4s9RvFDvolUGEmPnjr4rK_ZkAQC8zw&usqp=CAU'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 70),
                                                    child: Text(
                                                      'Ankur',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Amazing experience with item.loved items and services.',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2, right: 20),
                                                    child: Text(
                                                      'Parth Kotadiya',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Nice!!!!',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2, right: 20),
                                                    child: Text(
                                                      'Anurag Savaliya',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                            child: Expanded(
                              child: Container(
                                height: 150,
                                width: 500,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 15, right: 10, top: 10),
                                      child: Text(
                                        'Lorem lpsum is simply dummy text ph the printing and typesetting industry.Lorem lpsum has been the industy\'s standard dummy text ever since the 1500s,when an unknown printer took a gallry of type and scrambled it to make a type specimen book.',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, top: 10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: CircleAvatar(
                                                  radius: 22,
                                                  child: Image.network(
                                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc3CRk6fb8S5QG3XexDUtLPQbyx-eS1s2x9rFWh4s9RvFDvolUGEmPnjr4rK_ZkAQC8zw&usqp=CAU'),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 15),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.deepOrange,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color: Colors
                                                                .grey.shade300,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color: Colors
                                                                .grey.shade300,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color: Colors
                                                                .grey.shade300,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color: Colors
                                                                .grey.shade300,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 85),
                                                      child: Text(
                                                        'Ankur',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            elevation: 6,
                            child: Expanded(
                              child: Container(
                                height: 85,
                                width: 500,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'good',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: CircleAvatar(
                                                  radius: 22,
                                                  child: Image.network(
                                                      'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 15),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.deepOrange,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.deepOrange,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.deepOrange,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.deepOrange,
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.deepOrange,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2, right: 20),
                                                      child: Text(
                                                        'Jeel Khokhariya',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            elevation: 6,
                            child: Container(
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'first rating',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2, right: 20),
                                                    child: Text(
                                                      'Anurag Savaliya',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Wow Amazing Product!!!!',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc3CRk6fb8S5QG3XexDUtLPQbyx-eS1s2x9rFWh4s9RvFDvolUGEmPnjr4rK_ZkAQC8zw&usqp=CAU'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 70),
                                                    child: Text(
                                                      'Ankur',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Wow amazing Searvice & Products',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 85),
                                                    child: Text(
                                                      'jax',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Wow Amazing Seavice!!!!',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc3CRk6fb8S5QG3XexDUtLPQbyx-eS1s2x9rFWh4s9RvFDvolUGEmPnjr4rK_ZkAQC8zw&usqp=CAU'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 70),
                                                    child: Text(
                                                      'Ankur',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Wow amazing Searvice & Products',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 85),
                                                    child: Text(
                                                      'jax',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Wow amazing Searvice & Products',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 70),
                                                    child: Text(
                                                      'Navab',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Best Of all the best',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(Emojis.faceBlowingAKiss),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(Emojis.sunflower),
                                          Text(Emojis.sunflower),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(Emojis.smilingFaceWithHearts),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 85),
                                                    child: Text(
                                                      'jax',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Wow amazing Searvice & Products',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .grey.shade300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 70),
                                                    child: Text(
                                                      'Navab',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              height: 85,
                              width: 500,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Best Of all the best',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(Emojis.faceBlowingAKiss),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(Emojis.sunflower),
                                          Text(Emojis.sunflower),
                                          Text(
                                              Emojis.rollingOnTheFloorLaughing),
                                          Text(Emojis.smilingFaceWithHearts),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: CircleAvatar(
                                                radius: 22,
                                                child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.deepOrange,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 85),
                                                    child: Text(
                                                      'jax',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

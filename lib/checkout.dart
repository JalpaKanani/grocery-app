import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CheckOutscreen extends StatefulWidget {
  static String routeName = ' checkout';

  @override
  _CheckOutscreenState createState() => _CheckOutscreenState();
}

class _CheckOutscreenState extends State<CheckOutscreen> {
  GoogleSignIn _googleSignIn = GoogleSignIn();
  List<String> items = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12"
  ];

  String? selectedItem = '01';

  List<String> year = [
    "2001",
    "2002",
    "2003",
    "2004",
    "2005",
    "2006",
    "2007",
    "2008",
    "2009",
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
    "2023",
    "2024",
    "2025",
    "2026",
    "2027",
    "2028"
  ];

  String? selectedYear = '2001';

  bool _value = false;
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                            Center(
                              child: Text(
                                'PAYMENT',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Center(
                                  child: Text(
                                'Choose your payment method',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              )),
                            ),
                            SizedBox(height: 40),
                            Center(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                      elevation: 6,
                                      child: Container(
                                        height: 70,
                                        child: Center(
                                          child: ListTile(
                                            title: const Text(
                                                'Creadit/Debit Card'),
                                            leading: Radio(
                                              value: 1,
                                              groupValue: val,
                                              onChanged: (value) {
                                                setState(() {
                                                  val = value as int;
                                                });
                                              },
                                              activeColor: Colors.deepOrange,
                                              toggleable: true,
                                            ),
                                            trailing: Container(
                                                height: 50,
                                                width: 50,
                                                child: Image.network(
                                                    'https://www.pngall.com/wp-content/uploads/2/Blue-Credit-Card-PNG-Picture.png')),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      elevation: 6,
                                      child: Container(
                                        height: 70,
                                        child: Center(
                                          child: ListTile(
                                            title:
                                                const Text('Case On Delivary'),
                                            leading: Radio(
                                              value: 2,
                                              groupValue: val,
                                              onChanged: (value) {
                                                setState(() {
                                                  val = value as int;
                                                });
                                              },
                                              activeColor: Colors.deepOrange,
                                              toggleable: true,
                                            ),
                                            trailing: Container(
                                                height: 50,
                                                width: 50,
                                                child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4xLuPqKDAqdGLk6nRjHNqayqjj0TgaE2_rGOb_LpSv97tIkMVshMyt0RbdWf7J4uSOi0&usqp=CAU')),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      elevation: 6,
                                      child: Container(
                                        height: 70,
                                        child: Center(
                                          child: ListTile(
                                            title: const Text('PayPal'),
                                            leading: Radio(
                                              value: 3,
                                              groupValue: val,
                                              onChanged: (value) {
                                                setState(() {
                                                  val = value as int;
                                                });
                                              },
                                              activeColor: Colors.deepOrange,
                                              toggleable: true,
                                            ),
                                            trailing: Container(
                                                height: 50,
                                                width: 50,
                                                child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVwEkUjn3kImVCGVk904fTPaqPgC3K96fa7Cz2PfQ6JWPAb8v00I8gfh6vWwVzz-bq8SE&usqp=CAU')),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Card(
                                        elevation: 6,
                                        child: Container(
                                          height: 70,
                                          child: Center(
                                            child: ListTile(
                                              title:
                                                  const Text('Google Wallet'),
                                              leading: Radio(
                                                value: 4,
                                                groupValue: val,
                                                onChanged: (value) {
                                                  setState(() {
                                                    val = value as int;
                                                  });
                                                },
                                                activeColor: Colors.deepOrange,
                                                toggleable: true,
                                              ),
                                              trailing: Container(
                                                  height: 50,
                                                  width: 50,
                                                  child: Image.network(
                                                      'https://www.shareicon.net/data/2015/09/08/97861_wallet_512x512.png')),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Container(
                              height: 60,
                              width: double.infinity,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular()
                              // ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(35))),
                                onPressed: () {
                                  if (val == 1) {
                                    showDialog(
                                        context: context,
                                        builder: (_) => new AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0))),
                                              content: Builder(
                                                builder: (context) {
                                                  // Get available height and width of the build area of this widget. Make a choice depending on the size.
                                                  var height =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height;
                                                  var width =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width;

                                                  return Container(
                                                    height: height - 500,
                                                    width: width - 150,
                                                    child: Column(
                                                      children: [
                                                        Center(
                                                            child: Text(
                                                          'Please Enter Your Card Details...',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 24),
                                                        )),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Card Number',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          cursorColor:
                                                              Colors.deepOrange,
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .deepOrange)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .grey)),
                                                                  focusColor: Color(
                                                                      0xffFFFFFF),
                                                                  fillColor: Color(
                                                                      0xffFFFFFF),
                                                                  filled: true,
                                                                  contentPadding:
                                                                      EdgeInsets.only(
                                                                          left:
                                                                              22),

                                                                  //labelText: 'User Name',

                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors.grey)),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Card Name',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                          cursorColor:
                                                              Colors.deepOrange,
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .deepOrange)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .grey)),
                                                                  focusColor: Color(
                                                                      0xffFFFFFF),
                                                                  fillColor: Color(
                                                                      0xffFFFFFF),
                                                                  filled: true,
                                                                  contentPadding:
                                                                      EdgeInsets.only(
                                                                          left:
                                                                              22),

                                                                  //labelText: 'User Name',

                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors.grey)),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Expiration Date',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            //SizedBox(width: 20),
                                                            Text(
                                                              'CVV',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              flex: 4,
                                                              child: Container(
                                                                width: 160,
                                                                height: 55,
                                                                child:
                                                                    DropdownButtonFormField<
                                                                        String>(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.grey),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.deepOrange),
                                                                    ),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                  ),
                                                                  value:
                                                                      selectedItem,
                                                                  items: items
                                                                      .map((item) =>
                                                                          DropdownMenuItem(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Container(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Text(
                                                                                item,
                                                                                style: TextStyle(fontSize: 15, color: Colors.black),
                                                                              ),
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  onChanged: (item) =>
                                                                      setState(() =>
                                                                          selectedItem =
                                                                              item),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Expanded(
                                                              flex: 6,
                                                              child: Container(
                                                                width: 160,
                                                                height: 55,
                                                                child:
                                                                    DropdownButtonFormField<
                                                                        String>(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.grey),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.deepOrange),
                                                                    ),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                  ),
                                                                  value:
                                                                      selectedYear,
                                                                  items: year
                                                                      .map((item) =>
                                                                          DropdownMenuItem(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Container(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Text(
                                                                                item,
                                                                                style: TextStyle(fontSize: 15, color: Colors.black),
                                                                              ),
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  onChanged: (item) =>
                                                                      setState(() =>
                                                                          selectedItem =
                                                                              item),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Expanded(
                                                              flex: 6,
                                                              child: Container(
                                                                width: 160,
                                                                height: 55,
                                                                child:
                                                                    TextFormField(
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .text,
                                                                  cursorColor:
                                                                      Colors
                                                                          .deepOrange,
                                                                  decoration: InputDecoration(
                                                                      border: InputBorder.none,
                                                                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide(color: Colors.deepOrange)),
                                                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide(color: Colors.grey)),
                                                                      focusColor: Color(0xffFFFFFF),
                                                                      fillColor: Color(0xffFFFFFF),
                                                                      filled: true,
                                                                      // contentPadding:
                                                                      // EdgeInsets.only(left: 22),

                                                                      //labelText: 'User Name',

                                                                      hintStyle: TextStyle(color: Colors.grey)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(height: 20),
                                                        Container(
                                                            height: 60,
                                                            width:
                                                                double.infinity,
                                                            child: ElevatedButton(
                                                                onPressed:
                                                                    () {
                                                                  Navigator.of(context).pop();
                                                                    },
                                                                child: Text(
                                                                    'Submit',
                                                                    style: TextStyle(
                                                                        fontStyle:
                                                                            FontStyle
                                                                                .normal,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.w700))))
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ));
                                  } else if (val == 2) {
                                  } else if (val == 3) {
                                    showDialog(
                                        context: context,
                                        builder: (_) => new AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0))),
                                              content: Builder(
                                                builder: (context) {
                                                  // Get available height and width of the build area of this widget. Make a choice depending on the size.
                                                  var height =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height;
                                                  var width =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width;

                                                  return Container(
                                                    height: height - 300,
                                                    width: width - 150,
                                                    child: Column(
                                                      children: [
                                                        Center(
                                                            child: Text(
                                                          'Please Enter Your Card Details...',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 24),
                                                        )),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Email Address',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          cursorColor:
                                                              Colors.deepOrange,
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .deepOrange)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .grey)),
                                                                  focusColor: Color(
                                                                      0xffFFFFFF),
                                                                  fillColor: Color(
                                                                      0xffFFFFFF),
                                                                  filled: true,
                                                                  contentPadding:
                                                                      EdgeInsets.only(
                                                                          left:
                                                                              22),

                                                                  //labelText: 'User Name',

                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors.grey)),
                                                        ),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'PassWord',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        TextFormField(
                                                          obscureText: true,
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          cursorColor:
                                                              Colors.deepOrange,
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .deepOrange)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .grey)),
                                                                  focusColor: Color(
                                                                      0xffFFFFFF),
                                                                  fillColor: Color(
                                                                      0xffFFFFFF),
                                                                  filled: true,
                                                                  contentPadding:
                                                                      EdgeInsets.only(
                                                                          left:
                                                                              22),

                                                                  //labelText: 'User Name',

                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors.grey)),
                                                        ),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Card Number',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          cursorColor:
                                                              Colors.deepOrange,
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .deepOrange)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .grey)),
                                                                  focusColor: Color(
                                                                      0xffFFFFFF),
                                                                  fillColor: Color(
                                                                      0xffFFFFFF),
                                                                  filled: true,
                                                                  contentPadding:
                                                                      EdgeInsets.only(
                                                                          left:
                                                                              22),

                                                                  //labelText: 'User Name',

                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors.grey)),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Card Name',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                          cursorColor:
                                                              Colors.deepOrange,
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .deepOrange)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .grey)),
                                                                  focusColor: Color(
                                                                      0xffFFFFFF),
                                                                  fillColor: Color(
                                                                      0xffFFFFFF),
                                                                  filled: true,
                                                                  contentPadding:
                                                                      EdgeInsets.only(
                                                                          left:
                                                                              22),

                                                                  //labelText: 'User Name',

                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors.grey)),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Expiration Date',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            //SizedBox(width: 20),
                                                            Text(
                                                              'CVV',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              flex: 4,
                                                              child: Container(
                                                                width: 160,
                                                                height: 55,
                                                                child:
                                                                    DropdownButtonFormField<
                                                                        String>(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.grey),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.deepOrange),
                                                                    ),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                  ),
                                                                  value:
                                                                      selectedItem,
                                                                  items: items
                                                                      .map((item) =>
                                                                          DropdownMenuItem(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Container(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Text(
                                                                                item,
                                                                                style: TextStyle(fontSize: 15, color: Colors.black),
                                                                              ),
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  onChanged: (item) =>
                                                                      setState(() =>
                                                                          selectedItem =
                                                                              item),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Expanded(
                                                              flex: 6,
                                                              child: Container(
                                                                width: 160,
                                                                height: 55,
                                                                child:
                                                                    DropdownButtonFormField<
                                                                        String>(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.grey),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.deepOrange),
                                                                    ),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                  ),
                                                                  value:
                                                                      selectedYear,
                                                                  items: year
                                                                      .map((item) =>
                                                                          DropdownMenuItem(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Container(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Text(
                                                                                item,
                                                                                style: TextStyle(fontSize: 15, color: Colors.black),
                                                                              ),
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  onChanged: (item) =>
                                                                      setState(() =>
                                                                          selectedItem =
                                                                              item),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Expanded(
                                                              flex: 6,
                                                              child: Container(
                                                                width: 160,
                                                                height: 55,
                                                                child:
                                                                    TextFormField(
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .text,
                                                                  cursorColor:
                                                                      Colors
                                                                          .deepOrange,
                                                                  decoration: InputDecoration(
                                                                      border: InputBorder.none,
                                                                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide(color: Colors.deepOrange)),
                                                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide(color: Colors.grey)),
                                                                      focusColor: Color(0xffFFFFFF),
                                                                      fillColor: Color(0xffFFFFFF),
                                                                      filled: true,
                                                                      // contentPadding:
                                                                      // EdgeInsets.only(left: 22),

                                                                      //labelText: 'User Name',

                                                                      hintStyle: TextStyle(color: Colors.grey)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(height: 20),
                                                        Container(
                                                            height: 60,
                                                            width:
                                                                double.infinity,
                                                            child: ElevatedButton(
                                                                onPressed:
                                                                    () {
                                                                      Navigator.of(context).pop();
                                                                    },
                                                                child: Text(
                                                                    'Submit',
                                                                    style: TextStyle(
                                                                        fontStyle:
                                                                            FontStyle
                                                                                .normal,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.w700))))
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ));
                                  } else if (val == 4) {
                                    showDialog(
                                        context: context,
                                        builder: (_) => new AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0))),
                                              content: Builder(
                                                builder: (context) {
                                                  // Get available height and width of the build area of this widget. Make a choice depending on the size.
                                                  var height =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height;
                                                  var width =
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width;

                                                  return Container(
                                                    height: height - 500,
                                                    width: width - 150,
                                                    child: Column(
                                                      children: [
                                                        Center(
                                                            child: Text(
                                                          'Please Enter Your Card Details...',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 24),
                                                        )),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Card Number',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          cursorColor:
                                                              Colors.deepOrange,
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .deepOrange)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .grey)),
                                                                  focusColor: Color(
                                                                      0xffFFFFFF),
                                                                  fillColor: Color(
                                                                      0xffFFFFFF),
                                                                  filled: true,
                                                                  contentPadding:
                                                                      EdgeInsets.only(
                                                                          left:
                                                                              22),

                                                                  //labelText: 'User Name',

                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors.grey)),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Card Name',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                          cursorColor:
                                                              Colors.deepOrange,
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .deepOrange)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .grey)),
                                                                  focusColor: Color(
                                                                      0xffFFFFFF),
                                                                  fillColor: Color(
                                                                      0xffFFFFFF),
                                                                  filled: true,
                                                                  contentPadding:
                                                                      EdgeInsets.only(
                                                                          left:
                                                                              22),

                                                                  //labelText: 'User Name',

                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors.grey)),
                                                        ),
                                                        SizedBox(height: 20),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Expiration Date',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            //SizedBox(width: 20),
                                                            Text(
                                                              'CVV',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              flex: 4,
                                                              child: Container(
                                                                width: 160,
                                                                height: 55,
                                                                child:
                                                                    DropdownButtonFormField<
                                                                        String>(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.grey),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.deepOrange),
                                                                    ),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                  ),
                                                                  value:
                                                                      selectedItem,
                                                                  items: items
                                                                      .map((item) =>
                                                                          DropdownMenuItem(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Container(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Text(
                                                                                item,
                                                                                style: TextStyle(fontSize: 15, color: Colors.black),
                                                                              ),
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  onChanged: (item) =>
                                                                      setState(() =>
                                                                          selectedItem =
                                                                              item),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Expanded(
                                                              flex: 6,
                                                              child: Container(
                                                                width: 160,
                                                                height: 55,
                                                                child:
                                                                    DropdownButtonFormField<
                                                                        String>(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.grey),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.deepOrange),
                                                                    ),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                  ),
                                                                  value:
                                                                      selectedYear,
                                                                  items: year
                                                                      .map((item) =>
                                                                          DropdownMenuItem(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Container(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Text(
                                                                                item,
                                                                                style: TextStyle(fontSize: 15, color: Colors.black),
                                                                              ),
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  onChanged: (item) =>
                                                                      setState(() =>
                                                                          selectedItem =
                                                                              item),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Expanded(
                                                              flex: 6,
                                                              child: Container(
                                                                width: 160,
                                                                height: 55,
                                                                child:
                                                                    TextFormField(
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .text,
                                                                  cursorColor:
                                                                      Colors
                                                                          .deepOrange,
                                                                  decoration: InputDecoration(
                                                                      border: InputBorder.none,
                                                                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide(color: Colors.deepOrange)),
                                                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide(color: Colors.grey)),
                                                                      focusColor: Color(0xffFFFFFF),
                                                                      fillColor: Color(0xffFFFFFF),
                                                                      filled: true,
                                                                      //   contentPadding: EdgeInsets.only(left: 28),

                                                                      //labelText: 'User Name',

                                                                      hintStyle: TextStyle(color: Colors.grey)),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(height: 20),
                                                        Container(
                                                            height: 60,
                                                            width:
                                                                double.infinity,
                                                            child: ElevatedButton(
                                                                onPressed:
                                                                    () {
                                                                      Navigator.of(context).pop();
                                                                    },
                                                                child: Text(
                                                                    'Submit',
                                                                    style: TextStyle(
                                                                        fontStyle:
                                                                            FontStyle
                                                                                .normal,
                                                                        fontSize:
                                                                            18,
                                                                        fontWeight:
                                                                            FontWeight.w700))))
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ));
                                  }
                                },
                                child: Text(
                                  'Pay',
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
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
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            return DraggableScrollableSheet(
              initialChildSize: 1,
              minChildSize: 0.5,
              maxChildSize: 1,
              builder:
                  (BuildContext context, ScrollController scrollController) =>
                      Expanded(
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 370, top: 50),
                                child: FlatButton(
                                  onPressed: () {
                                    // Navigator.of(context).pushNamed();
                                  },
                                  child: Icon(Icons.close),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 250,
                                    width: 400,
                                    child: Image.network(
                                      'https://img.freepik.com/free-photo/coriander-branch-green-leaves-isolated-white-surface-top-view-flat-lay_313215-3642.jpg?size=626&ext=jpg',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Sign in to Continue',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        'GROCER APP',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.deepOrange),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      SignInButton(
                                        Buttons.Google,
                                        onPressed: () async {
                                          final newuser =
                                              await _googleSignIn.signIn();
                                          final googleauth =
                                              await newuser!.authentication;
                                          final creds =
                                              GoogleAuthProvider.credential(
                                            accessToken: googleauth.accessToken,
                                            idToken: googleauth.idToken,
                                          );
                                          await FirebaseAuth.instance
                                              .signInWithCredential(creds);
                                        },
                                        // onPressed: () {},
                                        text: "Sign up with Google",
                                      ),
                                      SizedBox(height: 40),
                                      Text(
                                        'By Signing you agreeing to our',
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Terms and Privacy Policy',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade600),
                                      ),
                                      SizedBox(
                                        height: 100,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Container(
                                      child: Image.network(
                                        //  'https://pngimg.com/uploads/tomato/tomato_PNG12569.png'
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpHybn-Y6XKFvRpwAxuj5mMbF2PGqTAqZ8P6eH01IO_vaMiRRdXLitnhj19xeyEeZA-v4&usqp=CAU',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //  child:
            );
          },
        ),
      ),
    );
  }
}

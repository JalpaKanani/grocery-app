import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';


class MyDeliveryAddress extends StatefulWidget {
  static String routeName = 'address';

  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  MyDeliveryAddress({this.inputFormatters, this.validator});

  @override
  State<MyDeliveryAddress> createState() => _MyDeliveryAddressState();
}

class _MyDeliveryAddressState extends State<MyDeliveryAddress> with TickerProviderStateMixin {
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  bool _isChecked = false;
  bool location1 = false;

  final _formKey = GlobalKey<FormState>();

//use location
  String location ='Null, Press Button';
  String Address = 'Click Here To Set Current Location';
  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
  Future<void> GetAddressFromLatLong(Position position)async {
    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);
    Placemark place = placemarks[0];
    Address = ' ${place.subLocality}, ${place.locality}, ${place.postalCode},${place.administrativeArea}, ${place.country}';
    setState(()  {
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController _tab = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Add Delivery Address',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Container(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r"[a-zA-Z]+|\s"),
                          )
                        ],
                        validator: (val) {
                          if (val!.isEmpty) return 'Please Enter FullName';
                        },
                        decoration: InputDecoration(
                          hintText: 'FullName*',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r"[0-9]"),
                          )
                        ],
                        validator: (val) {
                          if (val!.isEmpty) return 'Please Enter Mobile No';
                        },
                        decoration: InputDecoration(
                          hintText: 'Mobile No*',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r"[0-9]"),
                          )
                        ],
                        validator: (val) {
                          if (val!.isEmpty)
                            return 'Please Enter Alternate Mobile No';
                        },
                        decoration: InputDecoration(
                          hintText: 'Alternate Mobile No*',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r"[0-9]"),
                          )
                        ],
                        validator: (val) {
                          if (val!.isEmpty) return 'Please Enter House No';
                        },
                        decoration: InputDecoration(
                          hintText: 'House No. Apartment Name Street*',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r"[a-zA-Z]+|\s"),
                          )
                        ],
                        validator: (val) {
                          if (val!.isEmpty) return 'Please Enter LandMarkArea';
                        },
                        decoration: InputDecoration(
                          hintText: 'LandMark*',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r"[a-zA-Z]+|\s"),
                          )
                        ],
                        validator: (val) {
                          if (val!.isEmpty) return 'Please Enter City';
                        },
                        decoration: InputDecoration(
                          hintText: 'City*',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r"[a-zA-Z]+|\s"),
                          )
                        ],
                        validator: (val) {
                          if (val!.isEmpty) return 'Please Enter Area';
                        },
                        decoration: InputDecoration(
                          hintText: 'Area*',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r"[0-9]"),
                          )
                        ],
                        validator: (val) {
                          if (val!.isEmpty) return 'Please Enter Pincode';
                        },
                        decoration: InputDecoration(
                          hintText: 'Pincode*',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Fetch Location',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                // ElevatedButton(
                //     onPressed: () async{
                //   Position position = await _getGeoLocationPosition();
                //   location ='Lat: ${position.latitude} , Long: ${position.longitude}';
                //   GetAddressFromLatLong(position);
                // }, child: Text('Get Location')),
                InkWell(
                  onTap: () async{
                    Position position = await _getGeoLocationPosition();
                    location ='Lat: ${position.latitude} , Long: ${position.longitude}';
                    GetAddressFromLatLong(position);

                    // setState(() {
                    //   location1 =! location1;
                    // });
                    // if(location1 == true){
                    //
                    // }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade300),
                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('${Address}' ,style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),

                          ],
                        )),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Address Type*',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                TabBar(
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),

                  controller: _tab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  // isScrollable: true,
                  tabs: [
                    Flexible(
                      child: Container(
                        height: 48,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // color: Color(0xFF5859F3),
                          border: Border.all(
                            color: Colors.deepOrange,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home),
                              Text(
                                "Home",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(width: 10),
                    Flexible(
                      child: Container(
                        height: 48,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // color: Color(0xFF5859F3),
                          border: Border.all(
                            color: Colors.deepOrange,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.apartment),
                              Text(
                                "Work",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepOrange,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Center(
                        child: Text(
                          "Other",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: _isChecked,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val!;
                          });
                        }),
                    SizedBox(width: 5),
                    Text('Make this address as default')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 100,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.validate();
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text('Add Address'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

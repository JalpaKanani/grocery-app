import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vegapp/bottombar/profile/profile1.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
  'email',
  'https://www.googleapis.com/auth/contacts.readonly',
]);

class Profile extends StatefulWidget {
  static String routeName = '/profile';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   GoogleSignInAccount? _currentUser;
  late bool isLoading;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();

    isLoading = true;
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:_buildBody(),
    );
  }
  Widget _buildBody(){
    GoogleSignInAccount? user = _currentUser;
    if(user !=null){
      return ListView(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // CircleAvatar(
                        //   radius: 40,
                        //   child: ClipRRect(
                        //     child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSloI6gvxqVKZ0-aF3p7PEPgvQK6rDlX2YtA5o-tb0dKVENiFuzPS0mtC79IlOmNjHCBj0&usqp=CAU', fit: BoxFit.fitWidth,),
                        //     borderRadius: BorderRadius.circular(48.0),
                        //
                        //   ),
                        //   backgroundColor: Colors.transparent,
                        // ),
                        GoogleUserCircleAvatar(identity:user,backgroundColor: Colors.deepOrange,foregroundColor: Colors.deepOrange,),

                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(user.displayName ?? '',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20)),
                              Text(
                                user.email,
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 120),
                            child: CircleAvatar(
                              radius: 17,
                              child: Icon(
                                Icons.create_rounded,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  //thickness: -1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                ListTile(
                  // minLeadingWidth: 80,
                  leading: Icon(
                    Icons.shopping_bag,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'My Orders',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                ),
                Divider(
                  //thickness: -1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                ListTile(
                  // minLeadingWidth: 80,
                  leading: Icon(
                    Icons.location_pin,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'My Delivery Address',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                ),
                Divider(
                  //thickness: -1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                ListTile(
                  // minLeadingWidth: 80,
                  leading: Icon(
                    Icons.favorite_sharp,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'My Wishlist',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                ),
                Divider(
                  //thickness: -1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                ListTile(
                  // minLeadingWidth: 80,
                  leading: Icon(
                    Icons.shopping_bag,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Complaints',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                ),
                Divider(
                  //thickness: -1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                ListTile(
                  // minLeadingWidth: 80,
                  leading: Icon(
                    Icons.link,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Refer This App',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                ),
                Divider(
                  //thickness: -1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 180,
                ),
                InkWell(
                  onTap: signOut,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.keyboard_backspace,
                          size: 15,
                        ),
                        radius: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Log out',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    return ListView(
      children: [
        Container(
          width: double.infinity,
          child: Column(
            children: [

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //GoogleUserCircleAvatar(identity: user,backgroundColor: Colors.deepOrange,foregroundColor: Colors.deepOrange,),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(user?.displayName ?? '',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Text(
                              user!.email,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 120),
                          child: CircleAvatar(
                            radius: 17,
                            child: Icon(
                              Icons.create_rounded,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                indent: 25,
                endIndent: 25,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_bag,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'My Orders',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
              ),
              Divider(
                indent: 25,
                endIndent: 25,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(
                  Icons.location_pin,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'My Delivery Address',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
              ),
              Divider(
                indent: 25,
                endIndent: 25,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite_sharp,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'My Wishlist',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
              ),
              Divider(
                indent: 25,
                endIndent: 25,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_bag,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'Complaints',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
              ),
              Divider(
                indent: 25,
                endIndent: 25,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(
                  Icons.link,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'Refer This App',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
              ),
              Divider(
                //thickness: -1,
                indent: 25,
                endIndent: 25,
                color: Colors.black,
              ),
              SizedBox(
                height: 180,
              ),
              InkWell(
                onTap: signOut,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.keyboard_backspace,
                        size: 15,
                      ),
                      radius: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Log out',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );


  }

  void signOut(){
    _googleSignIn.disconnect();
  }

   Future<void> signin() async {
     try {
       await _googleSignIn.signIn();
     } catch (e) {
       print('error signin in $e');
     }
   }
}

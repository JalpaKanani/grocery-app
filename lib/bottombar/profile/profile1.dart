import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:vegapp/bottombar/cart.dart';
import 'package:vegapp/bottombar/profile/My_Delivery_Address.dart';
import 'package:vegapp/bottombar/profile/My_Order_Screen.dart';
import 'package:vegapp/bottombar/profile/profile.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vegapp/screen/see%20all/atta/Atta.dart';

// GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
//   'email',
//   'https://www.googleapis.com/auth/contacts.readonly',
// ]);

class Profile1Screen extends StatefulWidget {
  static String routeName = '/profile1screen';

  @override
  _Profile1ScreenState createState() => _Profile1ScreenState();
}

class _Profile1ScreenState extends State<Profile1Screen> {
 // GoogleSignInAccount? _currentUser;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
            if(snapshot.hasData){
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
                               CircleAvatar(
                                 backgroundImage: NetworkImage(snapshot.data!.photoURL.toString()),
                               ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data!.displayName.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 20)),
                                      Text(
                                        snapshot.data!.email.toString(),
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
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed(MyOrderScreen.routeName);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            ),
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
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed(MyDeliveryAddress.routeName);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            ),
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
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 35),
                        ),
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Colors.black,
                        ),
                        ListTile(
                          leading:  Icon(
                              Icons.shopping_bag,
                              color: Colors.deepOrange,
                            ),

                          title: Text(
                            'Complaints',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            ),
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
                            trailing: IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.black,
                              ),
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
                          onTap: ()async{
                            await _googleSignIn.signOut();
                            await FirebaseAuth.instance.signOut();
                          },
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
            if(snapshot.connectionState ==ConnectionState.waiting){
              return const CircularProgressIndicator();
            }
            return
              DraggableScrollableSheet(
                initialChildSize: 1,
                minChildSize: 0.5,
                maxChildSize: 1,
                builder: (BuildContext context, ScrollController scrollController) =>
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
                                    // Padding(
                                    //   padding: EdgeInsets.only(left: 370, top: 50),
                                    //   child: FlatButton(
                                    //     onPressed: () {
                                    //       // Navigator.of(context).pushNamed();
                                    //     },
                                    //     child: Icon(Icons.close),
                                    //   ),
                                    // ),
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
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                              onPressed: ()async{
                                                final newuser = await _googleSignIn.signIn();
                                                final googleauth = await newuser!.authentication;
                                                final creds = GoogleAuthProvider.credential(
                                                  accessToken: googleauth.accessToken,
                                                  idToken: googleauth.idToken,
                                                );
                                                await FirebaseAuth.instance.signInWithCredential(creds);
                                              },

                                              // onPressed: () {},
                                              text: "Sign up with Google",

                                            ),
                                            SizedBox(height: 40),
                                            Text(
                                              'By Signing you agreeing to our',
                                              style: TextStyle(color: Colors.grey.shade500),
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

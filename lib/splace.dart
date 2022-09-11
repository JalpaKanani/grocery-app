import 'package:flutter/material.dart';

import 'main.dart';

class Splace extends StatefulWidget {
  const Splace({Key? key}) : super(key: key);

  @override
  _SplaceState createState() => _SplaceState();
}

class _SplaceState extends State<Splace> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Image(
                // image: AssetImage('assets/image/splace1.jpg'),
                 image: NetworkImage('https://img.freepik.com/free-photo/coriander-branch-green-leaves-isolated-white-surface-top-view-flat-lay_313215-3642.jpg?size=626&ext=jpg'),
                ),
                Spacer(),
                Text(
                  '  GROCER APP',
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
                Text(
                  'THE ALL IN ONE FOOD SHOP',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.deepOrange),
                ),
                Spacer(),
                Image(
                  image: NetworkImage(
                      'https://img.freepik.com/free-photo/variety-fresh-vegetables-white-background_262193-458.jpg'
                   // 'https://media.istockphoto.com/photos/beautiful-flat-lay-composition-with-different-kinds-of-mixed-fresh-picture-id934043394?k=20&m=934043394&s=170667a&w=0&h=_HYdOceRmeCiNwAv6P9qi_YIPmYk6fXEv8S9pyz0c80='
                ),)
           // Image(image: AssetImage('assets/image/splace2.jpg')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

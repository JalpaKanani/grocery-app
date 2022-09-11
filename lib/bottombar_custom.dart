import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegapp/bottombar/cart.dart';



class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  Widget bottomNavigationBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
    final VoidCallback? onTap,
  }) {
    return Expanded(
        child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 75,
        padding: EdgeInsets.all(10),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 25,
              color: iconColor,
            ),
            SizedBox(width: 5),
            Text(
              title,
              style: TextStyle(color: color, fontSize: 15),
            ),
          ],
        ),
      ),
    ));
  }

  bool wishList = false;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Row(
          children: [
            bottomNavigationBar(
                backgroundColor: Colors.black,
                color: Colors.white,
                iconColor: Colors.white,
                title: wishList == false ? 'Add To WiseList' : 'Remove',
                iconData:
                    wishList == false ? Icons.favorite_outline : Icons.favorite,
                onTap: () {
                  setState(() {
                    wishList = !wishList;
                  });
                  if(wishList == true){

                  }
                }),
            bottomNavigationBar(
                backgroundColor: Colors.deepOrange,
                color: Colors.white,
                iconColor: Colors.white,
                title: 'My Cart',
                iconData: Icons.shopping_cart,
                onTap: () {
                  //  Navigator.of(context).pushNamed(AddCart.routeName);
                  Navigator.of(context).pushNamed(Cart.routeName);
                }),
          ],
        ),
      ),
    );
  }
}

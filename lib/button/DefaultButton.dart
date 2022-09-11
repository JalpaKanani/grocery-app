import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  // DefaultButton({required this.text,required this.press,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,

      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            primary: Colors.white,
            backgroundColor:Color(0xFF5859F3)
        ),


        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize:17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

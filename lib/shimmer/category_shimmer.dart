import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Category_shimmer extends StatefulWidget {
  const Category_shimmer({Key? key}) : super(key: key);

  @override
  _Category_shimmerState createState() => _Category_shimmerState();
}

class _Category_shimmerState extends State<Category_shimmer> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: (1.5 / 1.8),
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            crossAxisCount: 3),
        itemCount: 9,
        itemBuilder: (BuildContext context, int item) {
          return Card(
            elevation: 5,
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade400,
              highlightColor: Colors.grey.shade200,
              child: Column(
                children: [
                  Skelton(height: 110, width: 100),
                  SizedBox(height: 15),
                  Skelton(height: 20, width: 60),
                ],
              ),
            ),
          );
        });
  }
}

class Skelton extends StatelessWidget {
  const Skelton({Key? key, this.height, this.width}) : super(key: key);
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          //   borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}

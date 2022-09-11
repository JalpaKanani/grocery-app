import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class VegCartShimmer extends StatelessWidget {
  const VegCartShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6, right: 6, top: 1),
      child: Card(
        elevation: 6,
        child: Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          baseColor: Colors.grey.shade400,
          highlightColor: Colors.grey.shade300,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Skelton(
                  height: 60,
                  width: 60,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Skelton(width: 150),
                    Skelton(width: 120),
                    Skelton(width: 90),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10),
                child: Skelton1(height: 25,width: 100,),
              ),
            ],
          ),
        ),
      ),
    );
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

class Skelton1 extends StatelessWidget {
  const Skelton1({Key? key, this.height, this.width}) : super(key: key);
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
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}


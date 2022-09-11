import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PageShimmer extends StatelessWidget {
  const PageShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Shimmer.fromColors(
          direction: ShimmerDirection.ltr,
          baseColor: Colors.grey.shade200,
          highlightColor: Colors.grey.shade400,
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Container(
                    child: Skelton(
                      height: 200,
                      width: 400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Skelton(width: 150, height: 30),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                child: Card(
                  elevation: 6,
                  //color: Colors.orange,
                  child: Shimmer.fromColors(
                    direction: ShimmerDirection.ltr,
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade200,
                    child: Row(
                      children: [
                        SizedBox(width: 5),
                        CircleAvatar(radius: 4, child: Skelton()),
                        SizedBox(width: 10),
                        Container(child: Skelton(height: 20, width: 80)),
                        SizedBox(width: 130),
                        Container(child: Skelton(height: 20, width: 40)),
                        SizedBox(width: 10),
                        Skelton(height: 25,width: 80),
                        // Container(child: Skelton(height: 20, width: 80)),
                      ],
                    ),
                  ),


                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Shimmer.fromColors(
                direction: ShimmerDirection.ltr,
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Skelton(width: 150, height: 30),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(child: Skelton(height: 90,width: double.infinity)),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ],
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

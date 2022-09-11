import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmerScreen extends StatelessWidget {
  const HomeShimmerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer.fromColors(
          //direction: ShimmerDirection.ltr,
          baseColor: Colors.grey.shade400,
          highlightColor: Colors.grey.shade200,
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Skelton(width: 500, height: 200),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Skelton(width: 120, height: 25),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: 120,
              // width: 75,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Card(
                    child: Column(
                  children: [
                    Container(
                      height: 75,
                      width: 90,
                      child: Shimmer.fromColors(
                       // direction: ShimmerDirection.ltr,
                        baseColor: Colors.grey.shade400,
                        highlightColor: Colors.grey.shade200,
                        child: Skelton(
                          width: 10,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Atta',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )),
              ),
            ),
            Container(
              height: 120,
              // width: 75,
              width: 100,
              child: Card(
                  child: Column(
                children: [
                  Container(
                    height: 75,
                    width: 90,
                    child: Shimmer.fromColors(
                    //  direction: ShimmerDirection.ltr,
                      baseColor: Colors.grey.shade400,
                      highlightColor: Colors.grey.shade200,
                      child: Skelton(
                        width: 10,
                        height: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Flower',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              )),
            ),
            Container(
              height: 120,
              // width: 75,
              width: 100,
              child: Card(
                  child: Column(
                children: [
                  Container(
                    height: 75,
                    width: 90,
                    child: Shimmer.fromColors(
                      //direction: ShimmerDirection.ltr,
                      baseColor: Colors.grey.shade400,
                      highlightColor: Colors.grey.shade200,
                      child: Skelton(
                        width: 10,
                        height: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Root Vegies',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              )),
            ),
            Container(
              height: 120,
              // width: 75,
              width: 100,
              child: Card(
                  child: Column(
                children: [
                  Container(
                    height: 75,
                    width: 90,
                    child: Shimmer.fromColors(
                    //  direction: ShimmerDirection.ltr,
                      baseColor: Colors.grey.shade400,
                      highlightColor: Colors.grey.shade200,
                      child: Skelton(
                        width: 10,
                        height: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Seasoning',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              )),
            ),
            // Container(
            //   height: 120,
            //   // width: 75,
            //   width: 100,
            //   child: Card(
            //       child: Column(
            //     children: [
            //       Container(
            //         height: 75,
            //         width: 90,
            //         child: Shimmer.fromColors(
            //         //  direction: ShimmerDirection.ltr,
            //           baseColor: Colors.grey.shade400,
            //           highlightColor: Colors.grey.shade200,
            //           child: Skelton(
            //             width: 10,
            //             height: 20,
            //           ),
            //         ),
            //       ),
            //       SizedBox(height: 10),
            //       Text(
            //         'Pules',
            //         style: TextStyle(
            //           color: Colors.grey,
            //         ),
            //       ),
            //     ],
            //   )),
            // ),
          ],
        ),
        SizedBox(height: 10),
        Shimmer.fromColors(
          //direction: ShimmerDirection.ltr,
          baseColor: Colors.grey.shade400,
          highlightColor: Colors.grey.shade200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Skelton(width: 120, height: 25),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Skelton(width: 50, height: 15),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 200,
              width: 160,
              child: Card(
                elevation: 6,
                  child: Column(
                children: [
                  Shimmer.fromColors(
                  //  direction: ShimmerDirection.ltr,
                    baseColor: Colors.grey.shade400,
                    highlightColor: Colors.grey.shade200,
                    child: Column(
                      children: [
                        Skelton(height: 90,width: 150,),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Skelton(height: 20,width: 100,),
                                Skelton(height: 20,width: 100,),
                              ],
                            ),
                          ],
                        ),
                        Skelton(height: 25,width: 100,),
                      ],
                    ),
                  ),
                ],
              )),
            ),
            Container(
              height: 200,
              width: 160,
              child: Card(
                  elevation: 6,
                  child: Column(
                    children: [
                      Shimmer.fromColors(
                       // direction: ShimmerDirection.ltr,
                        baseColor: Colors.grey.shade400,
                        highlightColor: Colors.grey.shade200,
                        child: Column(
                          children: [
                            Skelton(height: 90,width: 150,),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Skelton(height: 20,width: 100,),
                                    Skelton(height: 20,width: 100,),
                                  ],
                                ),
                              ],
                            ),
                            Skelton(height: 25,width: 100,),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              height: 200,
              width: 110,
              child: Card(
                  elevation: 6,
                  child: Column(
                    children: [
                      Shimmer.fromColors(
                      // direction: ShimmerDirection.ltr,
                        baseColor: Colors.grey.shade400,
                        highlightColor: Colors.grey.shade200,
                        child: Column(
                          children: [
                            Skelton(height: 90,width: 150,),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Skelton(height: 20,width: 80,),
                                    Skelton(height: 20,width: 80,),
                                  ],
                                ),
                              ],
                            ),
                            Skelton(height: 25,width: 90,),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
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

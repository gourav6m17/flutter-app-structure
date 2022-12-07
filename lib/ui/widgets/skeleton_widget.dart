import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import '../../constant/const.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: shimmer(30.h, width),
            ),
            SizedBox(
              height: 4.h,
            ),
            shimmerPost(),
            SizedBox(
              height: 4.h,
            ),
            shimmerPost(),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: shimmer(30.h, width),
            ),
            SizedBox(
              height: 4.h,
            ),
            shimmerPost(),
            SizedBox(
              height: 4.h,
            ),
          ],
        ),
      )
          // ListView.builder(
          //     physics: const BouncingScrollPhysics(),
          //     itemCount: 10,
          //     shrinkWrap: true,
          //     itemBuilder: (context, index) {
          //       return Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Shimmer.fromColors(
          //           baseColor: Colors.grey.withOpacity(0.5),
          //           highlightColor: kWhiteColor,
          //           child: Container(
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 color: Colors.black),
          //             height: height * 0.15,
          //             width: width,
          //           ),
          //         ),
          //       );
          //     }),
          ),
    );
  }

  Padding shimmerPost() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          shimmer(15.h, 30.w),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                shimmer(1.h, 15.w),
                SizedBox(
                  height: 2.h,
                ),
                shimmer(1.h, 30.w),
                SizedBox(
                  height: 2.h,
                ),
                shimmer(1.h, 45.w),
                SizedBox(
                  height: 2.h,
                ),
                shimmer(1.h, 60.w),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Shimmer shimmer(height, width) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.withOpacity(0.5),
      highlightColor: kWhiteColor,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.black),
        height: height,
        width: width,
      ),
    );
  }
}

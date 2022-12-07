import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import '../../constant/const.dart';

class SkeletonHomeScreen extends StatelessWidget {
  const SkeletonHomeScreen({
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
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: shimmer(5.h, width),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: shimmer(25.h, width),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: shimmer(25.h, width),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: shimmer(2.h, width),
            ),
            SizedBox(
              height: 3.h,
            ),
            shimmerPost(context),
            SizedBox(
              height: 4.h,
            ),
            shimmerPost(context),
            SizedBox(
              height: 2.h,
            ),
            shimmerPost(context),
            SizedBox(
              height: 2.h,
            ),
            shimmerPost(context),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      )),
    );
  }

  Padding shimmerPost(context) {
    double widthV = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding:const EdgeInsets.all(8),
            child: Column(
              children: [
                shimmer(15.h, width),
                SizedBox(
                  height: 1.h,
                ),
                shimmer(1.h, widthV / 1.2),
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                shimmer(15.h, width),
                SizedBox(
                  height: 1.h,
                ),
                shimmer(1.h, widthV / 1.2),
              ],
            ),
          )),
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

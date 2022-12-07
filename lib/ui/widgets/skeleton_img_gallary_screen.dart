import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import '../../constant/const.dart';

class SkeletonGallaryImageScreen extends StatelessWidget {
  const SkeletonGallaryImageScreen({
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
        padding: EdgeInsets.all(1.5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            shimmerPost(context),
            SizedBox(
              height: 1.5.h,
            ),
            shimmerPost(context),
            SizedBox(
              height: 1.5.h,
            ),
            shimmerPost(context),
            SizedBox(
              height: 1.5.h,
            ),
            shimmerPost(context),
            SizedBox(
              height: 1.5.h,
            ),
            shimmerPost(context),
            SizedBox(
              height: 1.5.h,
            ),
            shimmerPost(context),
            SizedBox(
              height: 1.5.h,
            ),
          ],
        ),
      )),
    );
  }

  shimmerPost(context) {
    double widthV = MediaQuery.of(context).size.width;
    double heightV = MediaQuery.of(context).size.height;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
          children: [
            shimmer(widthV / 2.5, width),
          ],
        )),
        SizedBox(
          width: 1.5.h,
        ),
        Expanded(
            child: Column(
          children: [
            shimmer(widthV / 2.5, width),
          ],
        )),
      ],
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

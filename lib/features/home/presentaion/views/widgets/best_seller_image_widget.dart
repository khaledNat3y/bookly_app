import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerImageWidget extends StatelessWidget {
  const BestSellerImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      child: AspectRatio(
        aspectRatio: 1/1.5,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.white,
              image: const DecorationImage(
                image: AssetImage("assets/images/book.png"),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}

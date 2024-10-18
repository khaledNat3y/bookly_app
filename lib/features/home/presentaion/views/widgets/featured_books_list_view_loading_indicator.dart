import 'package:bookly_app/core/widgets/custom_fading_widget.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.23,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: const CustomBookImageLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}

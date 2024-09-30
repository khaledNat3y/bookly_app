import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const BookDetailsAppBar(),
            verticalSpace(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.27),
              child: const FeaturedListViewItem(),
            ),
          ],
        ),
      ),
    );
  }
}



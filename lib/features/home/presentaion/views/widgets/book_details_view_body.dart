import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/app_theme.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_details_app_bar.dart';
import 'books_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BookDetailsAppBar(),
            verticalSpace(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.27),
              child: const FeaturedListViewItem(),
            ),
            verticalSpace(45),
            Text(
              "The Jungle Book",
              style: AppTheme.font24WhiteRegular
                  .copyWith(fontFamily: "GT Sectra Fine"),
            ),
            verticalSpace(7),
            Text("Rudyard Kipling",
                style: AppTheme.font18GreyMedium
                    .copyWith(fontStyle: FontStyle.italic)),
            verticalSpace(16),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            verticalSpace(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 38.w),
              child: const BooksAction(),
            )
          ],
        ),
      ),
    );
  }
}



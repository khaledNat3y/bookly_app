import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_theme.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'featured_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.31),
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
        ),
      ],
    );
  }
}

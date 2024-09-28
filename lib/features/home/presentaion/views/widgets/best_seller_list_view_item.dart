import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/app_theme.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_image_widget.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          const BestSellerImageWidget(),
          horizontalSpace(15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.53,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.font18WhiteBold,
                  ),
                ),
                verticalSpace(5),
                Text(
                  "J.K. Rowling",
                  style: AppTheme.font14LightGreyRegular,
                ),
                verticalSpace(5),
                Row(
                  children: [
                    Text(
                      "19.99 \$",
                      style: AppTheme.font18WhiteBold,
                    ),
                    horizontalSpace(36.3),
                    const BookRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}




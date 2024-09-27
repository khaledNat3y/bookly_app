import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 40.h, bottom: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          verticalSpace(30),
          const FeaturedBooksListView(),
          verticalSpace(20),
          Text("Best Seller", style: AppTheme.font18WhiteBold,),
          verticalSpace(16),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}





import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const CustomAppBar(),
              ),
              verticalSpace(30),
              const FeaturedBooksListView(),
              verticalSpace(20),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Text(
                  "Best Seller",
                  style: AppTheme.font18WhiteBold,
                ),
              ),
              // verticalSpace(20),
            ],
          ),
        )),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: const BestSellerListView(),
          ),
        )
      ],
    );
  }
}

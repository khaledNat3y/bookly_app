import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/app_colors.dart';
import 'package:bookly_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
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
          ),
          horizontalSpace(15),
          Column(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "19.99 \$",
                    style: AppTheme.font18WhiteBold,
                  ),
                  // horizontalSpace(50),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      horizontalSpace(5),
                      Text(
                        "4.9",
                        style: AppTheme.font18WhiteBold,
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

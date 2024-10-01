import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_theme.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
              backgroundColor: AppColors.white,
              text: "19.99\$",
              textColor: AppColors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r)),
            )),
        // horizontalSpace(0.2.w),
        Expanded(
            child: CustomButton(
              backgroundColor: AppColors.buttonColor,
              text: "Free Preview",
              textStyle: AppTheme.font16WhiteMedium,
              textColor: AppColors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r)),
            )),
      ],
    );
  }
}
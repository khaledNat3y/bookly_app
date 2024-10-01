import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_theme.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final TextStyle? textStyle;

  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      this.borderRadius,this.textStyle,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12.r),
            )),
        child: Text(
          text,
          style: textStyle ?? AppTheme.font18BlackExtraBold
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_theme.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({super.key,this.mainAxisAlignment = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        SvgPicture.asset("assets/svgs/Star.svg"),
        horizontalSpace(6.3),
        Text(
          "4.9",
          style: AppTheme.font18WhiteBold,
        ),
        horizontalSpace(5),
        Text(
          "(120)",
          style: AppTheme.font14LightGreyRegular,
        ),

      ],
    );
  }
}

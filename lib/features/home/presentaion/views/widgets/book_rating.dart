import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_theme.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: AppColors.yellow,),
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

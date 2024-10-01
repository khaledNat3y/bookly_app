import 'package:bookly_app/features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_theme.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 18.w),
          child: Text("You can also like", style: AppTheme.font14WhiteBold, textAlign: TextAlign.start,),
        ),
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.only(left: 18.w),
          child: const SimilarBookListView(),
        ),
      ],
    );
  }
}

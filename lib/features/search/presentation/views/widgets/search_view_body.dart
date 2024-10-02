import 'package:bookly_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../home/presentaion/views/widgets/book_list_view_item.dart';
import '../../../../home/presentaion/views/widgets/custom_search_text_field.dart';
import '../../../../home/presentaion/views/widgets/search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          verticalSpace(15),
          Text("Search Result", style: AppTheme.font18WhiteBold,),
          verticalSpace(5),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}


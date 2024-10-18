import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'featured_list_view_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: const CustomBookImage(),
          );
        },
      ),
    );
  }
}
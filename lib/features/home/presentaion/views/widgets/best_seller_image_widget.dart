import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';

class BestSellerImageWidget extends StatelessWidget {
  final String? image;
  const BestSellerImageWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      child: AspectRatio(
        aspectRatio: 1/1.5,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.white,
          ),
          child: CachedNetworkImage(
            imageUrl: image ?? '',
            fit: BoxFit.fill,
            placeholder: (context, url) => const CircularProgressIndicator(color: AppColors.white,),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}

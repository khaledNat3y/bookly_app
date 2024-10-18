import 'package:bookly_app/core/theming/app_colors.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String? image;
  const CustomBookImage({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: image ?? "",
          placeholder: (context, url) => const CircularProgressIndicator(color: AppColors.white,),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

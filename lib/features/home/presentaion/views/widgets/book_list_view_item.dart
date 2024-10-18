import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/theming/app_theme.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_image_widget.dart';

class BookListViewItem extends StatelessWidget {
  final BookEntity? book;

  const BookListViewItem({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routes.bookDetailsScreen);
      },
      child: SizedBox(
        height: 125.h,
        child: Row(
          children: [
            BestSellerImageWidget(
              image: book?.image,
            ),
            horizontalSpace(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.53,
                    child: Text(
                      book!.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.font18WhiteBold,
                    ),
                  ),
                  verticalSpace(5),
                  Text(
                    book!.authorName ?? "Unknown Author",
                    style: AppTheme.font14LightGreyRegular,
                  ),
                  verticalSpace(5),
                  Row(
                    children: [
                      Text(
                        "${book!.price}\$",
                        style: AppTheme.font18WhiteBold,
                      ),
                      horizontalSpace(36.3),
                      const BookRating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

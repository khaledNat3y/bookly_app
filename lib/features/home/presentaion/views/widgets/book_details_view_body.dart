import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'book_details_app_bar.dart';
import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const BookDetailsAppBar(),
                  verticalSpace(10),
                  const BookDetailsSection(),
                  Expanded(child: verticalSpace(20)),
                  const SimilarBooksSection(),
                  verticalSpace(20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

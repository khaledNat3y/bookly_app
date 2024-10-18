import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  final List<BookEntity> books;
  const BestSellerListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(book: books[index],),
        );
      },
    );
  }
}
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  final List<BookEntity> books;
  const SearchResultListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(book: books[index],),
        );
      },
    );
  }
}

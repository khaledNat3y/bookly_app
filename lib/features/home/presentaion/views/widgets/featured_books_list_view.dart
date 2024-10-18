import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentaion/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'featured_list_view_item.dart';

class FeaturedBooksListView extends StatefulWidget {
  final List<BookEntity> books;

  const FeaturedBooksListView({super.key, required this.books});

  @override
  State<StatefulWidget> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  late ScrollController _scrollController;
  var nextPage = 1;

  var isLoading = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async{
    if (_scrollController.position.maxScrollExtent > 0) {
      // Get the current scroll position
      double currentScrollPosition = _scrollController.position.pixels;

      // Get the total scrollable extent
      double maxScrollExtent = _scrollController.position.maxScrollExtent;
      // Check if we have scrolled beyond 70% of the total extent
      if (currentScrollPosition >= 0.7 * maxScrollExtent) {
        if(!isLoading) {
          isLoading = true;
          await BlocProvider.of<FeaturedBooksCubit>(context)
              .fetchFeaturedBooks(pageNumber: nextPage++);
          isLoading = false;
        }
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.23,
      child: ListView.builder(
        controller: _scrollController, // Attach ScrollController
        scrollDirection: Axis.horizontal,
        itemCount: widget.books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: CustomBookImage(
              image: widget.books[index].image ?? "",
            ),
          );
        },
      ),
    );
  }
}

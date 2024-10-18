import 'package:another_flushbar/flushbar.dart';
import 'package:bookly_app/core/theming/app_theme.dart';
import 'package:bookly_app/features/home/presentaion/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/featured_books_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../domain/entities/book_entity.dart';
import 'featured_books_list_view.dart';

class FeaturedBooksListViewBlocConsumer extends StatefulWidget {
  const FeaturedBooksListViewBlocConsumer({
    super.key,
  });

  @override
  State<FeaturedBooksListViewBlocConsumer> createState() =>
      _FeaturedBooksListViewBlocConsumerState();
}

class _FeaturedBooksListViewBlocConsumerState
    extends State<FeaturedBooksListViewBlocConsumer> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if(state is FeaturedBooksPaginationFailure) {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   ///Method to build SnackBar
          //   buildSnackBar(state),
          // );
          // buildFlushBarShow(context);
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPaginationLoading ||
            state is FeaturedBooksPaginationFailure) {
          return FeaturedBooksListView(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(
            child: Text(state.failureMessage),
          );
        } else {
          return const FeaturedBooksListViewLoadingIndicator();
        }
      },
    );
  }

  Future<dynamic> buildFlushBarShow(BuildContext context) {
    return Flushbar(
          margin: const EdgeInsets.all(8),
          borderRadius: BorderRadius.circular(8),
          backgroundColor: AppColors.errorColor,
          flushbarPosition: FlushbarPosition.TOP, // Display from the top
          icon: const Icon(
            Icons.sms_failed,
            color: Colors.white,
          ),
          title: 'Failed',
          message: 'This is a pagination error message',
          duration: const Duration(seconds: 3),
        ).show(context);
  }

}

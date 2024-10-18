import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/book_entity.dart';
import '../../view_models/newest_books_cubit/newest_books_cubit.dart';
import 'best_seller_list_view.dart';

class BestSellerListViewBlocBuilder extends StatelessWidget {
  const BestSellerListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess) {
          return SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: BestSellerListView(books: state.books,),
            ),
          );
        }else if(state is NewestBooksFailure) {
          return SliverFillRemaining(
            child: Center(
              child: Text(state.message),
            ),
          );
        }else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

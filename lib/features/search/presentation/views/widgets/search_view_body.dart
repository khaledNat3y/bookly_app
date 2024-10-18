import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/search/presentation/view_model/search_cubit.dart';

import '../../../../../core/theming/app_colors.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(30),
        TextField(
          onChanged: (query) {
            context.read<SearchCubit>().search(query);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            enabled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.errorColor),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            hintText: "Search for books...",
            prefixIcon: Icon(Icons.search),
          ),
        ),
        Expanded(
          child: BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is SearchError) {
                return const Center(
                    child: Text("Error fetching search results"));
              } else if (state is SearchSuccess) {
                if (state.books.isEmpty) {
                  return const Center(child: Text("No books found"));
                }
                return ListView.builder(
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    final book = state.books[index];
                    return BookListViewItem(
                      book: book,
                    );
                  },
                );
              }
              return const Center(child: Text("Start searching..."));
            },
          ),
        ),
      ],
    );
  }
}

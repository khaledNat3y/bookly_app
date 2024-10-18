import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';

import '../../data/repos/search_repository.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepository _searchRepository;

  SearchCubit(this._searchRepository) : super(SearchInitial());

  void search(String query) async {
    if (query.isEmpty) {
      emit(SearchInitial());
      return;
    }

    try {
      emit(SearchLoading());
      final books = await _searchRepository.searchBooks(query);
      emit(SearchSuccess(books));
    } catch (e) {
      emit(SearchError());
    }
  }
}

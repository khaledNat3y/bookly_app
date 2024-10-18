import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../../core/networking/errors_handler.dart';
import '../../../domain/entities/book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(FeaturedBooksInitial());

  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    emit(FeaturedBooksPaginationFailure("failure"));

    if(pageNumber == 0){
      emit(FeaturedBooksLoading());
    }else {
      emit(FeaturedBooksPaginationLoading());
    }
    Either<Failure, List<BookEntity>> result =
        await fetchFeaturedBooksUseCase.call(pageNumber);
    result.fold((failure) {
      if(pageNumber == 0){
        emit(FeaturedBooksFailure(failure.message));
      }else {
        emit(FeaturedBooksPaginationFailure(failure.message));
      }
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}


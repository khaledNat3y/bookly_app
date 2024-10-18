import 'package:bookly_app/core/networking/errors_handler.dart';
import 'package:bookly_app/features/home/data/repos/data_sources/home_local_data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/repos/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber = 0}) async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      if (books.isNotEmpty) {
        return Right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      return Right(books);
    }on Exception catch(error) {
      if(error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      }
      return left(ServerFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async{
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return Right(books);
    }on Exception catch(error) {
      if(error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      }
      return left(ServerFailure(error.toString()));
    }
  }
}

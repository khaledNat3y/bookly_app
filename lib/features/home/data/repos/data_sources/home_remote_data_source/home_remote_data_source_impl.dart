import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

import 'home_remote_data_source.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    throw "";
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    throw "";
  }
}

import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/functions/get_book_list.dart';
import '../../../../../../core/utils/functions/save_to_hive.dart';
import '../../../models/book_model.dart';
import 'home_remote_data_source.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var response =
        await apiService.get(endpoint: dotenv.env['FREE_BOOKS_END_POINT']!);
    List<BookEntity> books = getBooksList(response);
    saveToHive(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async{
    var response =
        await apiService.get(endpoint: dotenv.env['FREE_NEWEST_BOOKS_END_POINT']!);
    List<BookEntity> books = getBooksList(response);
    saveToHive(books, kNewestBox);
    return books;
  }

}

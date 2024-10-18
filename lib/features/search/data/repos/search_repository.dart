import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

import '../../../../core/networking/api_service.dart';

class SearchRepository {
  final ApiService _apiService;

  SearchRepository(this._apiService);

  Future<List<BookModel>> searchBooks(String query) async {
    final data = await _apiService.get(endpoint: "/search?query=$query");
    return (data['items'] as List)
        .map((bookData) => BookModel.fromJson(bookData))
        .toList();
  }
}

import '../../../features/home/data/models/book_model.dart';
import '../../../features/home/domain/entities/book_entity.dart';

List<BookEntity> getBooksList(Map<String, dynamic> response) {
  List<BookEntity> books = [];
  for (var item in response['items']) {
    books.add(BookModel.fromJson(item));
  }
  return books;
}
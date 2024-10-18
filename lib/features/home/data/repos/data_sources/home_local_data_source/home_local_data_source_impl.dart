import 'package:bookly_app/features/home/data/repos/data_sources/home_local_data_source/home_local_data_source.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

import '../../../../../../core/utils/constants.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kFeaturedBox);
    int length = box.values.length;
    if(startIndex >= length){
      return [];
    }else if(endIndex >= length){
      return box.values.toList().getRange(startIndex, length).toList();
    }else{
      return box.values.toList().getRange(startIndex, endIndex).toList();
    }
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }

}
import 'package:bookly_app/features/home/data/models/sale_info.dart';
import 'package:bookly_app/features/home/data/models/search_info.dart';
import 'package:bookly_app/features/home/data/models/volume_info.dart';

import '../../domain/entities/book_entity.dart';
import 'access_info.dart';
class BookModel extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
      bookId: id!,
      image: volumeInfo?.imageLinks?.thumbnail ?? '',
      authorName: volumeInfo?.authors?.first ?? 'No Name',
      price: 0.0,
      rating: volumeInfo!.maturityRating ?? 'No Rating',
      title: volumeInfo.title!);

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
    kind: json['kind'] as String?,
    id: json['id'] as String?,
    etag: json['etag'] as String?,
    selfLink: json['selfLink'] as String?,
    volumeInfo: json['volumeInfo'] == null
        ? null
        : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
    saleInfo: json['saleInfo'] == null
        ? null
        : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
    accessInfo: json['accessInfo'] == null
        ? null
        : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
    searchInfo: json['searchInfo'] == null
        ? null
        : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'kind': kind,
    'id': id,
    'etag': etag,
    'selfLink': selfLink,
    'volumeInfo': volumeInfo?.toJson(),
    'saleInfo': saleInfo?.toJson(),
    'accessInfo': accessInfo?.toJson(),
    'searchInfo': searchInfo?.toJson(),
  };
}

// class BookMapper {
//   // Convert BookModel to BookEntity
//   static BookEntity modelToEntity(BookModel model) {
//     return BookEntity(
//       image: model.volumeInfo?.imageLinks?.thumbnail ?? '',
//       title: model.volumeInfo?.title ?? 'Unknown Title',
//       authorName: model.volumeInfo?.authors?.join(', ') ?? 'Unknown Author',
//       price: model.saleInfo?.isEbook == true ? 10.0 : 0.0, // Example price logic
//       rating: model.volumeInfo?.maturityRating ?? 'Not Rated',
//     );
//   }
//
//   // Convert BookEntity to BookModel (if needed)
//   static BookModel entityToModel(BookEntity entity) {
//     return BookModel(
//       volumeInfo: VolumeInfo(
//         title: entity.title,
//         authors: [entity.authorName],
//         imageLinks: ImageLinks(thumbnail: entity.image),
//         maturityRating: entity.rating,
//       ),
//       saleInfo: SaleInfo(isEbook: entity.price > 0),
//     );
//   }
// }

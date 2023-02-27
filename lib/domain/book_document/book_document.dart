import 'package:freezed_annotation/freezed_annotation.dart';
part 'book_document.freezed.dart';
part 'book_document.g.dart';

@freezed
class BookDocument with _$BookDocument {
  const factory BookDocument({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String bookStatus,
  }) = _BookDocument;

  factory BookDocument.fromJson(Map<String, dynamic> json) =>
      _$BookDocumentFromJson(json);
}

abstract class IBookDocumentRepository {}

import 'package:freezed_annotation/freezed_annotation.dart';
import '/domain/book_document/book_document.dart';
part 'library_document.freezed.dart';
part 'library_document.g.dart';

@freezed
class LibraryDocument with _$LibraryDocument {
  const factory LibraryDocument({
    @Default('') String name,
    @Default('') String description,
    @Default([]) List<BookDocument> bookList,
  }) = _LibraryDocument;

  factory LibraryDocument.fromJson(Map<String, dynamic> json) =>
      _$LibraryDocumentFromJson(json);
}

abstract class ILibraryDocumentRepository {}

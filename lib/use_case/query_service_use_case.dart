import '/domain/book_document/book_document.dart';
import '/domain/library_document/library_document.dart';

class QueryServiceUseCase {
  QueryServiceUseCase({required this.queryService});
  final IQueryService queryService;

  Stream<List<BookDocument>> fetchAllBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    return queryService.fetchAllBookByLibrary(libraryDocument: libraryDocument);
  }
}

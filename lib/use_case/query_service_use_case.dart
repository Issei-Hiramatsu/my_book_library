import '/domain/book_document/book_document.dart';
import '/domain/library_document/library_document.dart';

class QueryServiceUseCase {
  QueryServiceUseCase({required this.queryService});
  final IQueryService queryService;

  Stream<List<BookDocument>> fetchAllBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    return queryService.fetchAllBookByLibrary(libraryDocument: libraryDocument);
  }

  Stream<List<BookDocument>> fetchAvailableBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    return queryService.fetchAvailableBookByLibrary(
        libraryDocument: libraryDocument);
  }

  Stream<List<BookDocument>> fetchOnLoanBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    return queryService.fetchOnLoanBookByLibrary(
        libraryDocument: libraryDocument);
  }

  Stream<List<BookDocument>> fetchOverdueBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    return queryService.fetchOverdueBookByLibrary(
        libraryDocument: libraryDocument);
  }

  Stream<List<BookDocument>> fetchOtherBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    return queryService.fetchOtherBookByLibrary(
        libraryDocument: libraryDocument);
  }
}

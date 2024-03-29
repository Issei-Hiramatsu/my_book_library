import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/domain/library_document/library_document.dart';
import '/infrastructure/query_service_repository.dart';
import '/use_case/query_service_use_case.dart';

final fetchAllBookByLibrary = StreamProvider.family((
  ref,
  LibraryDocument libraryDocument,
) {
  return QueryServiceUseCase(
          queryService: QueryServiceRepositoryWhichUseFirebase())
      .fetchAllBookByLibrary(libraryDocument: libraryDocument);
});

final fetchAvailableBookByLibrary = StreamProvider.family((
  ref,
  LibraryDocument libraryDocument,
) {
  return QueryServiceUseCase(
          queryService: QueryServiceRepositoryWhichUseFirebase())
      .fetchAvailableBookByLibrary(libraryDocument: libraryDocument);
});

final fetchOnLoanBookByLibrary = StreamProvider.family((
  ref,
  LibraryDocument libraryDocument,
) {
  return QueryServiceUseCase(
          queryService: QueryServiceRepositoryWhichUseFirebase())
      .fetchOnLoanBookByLibrary(libraryDocument: libraryDocument);
});

final fetchOverdueBookByLibrary = StreamProvider.family((
  ref,
  LibraryDocument libraryDocument,
) {
  return QueryServiceUseCase(
          queryService: QueryServiceRepositoryWhichUseFirebase())
      .fetchOverdueBookByLibrary(libraryDocument: libraryDocument);
});

final fetchOtherBookByLibrary = StreamProvider.family((
  ref,
  LibraryDocument libraryDocument,
) {
  return QueryServiceUseCase(
          queryService: QueryServiceRepositoryWhichUseFirebase())
      .fetchOtherBookByLibrary(libraryDocument: libraryDocument);
});

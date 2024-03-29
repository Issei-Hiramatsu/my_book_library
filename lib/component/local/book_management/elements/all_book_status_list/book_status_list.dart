import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/book_document/book_document.dart';
import '/domain/library_document/library_document.dart';
import 'elements/book_document_tile/book_document_tile.dart';

class BookListForEachStatus extends ConsumerWidget {
  const BookListForEachStatus({
    Key? key,
    required this.fetchBookListByLibrary,
    required this.libraryDocument,
  }) : super(key: key);
  final LibraryDocument libraryDocument;
  final StreamProviderFamily<List<BookDocument>, LibraryDocument>
      fetchBookListByLibrary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchBookListByLibrary(libraryDocument)).when(
          data: (dataList) => ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                final book = dataList[index];
                return BookDocumentTile(book: book);
              }),
          error: (error, _) => const Icon(Icons.error),
          loading: () => const CircularProgressIndicator(),
        );
  }
}

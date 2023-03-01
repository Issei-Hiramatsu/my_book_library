import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/domain/library_document/library_document.dart';
import '../../../../shared/token/riverpods/riverpods.dart';
import '../book_document_tile/book_document_tile.dart';

class AllBookList extends ConsumerWidget {
  const AllBookList({Key? key, required this.libraryDocument})
      : super(key: key);
  final LibraryDocument libraryDocument;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchAllBookByLibrary(libraryDocument)).when(
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_book_library/component/local/book_management/elements/all_book_status_list/hooks/all_book_list.dart';

import '../book_document_tile/book_document_tile.dart';

class AllBookList extends ConsumerWidget {
  const AllBookList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: allBookList.length,
        itemBuilder: (context, index) {
          final book = allBookList[index];
          return BookDocumentTile(book: book);
        });
  }
}

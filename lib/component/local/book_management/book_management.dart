import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_book_library/importer.dart';

import '../../../domain/library_document/library_document.dart';
import '../../shared/single/custom_tab/custom_tab.dart';
import 'elements/book_status_editor/book_status_editor.dart';
import 'elements/all_book_status_list/book_status_list.dart';
import 'elements/all_book_status_list/hooks/all_book_list.dart';
import 'hooks/fetch_book_status/fetch_book_status.dart';

final libraryList = LibraryDocument(
  name: 'VTA-中目黒図書館',
  description: '1',
  bookList: allBookList,
);

class BookManagement extends HookConsumerWidget {
  const BookManagement({Key? key, required}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookManagementTabController = useTabController(initialLength: 5);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SharedCustomTab(
            controller: bookManagementTabController,
            tabs: [
              Tab(text: 'すべて', height: 32.sp),
              Tab(text: '蔵書', height: 32.sp),
              Tab(text: '貸出中', height: 32.sp),
              Tab(text: '延滞中', height: 32.sp),
              Tab(text: 'その他', height: 32.sp),
            ],
          ),
          Expanded(
              child: TabBarView(
            controller: bookManagementTabController,
            children: [
              BookStatusEditor(
                  bookListWidget: BookStatusList(
                libraryDocument: libraryList,
                fetchBookByLibrary: fetchAllBookByLibrary,
              )),
              BookStatusList(
                libraryDocument: libraryList,
                fetchBookByLibrary: fetchAvailableBookByLibrary,
              ),
              BookStatusList(
                libraryDocument: libraryList,
                fetchBookByLibrary: fetchOnLoanBookByLibrary,
              ),
              BookStatusList(
                libraryDocument: libraryList,
                fetchBookByLibrary: fetchOverdueBookByLibrary,
              ),
              BookStatusList(
                libraryDocument: libraryList,
                fetchBookByLibrary: fetchOtherBookByLibrary,
              )
            ],
          ))
        ],
      ),
    );
  }
}

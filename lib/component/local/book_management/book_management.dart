import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_book_library/component/local/book_management/elements/book_status_editor/book_status_editor.dart';
import 'package:my_book_library/importer.dart';

import '../../shared/single/custom_tab/custom_tab.dart';
import 'elements/all_book_status_list/all_book_status_list.dart';

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
              BookStatusEditor(bookListWidget: AllBookList()),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/single/custom_tab/custom_tab.dart';

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
            tabs: const [
              Tab(text: 'すべて'),
              Tab(text: '蔵書'),
              Tab(text: '貸出中'),
              Tab(text: '延滞中'),
              Tab(text: 'その他'),
            ],
          ),
        ],
      ),
    );
  }
}

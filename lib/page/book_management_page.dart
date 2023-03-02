import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_book_library/importer.dart';

import '../component/local/book_management/book_management.dart';
import '../component/local/book_management/elements/all_book_status_list/hooks/all_book_list.dart';
import '../component/shared/single/bottom_navigation/bottom_navigation.dart';

class BookManagementPage extends HookWidget {
  const BookManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isSearchMode = useState(false);
    var searchIndexList = useState([]);
    return Scaffold(
      appBar: AppBar(
        leading: SpaceBox(width: 20.sp),
        title: isSearchMode.value
            ? TextField(
                onChanged: (String s) {
                  searchIndexList.value = [];
                  for (int i = 0; i < allBookList.length; i++) {
                    if (allBookList[i].title.contains(s)) {
                      searchIndexList.value.add(allBookList[i].title);
                    }
                  }
                },
                autofocus: true,
                cursorColor: white,
                style: const TextStyle(color: white, fontSize: 20),
                textInputAction: TextInputAction.search,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: white)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: white)),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: surfacePrimary, fontSize: 20),
                ),
              )
            : const Center(child: Text('図書管理ページ')),
        actions: [
          isSearchMode.value
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    isSearchMode.value = false;
                  },
                )
              : IconButton(
                  onPressed: () {
                    isSearchMode.value = true;
                    searchIndexList.value = [];
                  },
                  icon: const Icon(Icons.search)),
          SpaceBox(width: 12.sp)
        ],
      ),
      body: isSearchMode.value
          ? ListView.builder(
              itemCount: searchIndexList.value.length,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(title: Text(searchIndexList.value[index])));
              })
          : const BookManagement(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

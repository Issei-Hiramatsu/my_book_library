import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_book_library/importer.dart';

import 'component/local/book_management/book_management.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          title: 'myBookLibrary',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: BookManagement(),
        );
      },
    );
  }
}

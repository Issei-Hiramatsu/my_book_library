import 'package:flutter/material.dart';

import '/domain/book_document/book_document.dart';
import '../component/local/book_detail/book_detail.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({super.key, required this.book});
  final BookDocument book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BookDetail(book: book),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_book_library/domain/book_document/book_document.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key, required this.book});
  final BookDocument book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.network(
              book.bookImage,
              width: 220,
              height: 220,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book.title),
                Text('著者: ${book.author}'),
                Text('出版社; ${book.publisher}'),
                Row(
                  children: [
                    Text(
                      'ジャンル: ${book.genreList}',
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        Text('作品紹介'),
        Text(book.description),
      ],
    );
  }
}

//ブクログを参考にして本詳細画面を作る　編集機能

//生徒画面は開発中

// 下のやつを作る

//できるなら検索のやつも追加

//あとは資料作り
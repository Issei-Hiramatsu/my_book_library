import 'package:flutter/material.dart';
import 'package:my_book_library/domain/book_document/book_document.dart';
import 'package:my_book_library/importer.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key, required this.book});
  final BookDocument book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const SpaceBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                book.bookImage,
                fit: BoxFit.fill,
                width: 220,
                height: 180,
              ),
              const SpaceBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(book.title, style: bodyRegular(black)),
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
          const SizedBox(height: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('作品紹介'),
                Text(book.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

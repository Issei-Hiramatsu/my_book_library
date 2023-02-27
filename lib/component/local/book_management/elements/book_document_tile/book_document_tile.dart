import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_book_library/domain/book_document/book_document.dart';
import 'package:my_book_library/importer.dart';

import 'elements/book_status/checked_out_status/checked_out_status.dart';
import 'elements/book_status/overdue_status/overdue_status.dart';
import 'elements/book_status/collected_status/collected_status.dart';
import 'elements/book_status/other_status/other_status.dart';

class BookDocumentTile extends HookConsumerWidget {
  BookDocumentTile({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookDocument book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(0)),
                      onPressed: () {},
                      //対応した値になるように調整する
                      child: const CheckedOutStatus()),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.sp),
                        Row(
                          children: [
                            Text(book.title, style: bodyBold(highEmphasis)),
                            const Spacer(),
                            const Text('貸出日'),
                          ],
                        ),
                        SpaceBox(height: 10.sp),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

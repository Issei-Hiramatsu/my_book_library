import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_book_library/domain/book_document/book_document.dart';
import 'package:my_book_library/importer.dart';

import '../../hooks/use_is_editable/use_is_editable.dart';
import 'elements/book_status/on_loan_status/on_loan_status.dart';
import 'elements/book_status/overdue_status/overdue_status.dart';
import 'elements/book_status/available_status/available_status.dart';
import 'elements/book_status/other_status/other_status.dart';

class BookDocumentTile extends HookConsumerWidget {
  BookDocumentTile({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookDocument book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookState = useState(book.bookStatus);
    final isEditable = ref.watch(isEditableProvider);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(0)),
                      onPressed: () {
                        if (isEditable) {
                          switch (bookState.value) {
                            case '蔵書':
                              bookState.value = '貸出中';
                              break;
                            case '貸出中':
                              bookState.value = '延滞中';
                              break;
                            case '延滞中':
                              bookState.value = 'その他';
                              break;
                            case 'その他':
                              bookState.value = '蔵書';
                              break;
                          }
                        }
                      },
                      child: Column(
                        children: [
                          if (bookState.value == '蔵書')
                            AvailableStatus()
                          else if (bookState.value == '貸出中')
                            OnLoanStatus()
                          else if (bookState.value == '延滞中')
                            OverdueStatus()
                          else
                            OtherStatus(),
                        ],
                      )),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 10.sp),
                        Row(
                          children: [
                            Container(
                              width: 250.sp,
                              child: Text(
                                book.title,
                                style: bodyBold(highEmphasis),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
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

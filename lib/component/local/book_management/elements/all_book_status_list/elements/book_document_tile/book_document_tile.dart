import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_book_library/importer.dart';
import '../../../../../../shared/token/navigator/navigator.dart';

import '/page/book_detail_page.dart';
import '/domain/book_document/book_document.dart';
import '../../../../hooks/use_is_editable/use_is_editable.dart';
import 'elements/book_status/on_loan_status/on_loan_status.dart';
import 'elements/book_status/overdue_status/overdue_status.dart';
import 'elements/book_status/available_status/available_status.dart';
import 'elements/book_status/other_status/other_status.dart';

class BookDocumentTile extends HookConsumerWidget {
  const BookDocumentTile({
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
                      onPressed: () async {
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
                            const AvailableStatus()
                          else if (bookState.value == '貸出中')
                            const OnLoanStatus()
                          else if (bookState.value == '延滞中')
                            const OverdueStatus()
                          else
                            const OtherStatus(),
                        ],
                      )),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        book.title,
                        style: bodyBold(highEmphasis),
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.book),
                        onPressed: () {
                          NavigatorPush(context,
                              page: BookDetailPage(book: book));
                        },
                      ),
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

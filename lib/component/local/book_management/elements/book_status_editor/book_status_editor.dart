import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_book_library/importer.dart';

import '../../hooks/use_is_editable/use_is_editable.dart';
import '../../../../shared/single/buttons/cancel_button/cancel_button.dart';
import '../../../../shared/single/buttons/enabled_button/enabled_button.dart';

class BookStatusEditor extends ConsumerWidget {
  const BookStatusEditor({
    required this.bookListWidget,
    super.key,
  });
  final Widget bookListWidget;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditable = ref.watch(isEditableProvider);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          isEditable
              ? Container()
              : TextButton(
                  onPressed: () {
                    ref.read(isEditableProvider.notifier).startEdit();
                  },
                  child: Text('編集', style: callOutRegular(black))),
          bookListWidget,
          isEditable
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CancelButton(
                        onPressed: () {
                          ref.read(isEditableProvider.notifier).finishEdit();
                        },
                      ),
                      SizedBox(width: 24.sp),
                      FilledEnabledButton(
                        text: '決定',
                        textStyle: bodyBold(onPrimary),
                        padding: EdgeInsets.symmetric(
                          vertical: 10.sp,
                          horizontal: 24.sp,
                        ),
                        backgroundColor: primary,
                        callback: () {
                          ref.read(isEditableProvider.notifier).finishEdit();
                        },
                      ),
                    ],
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}

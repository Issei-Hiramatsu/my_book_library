import 'package:flutter/material.dart';
import 'package:my_book_library/importer.dart';

class OnLoanStatus extends StatelessWidget {
  const OnLoanStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: primary10,
        borderRadius: BorderRadius.circular(4.sp),
      ),
      child: Text('貸出中', style: bodyRegular(midEmphasis)),
    );
  }
}

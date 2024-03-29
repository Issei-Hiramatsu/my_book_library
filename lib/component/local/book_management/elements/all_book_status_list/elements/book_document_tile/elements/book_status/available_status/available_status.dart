import 'package:flutter/material.dart';
import 'package:my_book_library/importer.dart';

class AvailableStatus extends StatelessWidget {
  const AvailableStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: tertiary,
        borderRadius: BorderRadius.circular(4.sp),
      ),
      child: Text('蔵書', style: bodyRegular(midEmphasis)),
    );
  }
}

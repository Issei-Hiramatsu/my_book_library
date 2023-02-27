import 'package:flutter/material.dart';
import 'package:my_book_library/importer.dart';

class CollectedStatus extends StatelessWidget {
  const CollectedStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: tertiaryPale,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: Text('蔵書', style: bodyRegular(midEmphasis)),
      ),
    );
  }
}

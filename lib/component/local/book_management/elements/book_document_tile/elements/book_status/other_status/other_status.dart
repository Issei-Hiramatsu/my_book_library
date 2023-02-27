import 'package:flutter/material.dart';
import 'package:my_book_library/importer.dart';

class OtherStatus extends StatelessWidget {
  const OtherStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: surfaceSecondary,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: Text(
          'その他',
          style: bodyRegular(midEmphasis),
        ),
      ),
    );
  }
}

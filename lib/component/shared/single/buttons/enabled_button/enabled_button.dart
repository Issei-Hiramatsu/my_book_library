import 'package:flutter/material.dart';
import 'package:my_book_library/importer.dart';

class FilledEnabledButton extends StatelessWidget {
  const FilledEnabledButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.padding,
    required this.backgroundColor,
    required this.callback,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final Color backgroundColor;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.sp),
          color: backgroundColor,
        ),
        child: Text(
          text,
          style: textStyle,
          softWrap: false,
        ),
      ),
    );
  }
}

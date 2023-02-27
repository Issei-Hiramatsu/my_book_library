import 'package:flutter/material.dart';
import 'package:my_book_library/importer.dart';

class CancelButton extends StatelessWidget {
  CancelButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          'キャンセル',
          style: callOutRegular(black),
        ));
  }
}

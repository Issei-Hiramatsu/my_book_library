import 'package:flutter/material.dart';
import 'package:my_book_library/importer.dart';

class SharedCustomTab extends StatelessWidget {
  const SharedCustomTab(
      {super.key, required this.controller, required this.tabs});
  final TabController controller;
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: primary,
      ),
      isScrollable: true,
      labelColor: white,
      unselectedLabelColor: midEmphasis,
      tabs: tabs,
    );
  }
}

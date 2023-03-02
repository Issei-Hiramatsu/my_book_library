import 'package:flutter/material.dart';

import '../component/local/book_management/book_management.dart';
import '../component/shared/single/bottom_navigation/bottom_navigation.dart';

class BookManagementPage extends StatelessWidget {
  const BookManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const BookManagement(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

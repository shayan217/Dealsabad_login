import 'package:dealsabaad/customwidget/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchView extends StatelessWidget {
  final RxInt currentIndex = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page  2'),
      ),
      body: Center(
        child: Text('Search Page'),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(currentIndex: currentIndex),
    );
  }
}

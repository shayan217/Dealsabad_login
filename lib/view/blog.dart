import 'package:dealsabaad/customwidget/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class blogsceens extends StatelessWidget {
  final RxInt currentIndex = 2.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Blog Screen'),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(currentIndex: currentIndex),
    );
  }
}

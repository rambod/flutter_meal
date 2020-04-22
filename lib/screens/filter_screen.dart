import 'package:flutter/material.dart';
import 'package:meal/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Page'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filter Page'),
      ),
    );
  }
}

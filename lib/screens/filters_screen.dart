import 'package:flutter/material.dart';
import 'package:traveller/widgets/app_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const screenRoute = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text('Filter'),),
      body: Text('hha'),);
  }
}
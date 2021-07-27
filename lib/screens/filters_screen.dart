import 'package:flutter/material.dart';
import 'package:traveller/widgets/app_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const screenRoute = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var isInSummer = false;

  var isInWinter = false;

  var isForFamily = false;

  Widget buildSwitchListTile(
      String title, String subtitle, var currentValue, var updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: currentValue,
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              buildSwitchListTile(
                  'summer Trips', 'show Sumer Trips', isInSummer, (newValue) {
                setState(() {
                  isInSummer = newValue;
                });
              }),
              SizedBox(
                height: 50,
              ),
              buildSwitchListTile(
                  'Winter Trips', 'show Winter Trips', isInWinter, (newValue) {
                setState(() {
                  isInWinter = newValue;
                });
              }),
              SizedBox(
                height: 50,
              ),
              buildSwitchListTile(
                  ' Trips fo  Family', 'show Trips fo  Family', isForFamily,
                  (newValue) {
                setState(() {
                  isForFamily = newValue;
                });
              }),
              SizedBox(
                height: 50,
              ),
            ],
          ))
        ],
      ),
    );
  }
}

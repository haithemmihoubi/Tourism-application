import 'package:flutter/material.dart';
import 'package:traveller/screens/category_trips_screen.dart';
import 'package:traveller/screens/filters_screen.dart';
import 'package:traveller/screens/tabs_screen.dart';
import 'package:traveller/screens/trip_detail.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traveller',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryTextTheme: TextTheme()

      ),
      // home: CategoriesScreen(),

      routes: {
        '/':(context)=>TabsScreen(),
        CategoryTripScreen.screenRoute:(ctx)=>CategoryTripScreen(),
        TripDetailScreen.id:(context)=>TripDetailScreen(),
        FilterScreen.screenRoute:(context)=>FilterScreen(),

      },
    );
  }
}

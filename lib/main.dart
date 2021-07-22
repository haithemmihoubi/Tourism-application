import 'package:flutter/material.dart';
import 'package:traveller/screens/categories_screen.dart';
import 'package:traveller/screens/category_trips_screen.dart';

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
       textTheme: ThemeData.light().textTheme.copyWith(),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/':(context)=>CategoriesScreen(),
        CategoryTripScreen.screenRoute:(ctx)=>CategoryTripScreen(),

      },
    );
  }
}
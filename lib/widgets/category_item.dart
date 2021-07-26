import 'package:flutter/material.dart';
import 'package:traveller/screens/category_trips_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;

  CategoryItem({required this.id, required this.title, required this.imageUrl});

  selectCategory(context) {
    Navigator.of(context).pushNamed(
        CategoryTripScreen.screenRoute,
        arguments: {
      'id': id,
      'title': title
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.cyan,
      borderRadius: BorderRadius.circular(15),
      onTap: () => selectCategory(context),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              this.imageUrl,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4),
            ),
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}

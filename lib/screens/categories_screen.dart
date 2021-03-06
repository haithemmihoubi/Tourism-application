import 'package:flutter/material.dart';
import 'package:traveller/widgets/category_item.dart';

import '../app_data.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map((category) => CategoryItem(id: category.id,title: category.title,imageUrl: category.imageUrl,))
            .toList(),
      );
  }
}

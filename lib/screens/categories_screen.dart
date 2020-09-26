import 'package:flutter/material.dart';
import 'package:food/componentes/category_item.dart';
import 'package:food/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            // delega ao MaxCrossAsis a quantidade de elementos por linha
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2, // proporção
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat);
        }).toList());
  }
}

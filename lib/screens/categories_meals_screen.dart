import 'package:flutter/material.dart';
import 'package:food/data/dummy_data.dart';
import 'package:food/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {

//  final Category category;
//  const CategoriesMealsScreen(this.category); /// Recebe no construtor os dados que serão apresentados

  @override
  Widget build(BuildContext context) {
    /// atributo category vindo de arguments
    final category = ModalRoute.of(context).settings.arguments as Category; // cast

    final categoryMeals = DUMMY_MEALS.where((meals) {
      return meals.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
      ),
    );
  }
}

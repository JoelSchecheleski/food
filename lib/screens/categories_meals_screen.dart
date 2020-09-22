import 'package:flutter/material.dart';
import 'package:food/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {

//  final Category category;
//  const CategoriesMealsScreen(this.category); /// Recebe no construtor os dados que serão apresentados


  @override
  Widget build(BuildContext context) {
    /// atributo category vindo de arguments
    final category = ModalRoute.of(context).settings.arguments as Category; // cast

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas por categorias ${category.id}'),
      ),
    );
  }
}

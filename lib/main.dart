import 'package:flutter/material.dart';
import 'package:food/screens/categories_meals_screen.dart';
import 'package:food/screens/categories_screen.dart';
import 'package:food/screens/meal_detail_screen.dart';
import 'package:food/screens/settings_screen.dart';
import 'package:food/screens/tabs_screen.dart';
import 'package:food/utils/app-routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed'
          )
        )
      ),
      // home: CategoriesScreen(),
//      initialRoute: ,
      routes: {
        AppRoutes.HOME: (ctx) => TabScreen(), // por padrão o '/' é a raiz da aplicação
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS:  (ctx) => SettingsScreen(),
      },
      onGenerateRoute: (settings) {
        // Resolve as rotas dinamicamente
        return null;
      },
      onUnknownRoute: (settings) {
        // Em casp de rotas não existe pode tentar resolver por aqui também
        return null;
      },
    );
  }
}
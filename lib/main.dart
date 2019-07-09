import 'package:flutter/material.dart';

// Home and 404 routes
import 'package:recipe/views/home_page.dart';
import 'package:recipe/views/not_found_page.dart';

// Feature routes
import 'package:recipe/features/contact/views/contact_us_page.dart';
import 'package:recipe/features/recipes/views/home_recipes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => HomePage(),
      '/recipes': (BuildContext context) => RecipesPage(),
      '/contact': (BuildContext context) => ContactUsPage(),
    },
    onUnknownRoute: (RouteSettings setting) {
      String unknownRoute = setting.name; // Get string used for unknown route.
      print(unknownRoute);
      return new MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  ));
}

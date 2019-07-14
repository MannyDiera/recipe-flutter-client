import 'package:flutter/material.dart';

// Landing, Home and 404 routes
import 'package:recipe/views/landing_page.dart';
import 'package:recipe/views/home_page.dart';
import 'package:recipe/views/not_found_page.dart';

// Feature routes
import 'package:recipe/features/contact/contact_us_home.dart';
import 'package:recipe/features/recipes/recipe_home.dart';

void main() {
  runApp(MaterialApp(
    theme: new ThemeData(
      primaryColor: Colors.green[900],
      accentColor: Colors.green[700],
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => LandingPage(),
      '/home': (context) => HomePage(),
      '/recipes': (BuildContext context) => RecipePageHome(),
      '/contact': (BuildContext context) => ContactUsPage(),
    },
    onUnknownRoute: (RouteSettings setting) {
      String unknownRoute = setting.name; // Get string used for unknown route.
      print(unknownRoute);
      return new MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  ));
}

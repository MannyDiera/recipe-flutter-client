import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:recipe/RecipeFeature/models/recipe_model.dart';



// ### MOVE TO SERVICE
// create variable in api call and also move the below to a service.

String _localhost() {
  if (Platform.
  isAndroid)
    return 'http://10.0.2.2:3000';
  else // for iOS simulator
    return 'http://localhost:3000';
}

Future<Recipe> fetchRecipes() async {
  final response =
  await http.get('http://10.0.2.2:3000');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    print(response.body);
    return Recipe.fromJson(json.decode(response.body[0]));
    // return Recipe.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

// CLOSE SERVICE

// OPEN MAIN APP CALL
void main() => runApp(MyRecipeApp(recipe: fetchRecipes()));

// MAIN METHOD CALL
class MyRecipeApp extends StatelessWidget {
  final Future<Recipe> recipe;

  MyRecipeApp({Key key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recipes Home'),
        ),
        body: Center(
          child: FutureBuilder<Recipe>(
            future: recipe,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.name);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // Default is a loading spinner
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
















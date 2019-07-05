import 'dart:async' show Future;
import 'dart:io';
import 'package:http/http.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:recipe/RecipeFeature/models/recipe_model.dart';

Future<String> _loadRecipesAsset() async {
  return await rootBundle.load(_localhost());
}

Future loadRecipes() async {
  String jsonRecipe = await _loadRecipesAsset();
  final jsonResponse = json.decode(jsonRecipe);
  Recipe recipe = new Recipe.fromJson(jsonResponse);
  print(recipe);
}


_makeGetRequest() async {
  Response response = await get(_localhost());
  setState(() {
    serverResponse = response.body;
    print(response.statusCode);
  });
}

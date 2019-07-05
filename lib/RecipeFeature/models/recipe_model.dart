class Recipe {
  final int id;
  final String name;
  final String published;
  final List<Ingredient> ingredients;

  Recipe({
    this.id,
    this.name,
    this.published,
    this.ingredients
  });

  factory Recipe.fromJson(Map<String, dynamic> parsedJson) {
    // Magic part here
    var list = parsedJson['ingredients'] as List;
    print(list.runtimeType);
    List<Ingredient> ingredientList = list.map((i) => Ingredient.fromJson(i)).toList();

    return Recipe(
      id: parsedJson['id'],
      name: parsedJson['name'],
      published: parsedJson['published_at'],
      ingredients: ingredientList
    );
  }
}

// Class for nested array of objects inside the JSON response
class Ingredient {
  final String ingredientName;
  final String ingredientAmount;

  Ingredient({
    this.ingredientName,
    this.ingredientAmount
  });

  factory Ingredient.fromJson(Map<String, dynamic> parsedJson){

    return Ingredient(
      ingredientName: parsedJson['amount'],
      ingredientAmount: parsedJson['amount']
    );

  }
}
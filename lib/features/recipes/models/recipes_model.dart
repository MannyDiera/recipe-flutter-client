
class Recipe {
  int id;
  String name;
  String published;

  Recipe({
    this.id,
    this.name,
    this.published,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      name: json['name'],
      published: json['published'],
    );
  }
}
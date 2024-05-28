<<<<<<< HEAD
import 'package:json_annotation/json_annotation.dart';

part '../recipe.g.dart';

@JsonSerializable()
class Recipe {
  final int id;
  final String title;
  final String image;
  final String instructions;

  Recipe({
    required this.id,
    required this.title,
    required this.image,
    required this.instructions,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
=======
class Recipe {
  final int id;
  final String title;
  final String image;
  final List<String> ingredients;
  final String instructions;
  final Map<String, dynamic> nutrients;


Recipe({
  required this.id,
  required this.title,
  required this.image,
  required this.ingredients,
  required this.instructions,
  required this.nutrients
});

factory Recipe.fromJson(Map<String, dynamic> json){
  return Recipe(
    id: json['id'],
    title: json['title'],
    image: json['image'],
    ingredients: List<String>.from(json['ingredients']),
    instructions: json['instructions'],
    nutrients: json['nutrients'],
  );
}
}
>>>>>>> 44bd0bd2fcf7b30892ef219dfb32278c8debef86

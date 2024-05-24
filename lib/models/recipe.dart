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

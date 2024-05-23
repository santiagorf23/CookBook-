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
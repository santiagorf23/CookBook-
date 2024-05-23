import 'dart:convert';
import 'package:http/http.dart' as http;

class APIService {
  static const String API_KEY = 'COLOCAR EL API_KEY AQUI';
  
Future <List<Recipe>> fetchRecipes(String query) async {
  final response = await http.get(Uri.parse('https://api.spoonacular.com/recipes/search?apiKey=$API_KEY&query=$query'));

  if(response.statusCode == 200){
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final recipes = data['results']as List<dynamic>;

    return recipes.map((recipeJson) => Recipe.fromJson(recipeJson)).toList();
  }else{
    throw Exception('No se pudieron obtener recetas');
  }
}
}
import 'screens/home_screen.dart';

class FavoritesManager {
  static final List<Recipe> favoriteRecipes = [];

  static bool isFavorite(Recipe recipe) {
    return favoriteRecipes.any((item) => item.id == recipe.id);
  }

  static void toggleFavorite(Recipe recipe) {
    if (isFavorite(recipe)) {
      favoriteRecipes.removeWhere((item) => item.id == recipe.id);
    } else {
      favoriteRecipes.add(recipe);
    }
  }
}
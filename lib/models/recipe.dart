class Recipe {
  final String id;
  final String title;
  final String imageUrl;
  final int duration; // In minutes
  final String difficulty; // e.g., Easy, Medium, Hard
  final List<String> ingredients;
  final List<String> steps;
  bool isFavorite;

  Recipe({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.difficulty,
    required this.ingredients,
    required this.steps,
    this.isFavorite = false,
  });
}
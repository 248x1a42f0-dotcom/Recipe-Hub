import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeApp());
}

// Recipe Model
class Recipe {
  final String name;
  final String emoji;
  final String category;
  final int cookingTime;
  final String difficulty;
  final List<String> ingredients;
  final List<String> instructions;

  const Recipe({
    required this.name,
    required this.emoji,
    required this.category,
    required this.cookingTime,
    required this.difficulty,
    required this.ingredients,
    required this.instructions,
  });
}

// Main App
class RecipeApp extends StatefulWidget {
  const RecipeApp({super.key});

  @override
  State<RecipeApp> createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {
  bool isFavorite = false;

  final Recipe recipe = const Recipe(
    name: 'Delicious Masala Dosa',
    emoji: '🥞',
    category: 'South Indian',
    cookingTime: 30,
    difficulty: 'Easy',
    ingredients: [
      '2 cups dosa batter',
      '1 potato',
      '1 onion',
      'Mustard seeds',
      'Curry leaves',
      'Oil and salt',
    ],
    instructions: [
      'Heat oil in a pan.',
      'Add mustard seeds and curry leaves.',
      'Add chopped onion and potato.',
      'Cook the potato mixture until soft.',
      'Spread dosa batter on a hot pan.',
      'Add potato masala and fold the dosa.',
      'Serve hot with chutney.',
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFFFF8A3D),
      ),
      home: RecipeDetailScreen(
        recipe: recipe,
        isFavorite: isFavorite,
        onFavorite: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}

// Recipe Detail Screen
class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;
  final bool isFavorite;
  final VoidCallback onFavorite;

  const RecipeDetailScreen({
    super.key,
    required this.recipe,
    required this.isFavorite,
    required this.onFavorite,
  });

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Color(0xFFFFFAF3);
    const Color accentColor = Color(0xFFFF8A3D);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          'Recipe Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            tooltip: isFavorite
                ? 'Remove from favourites'
                : 'Add to favourites',
            onPressed: onFavorite,
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFFFE8CC),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  recipe.emoji,
                  style: const TextStyle(fontSize: 100),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              recipe.name,
              style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '${recipe.category} • ${recipe.cookingTime} minutes • ${recipe.difficulty}',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Ingredients 🥕',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            ...recipe.ingredients.map(
                  (item) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: accentColor,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        item,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Cooking Instructions 👨‍🍳',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            ...recipe.instructions.asMap().entries.map(
                  (entry) => Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: accentColor,
                      child: Text(
                        '${entry.key + 1}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        entry.value,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
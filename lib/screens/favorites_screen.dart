import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeApp());
}

// RECIPE MODEL
class Recipe {
  final int id;
  final String name;
  final String category;
  final String imageUrl;
  final String description;

  const Recipe({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.description,
  });
}

// RECIPE DATA
const List<Recipe> recipes = [
  Recipe(
    id: 1,
    name: 'Masala Dosa',
    category: 'Breakfast',
    imageUrl: 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600',
    description: 'Crispy South Indian dosa with potato masala.',
  ),
  Recipe(
    id: 2,
    name: 'Veg Fried Rice',
    category: 'Lunch',
    imageUrl: 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=600',
    description: 'Delicious vegetable fried rice.',
  ),
  Recipe(
    id: 3,
    name: 'Paneer Curry',
    category: 'Dinner',
    imageUrl: 'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?w=600',
    description: 'Rich and creamy paneer curry.',
  ),
  Recipe(
    id: 4,
    name: 'Samosa',
    category: 'Snacks',
    imageUrl: 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=600',
    description: 'Crispy Indian snack filled with potatoes.',
  ),
  Recipe(
    id: 5,
    name: 'Chocolate Cake',
    category: 'Dessert',
    imageUrl: 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600',
    description: 'Delicious chocolate cake.',
  ),
];

// MAIN APP
class RecipeApp extends StatefulWidget {
  const RecipeApp({super.key});

  @override
  State<RecipeApp> createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {
  final Set<int> favorites = {};

  void toggleFavorite(int id) {
    setState(() {
      if (favorites.contains(id)) {
        favorites.remove(id);
      } else {
        favorites.add(id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFAF3),
      ),
      home: FavoritesScreen(
        favorites: favorites,
        onFavorite: toggleFavorite,
      ),
    );
  }
}

// RECIPE CARD
class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final bool isFavorite;
  final VoidCallback onFavorite;
  final VoidCallback onTap;

  const RecipeCard({
    super.key,
    required this.recipe,
    required this.isFavorite,
    required this.onFavorite,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                recipe.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) {
                  return Container(
                    color: Colors.orange.shade50,
                    child: const Center(
                      child: Icon(
                        Icons.restaurant,
                        size: 50,
                        color: Colors.deepOrange,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      recipe.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: onFavorite,
                    icon: Icon(
                      isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// FAVORITES SCREEN
class FavoritesScreen extends StatelessWidget {
  final Set<int> favorites;
  final ValueChanged<int> onFavorite;

  const FavoritesScreen({
    super.key,
    required this.favorites,
    required this.onFavorite,
  });

  @override
  Widget build(BuildContext context) {
    final favoriteRecipes = recipes
        .where((recipe) => favorites.contains(recipe.id))
        .toList();

    return Scaffold(
      backgroundColor: const Color(0xFFFFFAF3),
      appBar: AppBar(
        title: const Text(
          'My Favorites ❤️',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFFFFAF3),
      ),
      body: favoriteRecipes.isEmpty
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 75,
              color: Colors.orange.shade300,
            ),
            const SizedBox(height: 15),
            const Text(
              'No favorite recipes yet!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Add recipes to your favorites.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      )
          : Padding(
        padding: const EdgeInsets.all(18),
        child: GridView.builder(
          itemCount: favoriteRecipes.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: 0.78,
          ),
          itemBuilder: (context, index) {
            final recipe = favoriteRecipes[index];

            return RecipeCard(
              recipe: recipe,
              isFavorite: true,
              onFavorite: () {
                onFavorite(recipe.id);
              },
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RecipeDetailScreen(
                      recipe: recipe,
                      isFavorite: favorites.contains(recipe.id),
                      onFavorite: () {
                        onFavorite(recipe.id);
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

// RECIPE DETAILS SCREEN
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
    return Scaffold(
      backgroundColor: const Color(0xFFFFFAF3),
      appBar: AppBar(
        title: const Text('Recipe Details'),
        backgroundColor: const Color(0xFFFFFAF3),
        actions: [
          IconButton(
            onPressed: onFavorite,
            icon: Icon(
              isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              recipe.imageUrl,
              height: 260,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) {
                return Container(
                  height: 260,
                  color: Colors.orange.shade50,
                  child: const Icon(
                    Icons.restaurant,
                    size: 80,
                    color: Colors.deepOrange,
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: const TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    recipe.category,
                    style: const TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    recipe.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text('Add ingredients here.'),
                  const SizedBox(height: 25),
                  const Text(
                    'Cooking Instructions',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Add cooking steps here.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
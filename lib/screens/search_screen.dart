import 'package:flutter/material.dart';

// ---------------- RECIPE MODEL ----------------

class Recipe {
  final int id;
  final String name;
  final String imageUrl;
  final String description;

  const Recipe({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
  });
}

// ---------------- RECIPE DATA ----------------

const List<Recipe> recipes = [
  Recipe(
    id: 1,
    name: 'Spaghetti Carbonara',
    imageUrl: 'https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg',
    description: 'Classic Italian pasta with a creamy sauce.',
  ),
  Recipe(
    id: 2,
    name: 'Margherita Pizza',
    imageUrl: 'https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg',
    description: 'Delicious pizza with fresh basil and mozzarella.',
  ),
  Recipe(
    id: 3,
    name: 'Greek Salad',
    imageUrl: 'https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg',
    description: 'Fresh Mediterranean salad with vegetables.',
  ),
];

// ---------------- MAIN APP ----------------

void main() {
  runApp(const RecipeApp());
}

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
        scaffoldBackgroundColor: const Color(0xFFFFFAF3),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
        ),
        useMaterial3: true,
      ),
      home: SearchScreen(
        favorites: favorites,
        onFavorite: toggleFavorite,
      ),
    );
  }
}

// ---------------- RECIPE CARD ----------------

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
      clipBehavior: Clip.antiAlias,
      elevation: 3,
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
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.orange.shade50,
                    width: double.infinity,
                    child: const Icon(
                      Icons.restaurant,
                      size: 55,
                      color: Colors.deepOrange,
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
                        fontSize: 14,
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

// ---------------- SEARCH SCREEN ----------------

class SearchScreen extends StatefulWidget {
  final Set<int> favorites;
  final Function(int) onFavorite;

  const SearchScreen({
    super.key,
    required this.favorites,
    required this.onFavorite,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final results = recipes.where((recipe) {
      return recipe.name
          .toLowerCase()
          .contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search Recipes',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFFFFAF3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search your favorite food...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchText.isNotEmpty
                    ? IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      searchText = '';
                    });
                  },
                )
                    : null,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: results.isEmpty
                  ? const Center(
                child: Text(
                  'No recipes found!',
                  style: TextStyle(fontSize: 16),
                ),
              )
                  : GridView.builder(
                itemCount: results.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.78,
                ),
                itemBuilder: (context, index) {
                  final recipe = results[index];

                  return RecipeCard(
                    recipe: recipe,
                    isFavorite:
                    widget.favorites.contains(recipe.id),
                    onFavorite: () {
                      widget.onFavorite(recipe.id);
                    },
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => RecipeDetailScreen(
                            recipe: recipe,
                            isFavorite: widget.favorites
                                .contains(recipe.id),
                            onFavorite: () {
                              widget.onFavorite(recipe.id);
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- RECIPE DETAILS ----------------

class RecipeDetailScreen extends StatefulWidget {
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
  State<RecipeDetailScreen> createState() =>
      _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFAF3),
      appBar: AppBar(
        title: const Text('Recipe Details'),
        backgroundColor: const Color(0xFFFFFAF3),
        actions: [
          IconButton(
            onPressed: () {
              widget.onFavorite();
              setState(() {
                isFavorite = !isFavorite;
              });
            },
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
              widget.recipe.imageUrl,
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 260,
                  color: Colors.orange.shade50,
                  child: const Center(
                    child: Icon(
                      Icons.restaurant,
                      size: 80,
                      color: Colors.deepOrange,
                    ),
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
                    widget.recipe.name,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.recipe.description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
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
                  const Text(
                    'Add your recipe ingredients here.',
                    style: TextStyle(fontSize: 16),
                  ),
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
                    'Add step-by-step cooking instructions here.',
                    style: TextStyle(fontSize: 16),
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
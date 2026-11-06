import 'package:flutter/material.dart';

class Recipe {
  final int id;
  final String name;
  final String category;
  final String imageUrl;
  final String description;
  final String cookingTime;
  final String rating;
  final String calories;
  final List<String> ingredients;
  final List<String> steps;

  const Recipe({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.description,
    required this.cookingTime,
    required this.rating,
    required this.calories,
    required this.ingredients,
    required this.steps,
  });
}

const List<Recipe> allRecipes = [
  Recipe(
    id: 1,
    name: 'Tomato Basil Pasta',
    category: 'Italian',
    imageUrl: 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?auto=format&fit=crop&w=800&q=80',
    description: 'A comforting Italian classic prepared with fresh heirloom tomatoes, garlic, cold-pressed olive oil, and organic basil.',
    cookingTime: '20 min',
    rating: '4.9',
    calories: '420 kcal',
    ingredients: [
      '250g Penne or Spaghetti pasta',
      '4 ripe tomatoes, diced',
      '3 cloves garlic, minced',
      'Fresh basil leaves',
      '2 tbsp extra virgin olive oil',
      'Grated Parmesan cheese',
      'Salt and black pepper to taste',
    ],
    steps: [
      'Boil pasta in a pot of salted water until al dente.',
      'Heat extra virgin olive oil in a pan and gently sauté garlic until fragrant.',
      'Add chopped tomatoes and simmer for 10 minutes until a rich sauce forms.',
      'Toss drained pasta directly into the sauce.',
      'Garnish generously with fresh basil leaves and Parmesan before serving warm.',
    ],
  ),
  Recipe(
    id: 2,
    name: 'Hyderabadi Dum Biryani',
    category: 'Indian',
    imageUrl: 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?auto=format&fit=crop&w=800&q=80',
    description: 'Royal aromatic basmati rice layered with marinated spiced chicken, fried brown onions, saffron milk, and fresh mint.',
    cookingTime: '45 min',
    rating: '5.0',
    calories: '650 kcal',
    ingredients: [
      '500g Chicken cut into curry pieces',
      '2 cups long-grain Aged Basmati rice',
      '1 cup thick plain curd (yogurt)',
      '2 large onions, thinly sliced and golden fried',
      '1 tbsp ginger-garlic paste',
      'Whole spices (cardamom, cinnamon, cloves, bay leaf)',
      'Saffron dissolved in warm milk',
      'Fresh mint and coriander leaves',
    ],
    steps: [
      'Marinate chicken pieces with curd, ginger-garlic paste, chili powder, and spices for 1 hour.',
      'Boil basmati rice with whole spices until 70% cooked, then drain.',
      'Layer chicken and rice in a heavy-bottomed pot.',
      'Scatter fried onions, saffron milk, mint leaves, and ghee over top.',
      'Seal tightly and cook on low dum heat for 30 minutes.',
    ],
  ),
  Recipe(
    id: 3,
    name: 'Avocado Toast & Poached Egg',
    category: 'Breakfast',
    imageUrl: 'https://images.unsplash.com/photo-1525351484163-7529414344d8?auto=format&fit=crop&w=800&q=80',
    description: 'Toasted artisan sourdough bread smeared with seasoned creamy avocado and crowned with a warm poached egg.',
    cookingTime: '15 min',
    rating: '4.7',
    calories: '320 kcal',
    ingredients: [
      '2 thick slices sourdough bread',
      '1 ripe Hass avocado',
      '2 fresh eggs',
      '1/2 lemon, juiced',
      'Chili flakes and flaky sea salt',
    ],
    steps: [
      'Toast sourdough slices until golden brown.',
      'Mash avocado with lemon juice, salt, and pepper.',
      'Poach eggs in simmering water for 3 minutes.',
      'Spread avocado on toast and top with poached egg and chili flakes.',
    ],
  ),
  Recipe(
    id: 4,
    name: 'Classic Smash Burger',
    category: 'Fast Food',
    imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80',
    description: 'Juicy, crispy-edged patty layered with cheddar cheese, caramelized onions, and house burger sauce.',
    cookingTime: '25 min',
    rating: '4.8',
    calories: '580 kcal',
    ingredients: [
      '2 brioche burger buns',
      '2 burger patties',
      '2 slices cheddar cheese',
      'Caramelized onions & dill pickles',
      'Burger sauce mix',
    ],
    steps: [
      'Toast brioche buns on a griddle pan.',
      'Smash patties firmly onto a screaming hot skillet.',
      'Top with cheese and assemble burger with sauce and pickles.',
    ],
  ),
  Recipe(
    id: 5,
    name: 'Creamy Butter Chicken',
    category: 'Indian',
    imageUrl: 'https://images.unsplash.com/photo-1588166524941-3bf61a9c41db?auto=format&fit=crop&w=800&q=80',
    description: 'Tender tandoori chicken cooked in a rich, buttery, spiced tomato-cream makhani gravy.',
    cookingTime: '40 min',
    rating: '4.9',
    calories: '610 kcal',
    ingredients: [
      '400g Chicken thighs, grilled',
      '4 tomatoes, pureed',
      '3 tbsp unsalted butter',
      '1/2 cup fresh cream',
      '1 tbsp Kasuri methi',
    ],
    steps: [
      'Simmer tomato purée with ginger-garlic paste and chili powder.',
      'Blend sauce until silky smooth and return to pan.',
      'Add chicken pieces, cream, butter, and crushed Kasuri methi.',
    ],
  ),
  Recipe(
    id: 6,
    name: 'Margherita Woodfired Pizza',
    category: 'Italian',
    imageUrl: 'https://images.unsplash.com/photo-1604382355076-af4b0eb60143?auto=format&fit=crop&w=800&q=80',
    description: 'Traditional Neapolitan pizza made with hand-crushed tomatoes, fresh mozzarella, and sweet basil.',
    cookingTime: '30 min',
    rating: '4.8',
    calories: '490 kcal',
    ingredients: [
      '1 pizza dough ball',
      '1/2 cup tomato sauce',
      '150g fresh mozzarella',
      'Fresh basil leaves & olive oil',
    ],
    steps: [
      'Stretch dough by hand on a floured surface.',
      'Spread tomato sauce and top with fresh mozzarella.',
      'Bake at 250°C for 8-10 minutes until bubbly.',
    ],
  ),
  Recipe(
    id: 7,
    name: 'Fluffy Buttermilk Pancakes',
    category: 'Breakfast',
    imageUrl: 'https://images.unsplash.com/photo-1528207776546-365bb710ee93?auto=format&fit=crop&w=800&q=80',
    description: 'Golden, cloud-like pancakes served with whipped salted butter and pure Canadian maple syrup.',
    cookingTime: '20 min',
    rating: '4.7',
    calories: '390 kcal',
    ingredients: [
      '1 1/2 cups flour',
      '1 1/4 cups buttermilk',
      '1 egg & 3 tbsp butter',
      'Maple syrup & berries',
    ],
    steps: [
      'Whisk ingredients into a light, airy batter.',
      'Pour 1/4 cup batter onto a medium hot skillet.',
      'Flip when bubbly and cook until golden brown.',
    ],
  ),
  Recipe(
    id: 8,
    name: 'Paneer Tikka Masala',
    category: 'Indian',
    imageUrl: 'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?auto=format&fit=crop&w=800&q=80',
    description: 'Tandoori-spiced cottage cheese cubes simmered in a spiced onion, tomato, and bell pepper masala.',
    cookingTime: '35 min',
    rating: '4.8',
    calories: '520 kcal',
    ingredients: [
      '250g Paneer cubes',
      '1 bell pepper & 1 onion',
      'Tomato-onion gravy base',
      'Spices & fresh cream',
    ],
    steps: [
      'Sear marinated paneer and veggies in a pan.',
      'Simmer in seasoned masala gravy for 5 minutes.',
      'Finish with a touch of fresh cream and coriander.',
    ],
  ),
  Recipe(
    id: 9,
    name: 'Crispy French Fries',
    category: 'Fast Food',
    imageUrl: 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?auto=format&fit=crop&w=800&q=80',
    description: 'Double-fried golden russet potato batons tossed in sea salt and rosemary seasoning.',
    cookingTime: '25 min',
    rating: '4.6',
    calories: '340 kcal',
    ingredients: [
      '3 large Russet potatoes',
      'Vegetable oil for frying',
      'Sea salt & rosemary',
    ],
    steps: [
      'Cut potatoes and soak in cold water for 30 minutes.',
      'First fry at medium heat for 5 minutes; drain.',
      'Second fry at high heat for 3 minutes until extra crispy.',
    ],
  ),
  Recipe(
    id: 10,
    name: 'Mushroom Risotto',
    category: 'Italian',
    imageUrl: 'https://images.unsplash.com/photo-1633964913295-ceb43826e7c9?auto=format&fit=crop&w=800&q=80',
    description: 'Creamy Arborio rice cooked slowly in rich vegetable broth with sautéed wild mushrooms and aged Parmesan.',
    cookingTime: '35 min',
    rating: '4.8',
    calories: '440 kcal',
    ingredients: [
      '1 cup Arborio rice',
      '200g wild mushrooms',
      '4 cups warm vegetable broth',
      'Parmesan cheese & butter',
    ],
    steps: [
      'Sauté mushrooms and set aside.',
      'Gradually stir warm broth into toasted rice until velvety.',
      'Fold in cooked mushrooms and grated Parmesan.',
    ],
  ),
  Recipe(
    id: 11,
    name: 'Masala Dosa with Chutney',
    category: 'Indian',
    imageUrl: 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?auto=format&fit=crop&w=800&q=80',
    description: 'Crispy fermented crepe stuffed with tempered spiced potato masala, served with coconut chutney.',
    cookingTime: '30 min',
    rating: '4.9',
    calories: '360 kcal',
    ingredients: [
      '2 cups dosa batter',
      '2 boiled spiced potatoes',
      'Mustard seeds & curry leaves',
      'Ghee for roasting',
    ],
    steps: [
      'Spread batter thinly on a sizzling tawa.',
      'Drizzle ghee and roast until crisp.',
      'Stuff with spiced potato masala and fold.',
    ],
  ),
  Recipe(
    id: 12,
    name: 'Belgian Chocolate Brownie',
    category: 'Desserts',
    imageUrl: 'https://images.unsplash.com/photo-1606313564200-e75d5e30476c?auto=format&fit=crop&w=800&q=80',
    description: 'Fudgy, dense chocolate brownies baked with dark Belgian chocolate chunks and a crinkly glossy top.',
    cookingTime: '40 min',
    rating: '5.0',
    calories: '450 kcal',
    ingredients: [
      '200g dark chocolate',
      '100g butter',
      '3/4 cup brown sugar',
      '2 eggs & 1/2 cup flour',
    ],
    steps: [
      'Melt chocolate and butter together.',
      'Whisk eggs and sugar, fold into chocolate.',
      'Bake at 175°C for 22 minutes for a gooey center.',
    ],
  ),
  Recipe(
    id: 13,
    name: 'Mediterranean Greek Salad',
    category: 'Healthy',
    imageUrl: 'https://images.unsplash.com/photo-1540420773420-3366772f4999?auto=format&fit=crop&w=800&q=80',
    description: 'Crisp cucumbers, vine-ripened tomatoes, Kalamata olives, and feta cheese tossed in extra virgin olive oil.',
    cookingTime: '10 min',
    rating: '4.7',
    calories: '240 kcal',
    ingredients: [
      '2 cucumbers & 2 tomatoes',
      '100g Greek Feta cheese',
      'Kalamata olives & oregano',
      'Extra virgin olive oil',
    ],
    steps: [
      'Chop fresh vegetables into a large salad bowl.',
      'Top with feta cubes and Kalamata olives.',
      'Drizzle olive oil and dust with oregano.',
    ],
  ),
  Recipe(
    id: 14,
    name: 'Crispy Veg Spring Rolls',
    category: 'Fast Food',
    imageUrl: 'https://images.unsplash.com/photo-1548507200-343003e67049?auto=format&fit=crop&w=800&q=80',
    description: 'Crunchy golden pastry rolls stuffed with seasoned shredded vegetables and glass noodles.',
    cookingTime: '30 min',
    rating: '4.6',
    calories: '310 kcal',
    ingredients: [
      '8 spring roll wrappers',
      'Cabbage, carrots, bell peppers',
      'Soy sauce & sesame oil',
      'Oil for deep frying',
    ],
    steps: [
      'Stir-fry shredded veggies on high heat.',
      'Wrap tightly inside pastry sheets.',
      'Deep fry until golden and crispy.',
    ],
  ),
  Recipe(
    id: 15,
    name: 'Strawberry Belgian Waffle',
    category: 'Desserts',
    imageUrl: 'https://images.unsplash.com/photo-1562376552-0d160a2f238d?auto=format&fit=crop&w=800&q=80',
    description: 'Deep-pocket Belgian waffle topped with fresh sliced strawberries, whipped cream, and chocolate sauce.',
    cookingTime: '20 min',
    rating: '4.9',
    calories: '410 kcal',
    ingredients: [
      'Waffle batter mix',
      'Fresh sliced strawberries',
      'Whipped cream & syrup',
    ],
    steps: [
      'Pour batter onto a preheated waffle iron.',
      'Cook until steam stops and waffle is golden.',
      'Top generously with strawberries and cream.',
    ],
  ),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';
  String searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  final List<String> categories = [
    'All',
    'Indian',
    'Italian',
    'Breakfast',
    'Fast Food',
    'Desserts',
    'Healthy',
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredRecipes = allRecipes.where((recipe) {
      final matchesCategory = selectedCategory == 'All' ||
          recipe.category.toLowerCase() == selectedCategory.toLowerCase();
      final matchesSearch = recipe.name
          .toLowerCase()
          .contains(searchQuery.toLowerCase()) ||
          recipe.category.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.deepOrange.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.restaurant_menu, color: Colors.deepOrange),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recipe Hub',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F172A),
                  ),
                ),
                Text(
                  'What would you like to cook?',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Color(0xFF0F172A)),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SEARCH BAR
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: (val) {
                    setState(() {
                      searchQuery = val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Search biryani, pasta, pizza...',
                    hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                    prefixIcon: const Icon(Icons.search, color: Colors.deepOrange),
                    suffixIcon: searchQuery.isNotEmpty
                        ? IconButton(
                      icon: const Icon(Icons.clear, color: Colors.grey),
                      onPressed: () {
                        setState(() {
                          _searchController.clear();
                          searchQuery = '';
                        });
                      },
                    )
                        : null,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  ),
                ),
              ),
            ),

            // CATEGORY CHIPS
            SizedBox(
              height: 44,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final cat = categories[index];
                  final isSelected = cat == selectedCategory;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = cat;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.deepOrange : Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: isSelected ? Colors.deepOrange : const Color(0xFFE2E8F0),
                        ),
                      ),
                      child: Text(
                        cat,
                        style: TextStyle(
                          color: isSelected ? Colors.white : const Color(0xFF334155),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),

            // POPULAR RECIPES HEADER
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Popular Recipes 🔥',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F172A),
                ),
              ),
            ),
            const SizedBox(height: 14),

            // POPULAR RECIPES HORIZONTAL CAROUSEL
            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: allRecipes.length,
                itemBuilder: (context, index) {
                  final recipe = allRecipes[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetailScreen(recipe: recipe),
                        ),
                      );
                    },
                    child: Container(
                      width: 190,
                      margin: const EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                            child: Image.network(
                              recipe.imageUrl,
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) => Container(
                                height: 130,
                                color: Colors.grey.shade200,
                                child: const Icon(Icons.restaurant, color: Colors.grey),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recipe.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color(0xFF0F172A),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.star, color: Colors.amber, size: 16),
                                        const SizedBox(width: 4),
                                        Text(
                                          recipe.rating,
                                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      recipe.cookingTime,
                                      style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),

            // ALL RECIPES HEADER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All Recipes',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  Text(
                    '${filteredRecipes.length} found',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),

            // ALL RECIPES VERTICAL LIST
            filteredRecipes.isEmpty
                ? const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Text(
                  'No recipes found matching your search!',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            )
                : ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: filteredRecipes.length,
              itemBuilder: (context, index) {
                final recipe = filteredRecipes[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailScreen(recipe: recipe),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                              child: Image.network(
                                recipe.imageUrl,
                                height: 180,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) => Container(
                                  height: 180,
                                  color: Colors.grey.shade200,
                                  child: const Center(
                                    child: Icon(Icons.restaurant, color: Colors.grey, size: 50),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 12,
                              left: 12,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.65),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  recipe.category,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 12,
                              right: 12,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 6,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.amber, size: 16),
                                    const SizedBox(width: 4),
                                    Text(
                                      recipe.rating,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xFF0F172A),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    recipe.name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0F172A),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.timer_outlined, size: 14, color: Colors.grey),
                                      const SizedBox(width: 4),
                                      Text(
                                        recipe.cookingTime,
                                        style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Text(
                                recipe.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 12, color: Colors.grey.shade600, height: 1.4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320,
            pinned: true,
            backgroundColor: Colors.deepOrange,
            leading: CircleAvatar(
              backgroundColor: Colors.black38,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                recipe.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey.shade200,
                  child: const Icon(Icons.restaurant, size: 60, color: Colors.grey),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          recipe.category,
                          style: TextStyle(
                            color: Colors.deepOrange.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const SizedBox(width: 4),
                          Text(
                            recipe.rating,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    recipe.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    recipe.description,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade700, height: 1.5),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF8FAFC),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade200),
                          ),
                          child: Column(
                            children: [
                              const Icon(Icons.timer_outlined, color: Colors.deepOrange, size: 22),
                              const SizedBox(height: 4),
                              Text(recipe.cookingTime, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF8FAFC),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade200),
                          ),
                          child: Column(
                            children: [
                              const Icon(Icons.local_fire_department_outlined, color: Colors.orange, size: 22),
                              const SizedBox(height: 4),
                              Text(recipe.calories, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    'Ingredients',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0F172A)),
                  ),
                  const SizedBox(height: 12),
                  ...recipe.ingredients.map(
                        (item) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.check_circle, color: Colors.green, size: 18),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(item, style: const TextStyle(fontSize: 14, color: Color(0xFF334155))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Directions / Steps',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0F172A)),
                  ),
                  const SizedBox(height: 12),
                  ...recipe.steps.asMap().entries.map(
                        (entry) => Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.deepOrange,
                            child: Text(
                              '${entry.key + 1}',
                              style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              entry.value,
                              style: const TextStyle(fontSize: 14, color: Color(0xFF334155), height: 1.4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Happy Cooking! Enjoy your meal 👨‍🍳')),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                        elevation: 0,
                      ),
                      icon: const Icon(Icons.restaurant),
                      label: const Text('Start Cooking Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
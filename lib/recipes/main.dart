import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipewise/recipes/recipe.dart';
import 'package:recipewise/recipes/views/recipes_screen.dart';
import 'package:recipewise/theme.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Recipe recipe = Recipe(
      title: "Cranberry Cheeseball",
      description:
          "This cranberry cheese ball with orange zest, sharp white Cheddar cheese, and garlic is simply delicious. The red and green color combination from cranberries and chives make it look extra festive and it's the perfect holiday appetizer.",
      imageUrl:
          "https://www.allrecipes.com/thmb/2oUZc4nK-xuUYYPkIhGLD5SU6Yg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/8726774-Cranberry-Cheese-Ball-ddmfs-hero-4x3-17403-29c16f7a15dc41df9434296721e8e641.jpg",
      author: 'Juliana Hale',
      datePublished: DateTime.parse("2024-11-09"),
      source: "https://www.allrecipes.com/cranberry-cheese-ball-recipe-8726774",
      yield: 16,
      timePrep: 15,
      timeTotal: 255,
      categories: "Snack",
      tags: 'Cheesy Snacks',
      collections: 'Cheesy Goodness',
      directions: """
        1. Gather all ingredients. 
        2. Bring cranberry juice just to a boil in a small saucepan. Remove from heat. Add 1/4 cup dried cranberries. Cover; set aside.
        3. Place cream cheese, Cheddar cheese, and butter in a large bowl. Let stand at room temperature for 30 minutes.
      """,
      ingredients: [
        Ingredient(name: "Cranberry Juice Cocktail", amount: 0.25, unit: 'cup'),
        Ingredient(name: "Dried Cranberries", amount: 0.5, unit: 'cup'),
        Ingredient(name: "Cream Cheese", amount: 8, unit: 'ounce'),
        Ingredient(name: "White Cheddar Cheese", amount: 1, unit: 'cup'),
        Ingredient(name: "Butter", amount: 0.25, unit: 'cup'),
        Ingredient(name: "Fresh Chives", amount: 2, unit: 'tbsp'),
        Ingredient(name: "Orange Zest", amount: 0.5, unit: 'tsp'),
        Ingredient(name: "Brown Sugar", amount: 0.5, unit: 'tsp'),
        Ingredient(name: "Garlic Powder", amount: 0.5, unit: 'tsp'),
        Ingredient(name: "Pecans", amount: 0.25, unit: 'cup'),
        Ingredient(name: "Crackers", amount: 0, unit: 'for serving'),
      ],
    );
    Recipe recipe2 = recipe.copyWith(
      title: "Something different",
    );

    return ChangeNotifierProvider(
      create: (BuildContext context) {
        Recipes recipes = Recipes();
        recipes.addRecipe(recipe);
        recipes.addRecipe(recipe2);
        recipes.addRecipe(recipe);
        return recipes;
      },
      child: MaterialApp(
        theme: theme,
        home: RecipesScreen(),
      ),
    );
  }
}

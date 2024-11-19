import 'package:flutter/material.dart';
import 'package:recipewise/ingredients/ingredient.dart';
import 'package:recipewise/ingredients/nutrition.dart';
import 'package:recipewise/ingredients/view/ingredients.dart';
import 'package:recipewise/theme.dart';

main() {
  Ingredient ingredient = Ingredient(
      name: "Oil",
      code: 4056489166856,
      ingredients: [],
      nutrition: Nutrition(nutrients: [Nutrient(name: "fat", value: 30)]));
  runApp(
    MaterialApp(
      theme: theme,
      home: IngredientsPage(ingredient: ingredient),
    ),
  );
}

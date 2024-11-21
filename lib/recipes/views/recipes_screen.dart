import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipewise/recipes/recipe.dart';
import 'package:recipewise/recipes/views/recipe_page.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Consumer(
          builder: (context, Recipes recipes, child) {
            return ListView.builder(
              itemBuilder: (context, index) {
                Recipe recipe = recipes.getRecipe(index);
                return ListTile(
                  onTap: () async {
                    Recipe? recip = await Navigator.push<Recipe>(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecipePage(recipe: recipe)));
                    recipes.update(index, recip);
                  },
                  leading: Image.network(
                      'https://cors-proxy.logmeinmail.workers.dev/?url=${recipe.imageUrl}'),
                  title: Text(
                    recipe.title,
                    style: textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // subtitle: Text(
                  //   recipe.description,
                  //   style: textTheme.titleLarge?.copyWith(
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  trailing: Icon(Icons.chevron_right),
                );
              },
              itemCount: recipes.recipeCount,
            );
          },
        ),
      ),
    );
  }
}

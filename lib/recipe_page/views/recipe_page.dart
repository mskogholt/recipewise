import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipe_repository/recipe_repository.dart';
import 'package:recipewise/authentication/authentication.dart';

import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';
import 'package:recipewise/recipe_page/widgets/description_widget.dart';
import 'package:recipewise/recipe_page/widgets/directions_widget.dart';
import 'package:recipewise/recipe_page/widgets/image_widget.dart';
import 'package:recipewise/recipe_page/widgets/ingredient_list_widget.dart';
import 'package:recipewise/recipe_page/widgets/title_widget.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RecipeView();
  }
}

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeBloc, RecipeState>(
      builder: (context, state) {
        Recipe recipe = state.recipe;
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Recipe'),
            actions: <Widget>[
              if (state.changed)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FilledButton(
                    onPressed: () {
                      context.read<RecipeBloc>().add(RecipeSavedEvent());
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          body: SafeArea(
            child: Center(
              child: ListView(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 300),
                    child: ImageWidget(imageUrl: recipe.imageUrl),
                  ),
                  TitleWidget(
                    title: recipe.title,
                    author: recipe.author,
                  ),
                  DescriptionWidget(
                    description: recipe.description,
                  ),

                  // Ingredients
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IngredientListWidget(
                      servings: recipe.servings,
                      ingredients: recipe.ingredients,
                    ),
                  ),
                  // Directions
                  DirectionsWidget(recipe: recipe),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipewise/app/app.dart';
import 'package:recipewise/ingredients/ingredient.dart';
import 'package:recipewise/recipes/recipe.dart';

class RecipePage extends StatelessWidget {
  final Recipe recipe;

  const RecipePage({super.key, required this.recipe});

  static Page<void> page(Recipe recipe) {
    return MaterialPage<void>(
      child: RecipePage(
        recipe: recipe,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('Ingredients'),
      //   actions: <Widget>[
      //     IconButton(
      //       key: const Key('RecipePage_logout_iconButton'),
      //       icon: const Icon(Icons.exit_to_app),
      //       onPressed: () {
      //         context.read<AppBloc>().add(const AppLogoutRequested());
      //       },
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Image.network(recipe.imageUrl),
              TitleWidget(recipe: recipe, textTheme: textTheme),
              Container(
                margin: EdgeInsets.fromLTRB(8, 30, 8, 30),
                child: Text(recipe.description),
              ),
              // Ingredients
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IngredientsWidget(
                  recipe: recipe,
                  textTheme: textTheme,
                ),
              ),
              // Directions
              Text(
                "Directions:",
                style: textTheme.titleLarge,
              ),
              Text(
                recipe.directions,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _ingredientsList(List<Ingredient> ingredients) {
  return ingredients
      .map<Widget>((ingredient) => OutlinedButton(
            onPressed: () {},
            // style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
            child: Text(ingredient.toString()),
          ))
      .toList();
}

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({
    super.key,
    required this.recipe,
    required this.textTheme,
  });

  final Recipe recipe;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            offset: Offset(0, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Ingredients",
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            ..._ingredientsList(recipe.ingredients),
          ],
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.recipe,
    required this.textTheme,
  });

  final Recipe recipe;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    Color textColor = Theme.of(context).colorScheme.tertiary;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              offset: Offset(0, 2),
              blurRadius: 5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "RECIPE",
                  style: textTheme.titleMedium?.copyWith(
                    color: textColor,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  recipe.title,
                  style: textTheme.titleLarge?.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "by ",
                      style: textTheme.titleMedium?.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      recipe.author,
                      style: textTheme.titleMedium?.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

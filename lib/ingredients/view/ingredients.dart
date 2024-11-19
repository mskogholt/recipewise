import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipewise/app/app.dart';
import 'package:recipewise/ingredients/ingredient.dart';

class IngredientsPage extends StatelessWidget {
  final Ingredient ingredient;

  const IngredientsPage({super.key, required this.ingredient});

  static Page<void> page(Ingredient ingredient) {
    return MaterialPage<void>(
      child: IngredientsPage(
        ingredient: ingredient,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingredients'),
        actions: <Widget>[
          IconButton(
            key: const Key('ingredientsPage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              context.read<AppBloc>().add(const AppLogoutRequested());
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // TODO: Add picture widget
              Text(
                ingredient.name,
                style: textTheme.titleLarge,
              ),
              Text(
                "${ingredient.packageSize} ${ingredient.unit}",
              ),
              // TODO: Add description?
              // Ingredient list
              Text(
                "Ingredients:",
                style: textTheme.titleLarge,
              ),
              Text(
                ingredient.ingredients.join(","),
              ),
              // Nutrition table:
              Text(
                "Nutrition:",
                style: textTheme.titleLarge,
              ),
              Text(ingredient.nutrition.toString()),
            ],
          ),
        ),
      ),
    );
  }
}

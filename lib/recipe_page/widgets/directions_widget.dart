import 'package:flutter/material.dart';
import 'package:recipe_repository/recipe_repository.dart';

class DirectionsWidget extends StatelessWidget {
  const DirectionsWidget({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        24.0,
        30.0,
        24.0,
        30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Directions:",
            style: textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              recipe.directions,
            ),
          ),
        ],
      ),
    );
  }
}

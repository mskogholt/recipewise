import 'package:flutter/material.dart';
import 'package:recipe_repository/recipe_repository.dart';
import 'package:recipewise/core/widgets/recipe_image.dart';

class TileLeadingImageWidget extends StatelessWidget {
  const TileLeadingImageWidget({
    super.key,
    required this.recipe,
  });

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 35),
      child: RecipeImage(imageUrl: recipe.imageUrl),
    );
  }
}

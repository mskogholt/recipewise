import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_repository/recipe_repository.dart';
import 'package:recipewise/recipe_list/widgets/tile_leading_image_widget.dart';
import 'package:recipewise/recipe_page/bloc/recipe_bloc.dart';
import 'package:recipewise/recipe_page/views/recipe_page.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({
    super.key,
    required this.recipes,
  });

  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        Recipe recipe = recipes[index];
        return ListTile(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (buildContext) {
                  return BlocProvider(
                    create: (innerContext) {
                      return RecipeBloc(
                        recipe: recipe,
                        recipeRepository: context.read<RecipeRepository>(),
                      );
                    },
                    child: RecipePage(),
                  );
                },
              ),
            );
          },
          leading: TileLeadingImageWidget(recipe: recipe),
          title: Text(
            recipe.title,
          ),
          trailing: Icon(Icons.chevron_right),
        );
      },
      itemCount: recipes.length,
    );
  }
}

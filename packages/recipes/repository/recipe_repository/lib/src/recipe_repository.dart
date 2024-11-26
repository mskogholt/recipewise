// ignore_for_file: public_member_api_docs

import 'package:recipe_api/recipe_api.dart' as recipes_api;
import 'package:recipe_repository/recipe_repository.dart';

class RecipeRepository {
  const RecipeRepository({
    required this.recipeApi,
  });
  final recipes_api.RecipeApi recipeApi;

  Stream<List<Recipe>> getRecipes(String uid) {
    return recipeApi.getRecipes(uid).map(
      (List<recipes_api.Recipe> recipes) {
        return recipes.map(
          (recipes_api.Recipe apiRecipe) {
            return Recipe(
              id: apiRecipe.id,
              title: apiRecipe.title,
              description: apiRecipe.description,
              imageUrl: apiRecipe.imageUrl,
              author: '',
              datePublished: DateTime.now(),
              source: '',
              yield: 1,
              timePrep: 1,
              timeTotal: 1,
              categories: '',
              tags: '',
              collections: '',
              directions: '',
              ingredients: const [],
            );
          },
        ).toList();
      },
    );
  }

  Future<void> saveRecipe(String uid, Recipe recipe) {
    return recipeApi.saveRecipe(
      uid,
      recipes_api.Recipe(
        id: recipe.id,
        title: recipe.title,
        description: recipe.description,
        imageUrl: recipe.imageUrl,
      ),
    );
  }

  Future<void> deleteRecipe(String uid, Recipe recipe) {
    return recipeApi.deleteRecipe(
      uid,
      recipe.id,
    );
  }
}

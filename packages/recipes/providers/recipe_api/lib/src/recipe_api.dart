// ignore_for_file: public_member_api_docs

import 'package:recipe_api/recipe_api.dart';

abstract interface class RecipeApi {
  const RecipeApi();

  Stream<List<Recipe>> getRecipes(String uid);

  Future<void> saveRecipe(String uid, Recipe recipe);

  Future<void> deleteRecipe(String uid, String id);

  // TODO(mskogholt): Is this necessary?
  Future<void> close();
}

class RecipeNotFoundException implements Exception {}

// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:recipe_api/recipe_api.dart';

class RecipeRepository {
  const RecipeRepository({
    required this.uid,
    required this.recipeApi,
  });
  final String uid;
  final RecipeApi recipeApi;

  Stream<List<Recipe>> getRecipes() {
    return recipeApi.getRecipes(uid);
  }

  Future<void> saveRecipe(Recipe recipe) {
    return recipeApi.saveRecipe(
      uid,
      recipe,
    );
  }

  Future<void> deleteRecipe(Recipe recipe) {
    return recipeApi.deleteRecipe(
      uid,
      recipe.id,
    );
  }
}

class DummyRecipeRepository implements RecipeRepository {
  final StreamController<List<Recipe>> streamer =
      StreamController<List<Recipe>>();
  final List<Recipe> recipes = [];

  @override
  Stream<List<Recipe>> getRecipes() {
    return streamer.stream;
  }

  @override
  Future<void> saveRecipe(Recipe recipe) async {
    recipes.add(recipe);
    streamer.add(recipes);
    return Future(() {});
  }

  @override
  Future<void> deleteRecipe(Recipe recipe) async {
    recipes.remove(recipe);
    streamer.add(recipes);
    return Future(() {});
  }

  @override
  // TODO: implement recipeApi
  RecipeApi get recipeApi => throw UnimplementedError();

  @override
  // TODO: implement uid
  String get uid => throw UnimplementedError();
}

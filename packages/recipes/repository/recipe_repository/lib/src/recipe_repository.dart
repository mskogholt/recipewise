// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:recipe_api/recipe_api.dart' as api;
import 'package:recipe_repository/recipe_repository.dart';
import 'package:web_recipe_api/web_recipe_api.dart' as web_api;

// This way it is easy to add a conversion method for transforming to and from
// The Recipe API.
extension on api.Recipe {
  Recipe toRecipe() {
    return Recipe(
      id: id,
      title: title,
      description: description,
      imageUrl: imageUrl,
      author: author,
      datePublished: datePublished,
      source: source,
      servings: servings,
      timePrep: timePrep,
      timeTotal: timeTotal,
      categories: categories,
      tags: tags,
      collections: collections,
      directions: directions.map(
        (direction) {
          return Direction(
            stepNumber: int.parse((direction['step'] ?? 0).toString()),
            text: (direction['text'] ?? '') as String,
            url: (direction['url'] ?? '') as String,
          );
        },
      ).toList(),
      ingredients: ingredients.map(
        (ingredient) {
          return Ingredient(
            name: ingredient['name'] as String,
            amount: double.parse(ingredient['amount'].toString()),
            unit: Unit.fromString(ingredient['unit'] as String),
          );
        },
      ).toList(),
    );
  }
}

extension on Recipe {
  api.Recipe toApiRecipe() {
    return api.Recipe(
      id: id,
      title: title,
      description: description,
      imageUrl: imageUrl,
      author: author,
      datePublished: datePublished,
      source: source,
      servings: servings,
      timePrep: timePrep,
      timeTotal: timeTotal,
      categories: categories,
      tags: tags,
      collections: collections,
      directions: directions.map(
        (Direction direction) {
          return {
            'step': '${direction.stepNumber}',
            'text': direction.text,
            'url': direction.url,
          };
        },
      ).toList(),
      ingredients: ingredients.map(
        (Ingredient ingredient) {
          return {
            'name': ingredient.name,
            'amount': ingredient.amount,
            'unit': ingredient.unit.name,
          };
        },
      ).toList(),
    );
  }
}

// Similar extensions for the Web API
extension on web_api.Unit {
  Unit toUnit() {
    return Unit.fromWebUnit(this);
  }
}

extension on web_api.Recipe {
  Recipe toRecipe() {
    return Recipe(
      // TODO(mskogholt): How exactly to generate IDs?
      id: title,
      title: title,
      description: description,
      imageUrl: imageUrl,
      author: author,
      datePublished: datePublished,
      source: source,
      servings: servings,
      timePrep: timePrep,
      timeTotal: timeTotal,
      categories: categories,
      tags: '',
      collections: '',
      directions: directions.map(
        (web_api.Direction direction) {
          return Direction(
            stepNumber: direction.stepNumber,
            text: direction.text,
            url: direction.url,
          );
        },
      ).toList(),
      ingredients: ingredients.map(
        (web_api.Ingredient ingredient) {
          return Ingredient(
            name: ingredient.name,
            amount: ingredient.amount,
            unit: ingredient.unit.toUnit(),
          );
        },
      ).toList(),
    );
  }
}

class RecipeRepository {
  factory RecipeRepository({
    required String uid,
    required api.RecipeApi recipeApi,
  }) {
    return RecipeRepository._(
      uid: uid,
      recipeApi: recipeApi,
      webRecipeApi: const web_api.WebRecipeApi(),
    );
  }

  const RecipeRepository._({
    required this.uid,
    required this.recipeApi,
    required this.webRecipeApi,
  });

  final String uid;
  final api.RecipeApi recipeApi;
  final web_api.WebRecipeApi webRecipeApi;

  Stream<List<Recipe>> getRecipes() {
    return recipeApi.getRecipes(uid).map(
      (List<api.Recipe> recipes) {
        return recipes.map(
          (api.Recipe recipe) {
            return recipe.toRecipe();
          },
        ).toList();
      },
    );
  }

  Future<void> saveRecipe(Recipe recipe) {
    return recipeApi.saveRecipe(
      uid,
      recipe.toApiRecipe(),
    );
  }

  Future<void> deleteRecipe(Recipe recipe) {
    return recipeApi.deleteRecipe(
      uid,
      recipe.id,
    );
  }

  Future<Recipe> extractRecipe(String url) {
    return webRecipeApi.getRecipe(url).then(
      (web_api.Recipe recipe) {
        return recipe.toRecipe();
      },
    );
  }

  Recipe createNewRecipe() {
    return Recipe.empty();
  }
}

class DummyRecipeRepository implements RecipeRepository {
  final StreamController<List<Recipe>> streamer = StreamController<List<Recipe>>();
  final List<Recipe> recipes = [];
  @override
  final webRecipeApi = const web_api.WebRecipeApi();

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
  Recipe createNewRecipe() {
    return Recipe.empty();
  }

  @override
  api.RecipeApi get recipeApi => throw UnimplementedError();

  @override
  String get uid => throw UnimplementedError();

  @override
  Future<Recipe> extractRecipe(String url) {
    return webRecipeApi.getRecipe(url).then(
      (web_api.Recipe recipe) {
        return recipe.toRecipe();
      },
    );
  }
}

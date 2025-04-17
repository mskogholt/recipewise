// ignore_for_file: public_member_api_docs

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:recipe_api/recipe_api.dart';

class FirebaseRecipeApi implements RecipeApi {
  FirebaseRecipeApi({required this.database});
  final FirebaseFirestore database;

  Recipe fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Recipe(
      id: snapshot.id,
      title: data?['title'] as String,
      description: data?['description'] as String,
      imageUrl: data?['imageUrl'] as String,
      author: data?['author'] as String,
      datePublished: (data?['datePublished'] as Timestamp).toDate(),
      source: data?['source'] as String,
      servings: data?['yield'] as int,
      timePrep: data?['timePrep'] as int,
      timeTotal: data?['timeTotal'] as int,
      categories: data?['categories'] as String,
      tags: data?['tags'] as String,
      collections: data?['collections'] as String,
      directions: (data?['directions'] as List).map(
        (direction) {
          return direction as Map<String, dynamic>;
          // return (direction as Map<String, dynamic>)
          //     .map((String key, dynamic value) {
          //   return MapEntry(key, value as String);
          // });
        },
      ).toList(),
      ingredients: (data?['ingredients'] as List).map(
        (ingredient) {
          return ingredient as Map<String, dynamic>;
        },
      ).toList(),
    );
  }

  Map<String, dynamic> toFirestore(Recipe recipe) {
    return {
      'id': recipe.id,
      'title': recipe.title,
      'description': recipe.description,
      'imageUrl': recipe.imageUrl,
      'author': recipe.author,
      'datePublished': recipe.datePublished,
      'source': recipe.source,
      'yield': recipe.servings,
      'timePrep': recipe.timePrep,
      'timeTotal': recipe.timeTotal,
      'categories': recipe.categories,
      'tags': recipe.tags,
      'collections': recipe.collections,
      'directions': recipe.directions,
      'ingredients': recipe.ingredients,
    };
  }

  @override
  Stream<List<Recipe>> getRecipes(String uid) {
    final recipesRef =
        database.collection('recipes').doc(uid).collection('saved_recipes');
    final convertedRecipesRef = recipesRef.withConverter(
      fromFirestore: fromFirestore,
      toFirestore: (Recipe recipe, _) => toFirestore(recipe),
    );
    return convertedRecipesRef.snapshots().map(
      (QuerySnapshot<Recipe> recipes) {
        return recipes.docs.map(
          (QueryDocumentSnapshot<Recipe> recipe) {
            return recipe.data();
          },
        ).toList();
      },
    );
  }

  @override
  Future<void> saveRecipe(String uid, Recipe recipe) {
    if (recipe.id != '') {
      return database
          .collection('recipes')
          .doc(uid)
          .collection('saved_recipes')
          .withConverter(
            fromFirestore: fromFirestore,
            toFirestore: (Recipe recipe, _) => toFirestore(recipe),
          )
          .doc(recipe.id)
          .set(recipe);
    } else {
      return database
          .collection('recipes')
          .doc(uid)
          .collection('saved_recipes')
          .withConverter(
            fromFirestore: fromFirestore,
            toFirestore: (Recipe recipe, _) => toFirestore(recipe),
          )
          .add(recipe);
    }
  }

  @override
  Future<void> deleteRecipe(String uid, String id) {
    database
        .collection('recipes')
        .doc(uid)
        .collection('saved_recipes')
        .doc(id)
        .delete();
    return Future(() {});
  }

  @override
  Future<void> close() {
    throw UnimplementedError();
  }
}

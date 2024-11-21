import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Ingredient extends Equatable {
  final String name;
  final double amount;
  final String unit;

  const Ingredient({
    required this.name,
    required this.amount,
    required this.unit,
  });

  @override
  List<Object?> get props => [name, amount, unit];

  Ingredient changeName(String name) {
    return Ingredient(name: name, amount: amount, unit: unit);
  }

  Ingredient changeAmount(double amount) {
    return Ingredient(name: name, amount: amount, unit: unit);
  }

  Ingredient changeUnit(String unit) {
    return Ingredient(name: name, amount: amount, unit: unit);
  }
}

// class Recipe extends Equatable {
//   final String title;
//   final String description;
//   final String imageUrl;

//   final String author;
//   final DateTime datePublished;
//   final String source;

//   final int yield;
//   final int timePrep;
//   final int timeTotal;

//   final String categories;
//   final String tags;
//   final String collections;

//   final String directions;

//   final List<Ingredient> ingredients;

//   const Recipe({
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//     required this.author,
//     required this.datePublished,
//     required this.source,
//     required this.yield,
//     required this.timePrep,
//     required this.timeTotal,
//     required this.categories,
//     required this.tags,
//     required this.collections,
//     required this.directions,
//     required this.ingredients,
//   });

//   @override
//   List<Object?> get props => [title];

//   Recipe copyWith({
//     String? title,
//     String? description,
//     String? imageUrl,
//     String? author,
//     DateTime? datePublished,
//     String? source,
//     int? yield,
//     int? timePrep,
//     int? timeTotal,
//     String? categories,
//     String? tags,
//     String? collections,
//     String? directions,
//     List<Ingredient>? ingredients,
//   }) {
//     return Recipe(
//       title: title ?? this.title,
//       description: description ?? this.description,
//       imageUrl: imageUrl ?? this.imageUrl,
//       author: author ?? this.author,
//       datePublished: datePublished ?? this.datePublished,
//       source: source ?? this.source,
//       yield: yield ?? this.yield,
//       timePrep: timePrep ?? this.timePrep,
//       timeTotal: timeTotal ?? this.timeTotal,
//       categories: categories ?? this.categories,
//       tags: tags ?? this.tags,
//       collections: collections ?? this.collections,
//       directions: directions ?? this.directions,
//       ingredients: ingredients ?? this.ingredients,
//     );
//   }
// }

class Recipe {
  String title;
  String description;
  String imageUrl;

  String author;
  DateTime datePublished;
  String source;

  int yield;
  int timePrep;
  int timeTotal;

  String categories;
  String tags;
  String collections;

  String directions;

  List<Ingredient> ingredients;

  Recipe({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.author,
    required this.datePublished,
    required this.source,
    required this.yield,
    required this.timePrep,
    required this.timeTotal,
    required this.categories,
    required this.tags,
    required this.collections,
    required this.directions,
    required this.ingredients,
  });

  Recipe copyWith({
    String? title,
    String? description,
    String? imageUrl,
    String? author,
    DateTime? datePublished,
    String? source,
    int? yield,
    int? timePrep,
    int? timeTotal,
    String? categories,
    String? tags,
    String? collections,
    String? directions,
    List<Ingredient>? ingredients,
  }) {
    return Recipe(
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      author: author ?? this.author,
      datePublished: datePublished ?? this.datePublished,
      source: source ?? this.source,
      yield: yield ?? this.yield,
      timePrep: timePrep ?? this.timePrep,
      timeTotal: timeTotal ?? this.timeTotal,
      categories: categories ?? this.categories,
      tags: tags ?? this.tags,
      collections: collections ?? this.collections,
      directions: directions ?? this.directions,
      ingredients: ingredients ?? this.ingredients,
    );
  }
}

class Recipes extends ChangeNotifier {
  final List<Recipe> _recipes = [];

  int get recipeCount {
    return _recipes.length;
  }

  Recipe getRecipe(int index) {
    return _recipes[index];
  }

  void addRecipe(Recipe recipe) {
    _recipes.add(recipe);
    notifyListeners();
  }

  void deleteRecipe(int index) {
    _recipes.removeAt(index);
    notifyListeners();
  }

  void update(int index, Recipe? recipe) {
    _recipes[index] = recipe ?? _recipes[index];
    notifyListeners();
  }
}

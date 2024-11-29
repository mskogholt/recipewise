// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

class Ingredient extends Equatable {
  const Ingredient({
    required this.name,
    required this.amount,
    required this.unit,
  });
  final String name;
  final double amount;
  final String unit;

  @override
  List<Object?> get props => [name, amount, unit];

  Ingredient copyWith({String? name, double? amount, String? unit}) {
    return Ingredient(
      name: name ?? this.name,
      amount: amount ?? this.amount,
      unit: unit ?? this.unit,
    );
  }
}

class Recipe extends Equatable {
  const Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.author,
    required this.datePublished,
    required this.source,
    required this.servings,
    required this.timePrep,
    required this.timeTotal,
    required this.categories,
    required this.tags,
    required this.collections,
    required this.directions,
    required this.ingredients,
  });

  Recipe.empty()
      : id = '',
        title = '',
        description = '',
        imageUrl = '',
        author = '',
        datePublished = DateTime.now(),
        source = '',
        servings = 0,
        timePrep = 0,
        timeTotal = 0,
        categories = '',
        tags = '',
        collections = '',
        directions = '',
        ingredients = const [];

  final String id;
  final String title;
  final String description;
  final String imageUrl;

  final String author;
  final DateTime datePublished;
  final String source;

  final int servings;
  final int timePrep;
  final int timeTotal;

  final String categories;
  final String tags;
  final String collections;

  final String directions;

  final List<Ingredient> ingredients;

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        imageUrl,
        author,
        datePublished,
        source,
        servings,
        timePrep,
        timeTotal,
        categories,
        tags,
        collections,
        directions,
        ...ingredients,
      ];

  Recipe changeServingSize({
    required int newServings,
  }) {
    final multiplier = newServings / servings;
    final multipliedIngredients = <Ingredient>[];

    for (final ingredient in ingredients) {
      multipliedIngredients.add(
        ingredient.copyWith(
          amount: ingredient.amount * multiplier,
        ),
      );
    }

    return copyWith(
      servings: newServings,
      ingredients: multipliedIngredients,
    );
  }

  Recipe changeIngredient({
    required Ingredient currentIngredient,
    required Ingredient newIngredient,
  }) {
    final newIngredients = <Ingredient>[];
    for (final ingredient in ingredients) {
      if (ingredient == currentIngredient) {
        newIngredients.add(newIngredient);
      } else {
        newIngredients.add(ingredient);
      }
    }
    return copyWith(ingredients: newIngredients);
  }

  Recipe addIngredient({
    required Ingredient newIngredient,
  }) {
    final newIngredients = <Ingredient>[
      ...ingredients,
      newIngredient,
    ];
    return copyWith(ingredients: newIngredients);
  }

  Recipe deleteIngredient({required Ingredient ingredientToDelete}) {
    final newIngredients = <Ingredient>[
      ...ingredients,
    ]..remove(
        ingredientToDelete,
      );
    return copyWith(
      ingredients: newIngredients,
    );
  }

  Recipe copyWith({
    String? title,
    String? description,
    String? imageUrl,
    String? author,
    DateTime? datePublished,
    String? source,
    int? servings,
    int? timePrep,
    int? timeTotal,
    String? categories,
    String? tags,
    String? collections,
    String? directions,
    List<Ingredient>? ingredients,
  }) {
    return Recipe(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      author: author ?? this.author,
      datePublished: datePublished ?? this.datePublished,
      source: source ?? this.source,
      servings: servings ?? this.servings,
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

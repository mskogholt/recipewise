// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

import 'package:web_recipe_api/web_recipe_api.dart';

class Recipe extends Equatable {
  const Recipe({
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
    required this.directions,
    required this.ingredients,
  });

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

  final List<Direction> directions;

  final List<Ingredient> ingredients;

  @override
  List<Object?> get props => [
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
        ...directions,
        ...ingredients,
      ];

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
    List<Direction>? directions,
    List<Ingredient>? ingredients,
  }) {
    return Recipe(
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
      directions: directions ?? this.directions,
      ingredients: ingredients ?? this.ingredients,
    );
  }
}

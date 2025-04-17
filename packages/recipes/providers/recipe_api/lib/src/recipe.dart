// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

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

  final List<Map<String, dynamic>> directions;

  final List<Map<String, dynamic>> ingredients;

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
        ingredients,
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
    String? tags,
    String? collections,
    List<Map<String, dynamic>>? directions,
    List<Map<String, dynamic>>? ingredients,
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

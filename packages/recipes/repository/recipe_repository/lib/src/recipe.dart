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
    required this.yield,
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

  final int yield;
  final int timePrep;
  final int timeTotal;

  final String categories;
  final String tags;
  final String collections;

  final String directions;

  final List<Ingredient> ingredients;

  @override
  List<Object?> get props => [title];

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
      id: id,
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

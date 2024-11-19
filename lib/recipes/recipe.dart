import 'package:equatable/equatable.dart';
import 'package:recipewise/ingredients/ingredient.dart';

class Recipe extends Equatable {
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
  // TODO: Get nutrition from ingredients

  const Recipe({
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

  @override
  List<Object?> get props => [title];
}

import 'package:equatable/equatable.dart';
import 'package:recipe_repository/recipe_repository.dart';

/// An ingredient of a recipe. It is made up of a name, an amount, and an unit.
///
/// To create an [Ingredient] use as follows:
///
/// ```dart
/// Ingredient(
///   name: '<ingredient name>',
///   amount: 2.5,
///   unit: 'teaspoon'
/// );
/// ```
class Ingredient extends Equatable {
  ///
  const Ingredient({
    required this.name,
    required this.amount,
    required this.unit,
  });

  ///
  final String name;

  ///
  final double amount;

  ///
  final Unit unit;

  @override
  List<Object?> get props => [name, amount, unit];

  ///
  Ingredient copyWith({String? name, double? amount, Unit? unit}) {
    return Ingredient(
      name: name ?? this.name,
      amount: amount ?? this.amount,
      unit: unit ?? this.unit,
    );
  }
}

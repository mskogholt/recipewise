import 'package:equatable/equatable.dart';
import 'package:fraction/fraction.dart';
import 'package:web_recipe_api/web_recipe_api.dart';

/// An ingredient of a recipe. It is made up of a name, an amount, and an unit.
///
/// To create an [Ingredient] use on of the following constructors:
///
/// ```dart
/// Ingredient(
///   name: '<ingredient name>',
///   amount: 2.5,
///   unit: 'teaspoon'
/// );
///
/// Ingredient.fromString('2.5 teaspoon <ingredient name>');
/// ```
class Ingredient extends Equatable {
  ///
  const Ingredient({
    required this.name,
    required this.amount,
    required this.unit,
  });

  ///
  factory Ingredient.fromString(String ingredient) {
    final regExp = RegExp(
      r'^(?<amount>(\p{N}+(\s\p{N})?([.,/-]\p{N})?)+)',
      unicode: true,
    );

    final match = regExp.firstMatch(ingredient);

    if (match != null) {
      final amountText = match.namedGroup('amount') ?? '0';
      var name = ingredient.replaceFirst(regExp, '').trim();
      final unit = Unit.fromString(name);
      if (unit is! NoUnit) {
        name = name.replaceFirst(unit.regularExpression, '').trim();
      }
      return Ingredient(
        name: name,
        amount: parseDouble(amountText),
        unit: unit,
      );
    }
    return Ingredient(name: ingredient, amount: 0, unit: const NoUnit());
  }

  ///
  final String name;

  ///
  final double amount;

  ///
  final Unit unit;

  ///
  static double parseDouble(String amount) {
    var amountText = amount;
    if (amount.contains(',') && !amount.contains('.')) {
      amountText = amount.replaceFirst(',', '.');
    }
    try {
      try {
        final frac = MixedFraction.fromString(amountText);
        return frac.toDouble();
      } catch (_) {}
      try {
        final frac = Fraction.fromString(amountText);
        return frac.toDouble();
      } catch (_) {}
      try {
        final frac = Fraction.fromGlyph(amountText);
        return frac.toDouble();
      } catch (_) {}
      final amount = double.parse(amountText);
      return amount;
    } catch (_) {}
    return 0;
  }

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

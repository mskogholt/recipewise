import 'package:equatable/equatable.dart';
import 'package:recipewise/ingredients/nutrition.dart';

class Ingredient {
  final String name;
  final int barCode;

  final String unit;
  final double amount;
  final String packageSize;

  // TODO: Make constant, check
  // http://medium.com/flutter-community/flutter-bloc-for-beginners-839e22adb9f5
  List<Ingredient> ingredients = [];

  final Nutrition nutrition;

  factory Ingredient(
      {required name,
      int? barCode,
      String? unit,
      double? amount,
      String? packageSize,
      List<Ingredient>? ingredients,
      Nutrition? nutrition}) {
    return Ingredient._(
        name: name,
        barCode: barCode ?? -1,
        unit: unit ?? '',
        amount: amount ?? 0.0,
        packageSize: packageSize ?? '',
        ingredients: ingredients ?? [],
        nutrition: nutrition ?? Nutrition(nutrients: []));
  }

  Ingredient._({
    required this.name,
    required this.barCode,
    required this.unit,
    required this.amount,
    required this.packageSize,
    required this.ingredients,
    required this.nutrition,
  });

  @override
  String toString() {
    return '${amount == 0 ? '' : amount} $unit $name';
  }
}

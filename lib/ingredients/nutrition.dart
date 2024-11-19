import 'package:equatable/equatable.dart';

class Nutrition extends Equatable {
  final List<Nutrient> nutrients;

  const Nutrition({required this.nutrients});

  @override
  List<Object?> get props => nutrients;

  @override
  String toString() {
    return "Fat: 3gr";
  }
}

class Nutrient extends Equatable {
  final String name;
  final double value;

  const Nutrient({required this.name, required this.value});

  @override
  List<Object?> get props => [name, value];
}

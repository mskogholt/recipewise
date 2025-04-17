// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:web_recipe_api/web_recipe_api.dart' as web_api;

sealed class Unit extends Equatable {
  const Unit({required this.name});
  factory Unit.fromString(String unit) {
    switch (unit) {
      case 'mL':
        return const Milliliter();
      case 'dL':
        return const Deciliter();
      case 'l':
        return const Liter();
      case 'Cup':
        return const Cup();
      case 'Teaspoon':
        return const Teaspoon();
      case 'Tablespoon':
        return const Tablespoon();
      case 'g':
        return const Gram();
      case 'kg':
        return const Kilogram();
      case 'oz.':
        return const Ounce();
      case 'lb.':
        return const Pound();
      case 'cm':
        return const Centimeter();
      default:
        return NoUnit(name: unit);
    }
  }
  factory Unit.fromWebUnit(web_api.Unit unit) {
    switch (unit) {
      case web_api.NoUnit():
        return const NoUnit();
      case web_api.Milliliter():
        return const Milliliter();
      case web_api.Deciliter():
        return const Deciliter();
      case web_api.Liter():
        return const Liter();
      case web_api.Cup():
        return const Cup();
      case web_api.Teaspoon():
        return const Teaspoon();
      case web_api.Tablespoon():
        return const Tablespoon();
      case web_api.Gram():
        return const Gram();
      case web_api.Kilogram():
        return const Kilogram();
      case web_api.Ounce():
        return const Ounce();
      case web_api.Pound():
        return const Pound();
      case web_api.Centimeter():
        return const Centimeter();
    }
  }
  final String name;

  double fromStandardUnit(double standardUnit);
  double toStandardUnit(double amount);

  @override
  List<Object?> get props => [name];
}

class NoUnit extends Unit {
  const NoUnit({super.name = ''}) : super();

  static const int unitsPerUnit = 1;

  @override
  double toStandardUnit(double amount) {
    return amount * unitsPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / unitsPerUnit;
  }
}

/// Volume Units

class Milliliter extends Unit {
  const Milliliter() : super(name: 'mL');

  static const int mlPerUnit = 1;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }
}

class Deciliter extends Unit {
  const Deciliter() : super(name: 'dL');

  static const int mlPerUnit = 100;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }
}

class Liter extends Unit {
  const Liter() : super(name: 'l');

  static const int mlPerUnit = 1000;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }
}

class Cup extends Unit {
  const Cup() : super(name: 'Cup');

  static const int mlPerUnit = 240;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }
}

class Teaspoon extends Unit {
  const Teaspoon() : super(name: 'Teaspoon');

  static const int mlPerUnit = 5;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }
}

class Tablespoon extends Unit {
  const Tablespoon() : super(name: 'Tablespoon');

  static const int mlPerUnit = 15;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }
}

/// Weight Units

class Gram extends Unit {
  const Gram() : super(name: 'g');

  static const int gramPerUnit = 1;

  @override
  double toStandardUnit(double amount) {
    return amount * gramPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / gramPerUnit;
  }
}

class Kilogram extends Unit {
  const Kilogram() : super(name: 'kg');

  static const int gramPerUnit = 1000;

  @override
  double toStandardUnit(double amount) {
    return amount * gramPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / gramPerUnit;
  }
}

class Ounce extends Unit {
  const Ounce() : super(name: 'oz.');
  static const int gramPerUnit = 30;

  @override
  double toStandardUnit(double amount) {
    return amount * gramPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / gramPerUnit;
  }
}

class Pound extends Unit {
  const Pound() : super(name: 'lb.');

  static const int gramPerUnit = 480;

  @override
  double toStandardUnit(double amount) {
    return amount * gramPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / gramPerUnit;
  }
}

/// Length Units

class Centimeter extends Unit {
  const Centimeter() : super(name: 'cm');

  static const int cmPerUnit = 1;

  @override
  double toStandardUnit(double amount) {
    return amount * cmPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / cmPerUnit;
  }
}

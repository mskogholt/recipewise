// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

sealed class Unit extends Equatable {
  const Unit({required this.name});

  factory Unit.fromString(String unit) {
    // Volume
    if (Milliliter.regExp.hasMatch(unit)) {
      return const Milliliter();
    }
    if (Deciliter.regExp.hasMatch(unit)) {
      return const Deciliter();
    }
    if (Liter.regExp.hasMatch(unit)) {
      return const Liter();
    }
    if (Cup.regExp.hasMatch(unit)) {
      return const Cup();
    }
    if (Teaspoon.regExp.hasMatch(unit)) {
      return const Teaspoon();
    }
    if (Tablespoon.regExp.hasMatch(unit)) {
      return const Tablespoon();
    }

    // Weight
    if (Gram.regExp.hasMatch(unit)) {
      return const Gram();
    }
    if (Kilogram.regExp.hasMatch(unit)) {
      return const Kilogram();
    }
    if (Ounce.regExp.hasMatch(unit)) {
      return const Ounce();
    }
    if (Pound.regExp.hasMatch(unit)) {
      return const Pound();
    }

    // Length
    if (Centimeter.regExp.hasMatch(unit)) {
      return const Centimeter();
    }
    return const NoUnit();
  }
  final String name;

  double fromStandardUnit(double standardUnit);
  double toStandardUnit(double amount);
  RegExp get regularExpression;

  @override
  List<Object?> get props => [name];
}

class NoUnit extends Unit {
  const NoUnit() : super(name: '');
  static final regExp = RegExp('.');

  static const int unitsPerUnit = 1;

  @override
  double toStandardUnit(double amount) {
    return amount * unitsPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / unitsPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

/// Volume Units

class Milliliter extends Unit {
  const Milliliter() : super(name: 'mL');
  static final regExp = RegExp(
    r'^(milli(liter|litre)s?\.?|mls?\.?)\s',
    caseSensitive: false,
  );

  static const int mlPerUnit = 1;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

class Deciliter extends Unit {
  const Deciliter() : super(name: 'dL');
  static final regExp = RegExp(
    r'^(deci(liter|litre)s?\.?|dls?\.?)\s',
    caseSensitive: false,
  );

  static const int mlPerUnit = 100;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

class Liter extends Unit {
  const Liter() : super(name: 'l');
  static final regExp = RegExp(
    r'^((liter|litre)s?\.?|[lL]s?\.?)\s',
    caseSensitive: false,
  );

  static const int mlPerUnit = 1000;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

class Cup extends Unit {
  const Cup() : super(name: 'Cup');

  static final regExp = RegExp(
    r'^(cups?\.?|cs?\.?)\s',
    caseSensitive: false,
  );
  static const int mlPerUnit = 240;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

class Teaspoon extends Unit {
  const Teaspoon() : super(name: 'Teaspoon');

  static final regExp = RegExp(
    r'(teaspoons?\.?|tsps?\.?)',
    caseSensitive: false,
  );
  static const int mlPerUnit = 5;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

class Tablespoon extends Unit {
  const Tablespoon() : super(name: 'Tablespoon');

  static final regExp = RegExp(
    r'(tablespoons?\.?|tbsp?s?\.?)',
    caseSensitive: false,
  );
  static const int mlPerUnit = 15;

  @override
  double toStandardUnit(double amount) {
    return amount * mlPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / mlPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

/// Weight Units

class Gram extends Unit {
  const Gram() : super(name: 'g');
  static final regExp = RegExp(
    r'^((gram|gramme)s?\.?|gr?s?\.?)\s',
    caseSensitive: false,
  );

  static const int gramPerUnit = 1;

  @override
  double toStandardUnit(double amount) {
    return amount * gramPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / gramPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

class Kilogram extends Unit {
  const Kilogram() : super(name: 'kg');
  static final regExp = RegExp(
    r'^(kilo(gram|gramme)?s?\.?|kgr?s?\.?)\s',
    caseSensitive: false,
  );

  static const int gramPerUnit = 1000;

  @override
  double toStandardUnit(double amount) {
    return amount * gramPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / gramPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

class Ounce extends Unit {
  const Ounce() : super(name: 'oz.');
  static final regExp = RegExp(
    r'^(ounces?\.?|ozs?\.?)\s',
    caseSensitive: false,
  );

  static const int gramPerUnit = 30;

  @override
  double toStandardUnit(double amount) {
    return amount * gramPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / gramPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

class Pound extends Unit {
  const Pound() : super(name: 'lb.');
  static final regExp = RegExp(
    r'^(pounds?\.?|lbs?\.?)\s',
    caseSensitive: false,
  );

  static const int gramPerUnit = 480;

  @override
  double toStandardUnit(double amount) {
    return amount * gramPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / gramPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

/// Length Units

class Centimeter extends Unit {
  const Centimeter() : super(name: 'cm');
  static final regExp = RegExp(
    r'^(centi(meter|metre)?s?\.?|cms?\.?)\s',
    caseSensitive: false,
  );

  static const int cmPerUnit = 1;

  @override
  double toStandardUnit(double amount) {
    return amount * cmPerUnit;
  }

  @override
  double fromStandardUnit(double standardUnit) {
    return standardUnit / cmPerUnit;
  }

  @override
  RegExp get regularExpression => regExp;
}

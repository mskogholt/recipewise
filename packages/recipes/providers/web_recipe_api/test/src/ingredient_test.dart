import 'package:test/test.dart';
import 'package:web_recipe_api/web_recipe_api.dart';

void main() {
  group('Ingredient', () {
    test('parses double correctly', () {
      var input = '2';
      var output = Ingredient.parseDouble(input);
      var expected = 2.0;

      expect(output, expected);

      input = '1/2';
      output = Ingredient.parseDouble(input);
      expected = 0.5;

      expect(output, expected);

      input = '3.75';
      output = Ingredient.parseDouble(input);
      expected = 3.75;

      expect(output, expected);

      input = '3,75';
      output = Ingredient.parseDouble(input);
      expected = 3.75;

      expect(output, expected);

      input = '½';
      output = Ingredient.parseDouble(input);
      expected = 0.5;

      expect(output, expected);

      input = '1 1/2';
      output = Ingredient.parseDouble(input);
      expected = 1.5;

      expect(output, expected);

      input = '124 1/2';
      output = Ingredient.parseDouble(input);
      expected = 124.5;

      expect(output, expected);

      input = '124 12/24';
      output = Ingredient.parseDouble(input);
      expected = 124.5;

      expect(output, expected);
    });

    test('parses strings correctly', () {
      var input = '2 tablespoons snipped fresh chives, divided';
      var output = Ingredient.fromString(input);
      var expected = const Ingredient(
        name: 'snipped fresh chives, divided',
        amount: 2,
        unit: Tablespoon(),
      );

      expect(output, expected);

      input = '1/2 teaspoon orange zest';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: 'orange zest',
        amount: 0.5,
        unit: Teaspoon(),
      );

      expect(output, expected);

      input = 'Â½ tsp salt';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: 'Â½ tsp salt',
        amount: 0,
        unit: NoUnit(),
      );

      expect(output, expected);

      input = '1 (8-ounce) pkg. cream cheese';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: '(8-ounce) pkg. cream cheese',
        amount: 1,
        unit: NoUnit(),
      );

      expect(output, expected);

      input = 'Crackers, crostini, and/or vegetable dippers';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: 'Crackers, crostini, and/or vegetable dippers',
        amount: 0,
        unit: NoUnit(),
      );
      expect(output, expected);

      input = '3.75 g verse munt';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: 'verse munt',
        amount: 3.75,
        unit: Gram(),
      );
      expect(output, expected);

      input = '3,75 g verse munt';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: 'verse munt',
        amount: 3.75,
        unit: Gram(),
      );
      expect(output, expected);

      input = '½ teaspoon ground cumin';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: 'ground cumin',
        amount: 0.5,
        unit: Teaspoon(),
      );

      expect(output, expected);

      input = '1 1/2 teaspoon orange zest';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: 'orange zest',
        amount: 1.5,
        unit: Teaspoon(),
      );

      expect(output, expected);

      input = '124 1/2 teaspoon orange zest';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: 'orange zest',
        amount: 124.5,
        unit: Teaspoon(),
      );
      expect(output, expected);

      input = '124 12/24 teaspoon orange zest';
      output = Ingredient.fromString(input);
      expected = const Ingredient(
        name: 'orange zest',
        amount: 124.5,
        unit: Teaspoon(),
      );

      expect(output, expected);
    });
  });
}

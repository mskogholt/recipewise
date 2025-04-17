// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:test/test.dart';
import 'package:web_recipe_api/web_recipe_api.dart';

import 'recipe_test_cases/html_test_case_input.dart';
import 'recipe_test_cases/json_test_case_input.dart';
import 'recipe_test_cases/recipe_test_case_input.dart';

void main() {
  group('WebRecipeApi', () {
    test('can be instantiated', () {
      expect(WebRecipeApi(), isNotNull);
    });

    test('can parse html', () {
      final api = WebRecipeApi();

      for (final testLink in htmlTestCases.keys) {
        final input = htmlTestCases[testLink]!;
        final output = api.extractRecipeJson(input);
        final expected = htmlJsonExpected[testLink];

        expect(output, expected);
      }
    });

    test('can parse Recipe', () {
      final api = WebRecipeApi();

      for (final testLink in recipesExpected.keys) {
        final input = htmlJsonExpected[testLink]!;
        final output = api.parseRecipe(input);
        final expected = recipesExpected[testLink]!.copyWith(source: '');

        for (var i = 0; i < expected.directions.length; i++) {
          expect(output.directions[i], expected.directions[i]);
        }

        for (var i = 0; i < expected.ingredients.length; i++) {
          expect(output.ingredients[i], expected.ingredients[i]);
        }

        expect(output, expected);
      }
    });
  });
}

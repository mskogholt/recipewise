// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:html/parser.dart';

import 'package:http/http.dart' as http;
import 'package:web_recipe_api/src/direction.dart';

import 'package:web_recipe_api/web_recipe_api.dart';

/// {@template web_recipe_api}
/// API for retrieving recipes from web sources
/// {@endtemplate}
class WebRecipeApi {
  /// {@macro web_recipe_api}
  const WebRecipeApi();

  Future<Recipe> getRecipe(String url) async {
    final urlUri = Uri.parse(url);
    final response = await http.get(urlUri);
    final json = extractRecipeJson(response.body);
    // TODO(mskogholt): Handle missing recipe?
    final recipe = parseRecipe(json);
    return recipe;
  }

  Recipe parseRecipe(Map<String, dynamic> json) {
    return Recipe(
      title: getTitle(json),
      description: getDescription(json),
      imageUrl: getImageUrl(json),
      author: getAuthor(json),
      datePublished: getDatePublished(json),
      source: '',
      servings: getServings(json),
      timePrep: getTimePrep(json),
      timeTotal: getTimeTotal(json),
      categories: getCategories(json),
      directions: getDirections(json),
      ingredients: getIngredients(json),
    );
  }

  String getTitle(Map<String, dynamic> json) {
    try {
      if (json.containsKey('name')) {
        return json['name'] as String;
      }
    } catch (_) {}
    return '';
  }

  String getDescription(Map<String, dynamic> json) {
    try {
      if (json.containsKey('description')) {
        return json['description'] as String;
      }
    } catch (_) {}
    return '';
  }

  String getImageUrl(Map<String, dynamic> json) {
    try {
      if (json.containsKey('image')) {
        var image = json['image'];
        if (image is List && image.isNotEmpty) {
          image = image.first;
        }

        if (image is Map && image.containsKey('url')) {
          image = image['url'];
        }

        if (image is String) {
          return image;
        }
      }
    } catch (_) {}
    return '';
  }

  String getAuthor(Map<String, dynamic> json) {
    try {
      if (json.containsKey('author')) {
        var author = json['author'];
        if (author is List && author.isNotEmpty) {
          author = author.first;
        }

        if (author is Map && author.containsKey('name')) {
          author = author['name'];
        }

        if (author is String) {
          return author;
        }
      }
    } catch (_) {}
    return '';
  }

  DateTime getDatePublished(Map<String, dynamic> json) {
    try {
      if (json.containsKey('datePublished')) {
        final datePublished = json['datePublished'];
        return DateTime.parse(datePublished as String);
      }
    } catch (_) {}
    return DateTime.now();
  }

  int getServings(Map<String, dynamic> json) {
    try {
      if (json.containsKey('recipeYield')) {
        var yield = json['recipeYield'];
        if (yield is List && yield.isNotEmpty) {
          yield = yield.first;
        }
        if (yield is int) {
          return yield;
        }
        return int.parse(yield as String);
      }
    } catch (_) {}
    return 0;
  }

  int _getTimeFromIsoNotation(String time) {
    try {
      final regExp = RegExp(
        r'P((?<Years>\d+)Y)?((?<Months>\d+)M)?((?<Days>\d+)D)'
        r'?T?((?<Hours>\d+)H)?((?<Minutes>\d+)M)?((?<Seconds>\d+)S)?',
      );
      final match = regExp.firstMatch(time);

      if (match != null) {
        final hours = int.parse(match.namedGroup('Hours') ?? '0');
        final minutes = int.parse(match.namedGroup('Minutes') ?? '0');

        return hours * 60 + minutes;
      }
    } catch (_) {}
    return 0;
  }

  int getTimePrep(Map<String, dynamic> json) {
    try {
      if (json.containsKey('prepTime')) {
        return _getTimeFromIsoNotation(
          json['prepTime'] as String,
        );
      }
    } catch (_) {}
    return 0;
  }

  int getTimeTotal(Map<String, dynamic> json) {
    try {
      if (json.containsKey('totalTime')) {
        return _getTimeFromIsoNotation(
          json['totalTime'] as String,
        );
      }
    } catch (_) {}
    return 0;
  }

  String getCategories(Map<String, dynamic> json) {
    try {
      if (json.containsKey('recipeCategory')) {
        final categories = json['recipeCategory'];
        if (categories is List) {
          return categories.join(', ');
        }

        return categories as String;
      }
    } catch (_) {}
    return '';
  }

  List<Direction> getDirections(Map<String, dynamic> json) {
    try {
      if (json.containsKey('recipeInstructions')) {
        final directions = json['recipeInstructions'] as List;

        final steps = <Direction>[];
        for (var i = 0; i < directions.length; i++) {
          final direction = directions[i] as Map<String, dynamic>;
          var step = Direction(
            stepNumber: i + 1,
            text: direction['text'] as String,
            url: '',
          );

          try {
            if (direction.containsKey('image')) {
              final imageMap = direction['image'];
              var url = '';
              if (imageMap is Map) {
                url = imageMap['url'] as String;
              }
              if (imageMap is List<Map>) {
                url = imageMap.first['url'] as String;
              }
              step = step.copyWith(url: url);
            }
          } catch (_) {}

          steps.add(step);
        }
        return steps;
      }
    } catch (_) {}
    return const [];
  }

  List<Ingredient> getIngredients(Map<String, dynamic> json) {
    final ingredients = <Ingredient>[];
    try {
      if (json.containsKey('recipeIngredient')) {
        final rawIngredients = json['recipeIngredient'] as List;
        for (var i = 0; i < rawIngredients.length; i++) {
          final rawIngredient = rawIngredients[i] as String;
          ingredients.add(Ingredient.fromString(rawIngredient));
        }
      }
    } catch (_) {}
    return ingredients;
  }

  Map<String, dynamic> extractRecipeJson(String html) {
    final htmlDocument = parse(html);

    final elements = htmlDocument.querySelectorAll(
      "script[type='application/ld+json']",
    );

    for (final element in elements) {
      final json = jsonDecode(element.innerHtml);

      final recipeJson = _extractRecipeJson(json);
      if (recipeJson != null) {
        return recipeJson;
      }
    }
    return {};
  }

  Map<String, dynamic>? _extractRecipeJson(dynamic json) {
    if (json is List) {
      return _extractRecipeJson(json[0]);
    }

    if (json is Map) {
      if (json.containsKey('@type')) {
        final types = json['@type'];

        if (types is List && types.contains('Recipe')) {
          return json as Map<String, dynamic>;
        }
        if (types == 'Recipe') {
          return json as Map<String, dynamic>;
        }
      }

      if (json.containsKey('@graph')) {
        for (final jsonElement in json['@graph'] as Iterable) {
          final recipeJson = _extractRecipeJson(jsonElement);
          if (recipeJson != null) {
            return recipeJson;
          }
        }
      }
    }
    return null;
  }
}

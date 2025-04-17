// ignore_for_file: leading_newlines_in_multiline_strings
import 'dart:io';

Map<String, String> htmlTestCases = {
  'https://www.allrecipes.com': File('test/src/html/allrecipes.txt').readAsStringSync(),
  'https://smaakmenutie.nl': File('test/src/html/smaakmenutie.txt').readAsStringSync(),
  'https://www.lekkerensimpel.com':
      File('test/src/html/lekkerensimpel.txt').readAsStringSync(),
  'https://www.anniepannie.nl':
      File('test/src/html/anniepannie.txt').readAsStringSync(),
  'https://vidarbergum.com': File('test/src/html/vidarbergum.txt').readAsStringSync(),
  'https://uitpaulineskeuken.nl':
      File('test/src/html/uitpaulineskeuken.txt').readAsStringSync(),
  'https://www.ah.nl': File('test/src/html/ah.txt').readAsStringSync(),
  'https://mills.no': File('test/src/html/mills.txt').readAsStringSync(),
  'https://www.themediterraneandish.com':
      File('test/src/html/themediterraneandish.txt').readAsStringSync(),
  // TODO(mskogholt): Check https://www.taste.com.au/recipes/healthier-mexican-haloumi-salad/k2r4j45y
};

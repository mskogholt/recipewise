import 'dart:io';

import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

main() async {
  var url = Uri.parse(
      "https://www.allrecipes.com/cranberry-cheese-ball-recipe-8726774");
  var response = await http.get(url);
  var document = parse(response.body);

  print(document.getElementById("allrecipes-schema_1-0")?.innerHtml);
}

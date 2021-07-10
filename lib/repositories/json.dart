import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:list_of_recipes/models/product.dart';

Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/ababicheva/FlutterInternshipTestTask/main/recipes.json'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    List jsonList = json.decode(response.body);
    List<Product> list =
        jsonList.map((elem) => Product.fromJson(elem)).toList();
    list.sort((a, b) {
      return a.id.compareTo(b.id);
    });
    return list;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load products');
  }
}

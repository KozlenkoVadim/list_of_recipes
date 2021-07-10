import 'package:flutter/foundation.dart';

class Product {
  int id;
  String name;
  String picture;
  String description;

  Product(
      {@required this.id,
      @required this.name,
      @required this.picture,
      @required this.description});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      picture: json['picture'],
      description: json['description'],
    );
  }

  String getId() => id < 10 ? '0' + '$id' : '$id';
}

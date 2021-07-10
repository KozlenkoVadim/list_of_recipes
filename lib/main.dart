import 'package:flutter/material.dart';
import 'package:list_of_recipes/pages/home_page.dart';

void main() =>
  runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App For My Recipes',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(title: 'My Recipes'),
    );
  }
}

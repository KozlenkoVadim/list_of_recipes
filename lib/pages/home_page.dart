import 'package:flutter/material.dart';
import 'package:list_of_recipes/widgets/catalog.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Catalog(),
    );
  }
}

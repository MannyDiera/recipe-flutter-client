import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes Home'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/contact');
          },
          child: Text('Go to contact page'),
        ),
      ),
    );
  }
}

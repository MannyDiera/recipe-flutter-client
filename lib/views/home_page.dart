import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/recipes');
              },
              child: Text('Go to Recipes page'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/whatsapp');
              },
              child: Text('Go to Whatsapp page'),
            ),
          ],
        ),
      ),
    );
  }
}

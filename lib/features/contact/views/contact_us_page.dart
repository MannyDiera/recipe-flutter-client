import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/recipes');
            },
            child: Text('Go to recipes page'),
          ),
          RaisedButton(
            onPressed: () { // This will go straight to home and not create another context layer
              Navigator.popUntil(context, ModalRoute.withName('/')); 
            },
            child: Text('Go to home'),
          ),
        ],
      ),
    );
  }
}

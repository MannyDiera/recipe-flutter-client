import 'package:flutter/material.dart';
import '../models/recipe_model.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) => new Column(
        children: <Widget>[
          new Card(
            elevation: 5,
            margin: const EdgeInsets.all(10.0),
            child: InkWell(
              splashColor: Colors.green[100],
              onTap: () {
                print('Recipe ${dummyData[index].title} was pressed');
              },
              child: Container(
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.all(2.0),
                width: double.infinity,
                height: 350,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                   Image.network(
                     dummyData[index].imageUrl,
                     fit: BoxFit.cover,
                     height: 250,
                   ),
                   ListTile(
                      leading: Icon(
                        Icons.restaurant_menu,
                        color: Theme.of(context).accentColor,
                        size: 35.0,
                      ),
                      title: Text(
                        dummyData[index].title,
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
                        ),
                      trailing: Icon(Icons.more_vert),
                    ), 
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
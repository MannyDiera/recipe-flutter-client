import 'package:flutter/material.dart';
import '../models/recipe_model.dart';

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[index].imageUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  dummyData[index].title, 
                  style: new TextStyle(fontWeight: FontWeight.bold)
                  ),
                new Text(dummyData[index].author, style: new TextStyle(color: Colors.grey, fontSize: 14.0)),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                dummyData[index].summary,
                overflow: TextOverflow.ellipsis,
                style: new TextStyle(fontSize: 15.0)
              ),
            ),
          )
        ],
      )
    );
  }
}
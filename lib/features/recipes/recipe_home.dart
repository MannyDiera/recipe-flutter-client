import 'package:flutter/material.dart';

// Tab body
import './tabs/recipe_screen.dart';
import './tabs/menu_screen.dart';
import './tabs/social_screen.dart';
import './tabs/settings_screen.dart';

class RecipePageHome extends StatefulWidget {
  @override
  _RecipePageHomeState createState() => _RecipePageHomeState();
}

class _RecipePageHomeState extends State<RecipePageHome>
  with SingleTickerProviderStateMixin {
    TextStyle tabStyle = new TextStyle(fontSize: 24.0);
    TabController _tabController;

    @override
    void initState() {
      super.initState();
      _tabController = new TabController(vsync: this, initialIndex: 0, length: 4);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Recipes"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(text: "Recipes"),
            new Tab(text: "Menus"),
            new Tab(text: "Social"),
            new Tab(icon: new Icon(Icons.settings)),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[ 
          new RecipeScreen(),
          new MenuScreen(),
          new SocialScreen(),
          new SettingsScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.add,
          color: Colors.white,
          size: 40.0
        ),
        onPressed: () =>  print("Add New Recipe"),
      ),
    );
  }
}
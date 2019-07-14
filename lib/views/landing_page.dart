import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 18.0);


  @override
  Widget build(BuildContext context) {

  final userName = TextField(
    obscureText: false,
    style: style,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "Email",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),      
    ),
  );

  final passwordField = TextField(
    obscureText: true,
    style: style,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "Password",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
  );

  final loginButon = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Theme.of(context).accentColor,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        Navigator.pushNamed(context, '/recipes');
      },
      child: Text("Login",
          textAlign: TextAlign.center,
          style: style.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold)),
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 6,
        title: new Center(
          child: new Text("D-Grub", textAlign: TextAlign.center,),
        )
      ),
      body: new Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: new Center(
            child: new Container(
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 155.0,
                      child: FlareActor(
                        "assets/Plate.flr",
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: "food",
                      ),
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      userName,
                      SizedBox(height: 45.0),
                      passwordField,
                      SizedBox(height: 45.0),
                      loginButon,
                      SizedBox( height: 15.0),
                  ],
                ),
              ),
            ),
          ), // Inner Center
        ),
      ), // Outer Center
    );
  }
}
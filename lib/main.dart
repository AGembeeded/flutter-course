import 'package:flutter/material.dart';

// Dart is a typed language
// Use explicit types definition

// Flutter is all about widgets
// Flutter is calling the main function
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // extends is inheritance
  // Properties
  // Methods

  // Flutter uses the build method to draw a widget
  // annotation can be used
  @override // marks that this funcyion is overrid, not mandatory, but useful to have clean code
  Widget build(BuildContext context) {
    // here the Widget is definition of a type that build should return
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        //<Widget> is not mandatory
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Add Product'),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text('Food Paradise')
                ],
              ),
            ),
          ],
        ),
      ),
    ); // used in every app, wrapper for entire app
  }
}

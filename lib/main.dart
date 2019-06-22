import 'package:flutter/material.dart';

//Internal imports
import './pages/home.dart';

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
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: HomePage(),
    ); // used in every app, wrapper for entire app
  }
}

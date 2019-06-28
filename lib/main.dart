import 'package:flutter/material.dart';

//Internal imports
import './pages/products_admin.dart';
import './pages/products.dart';
import './pages/product.dart';

// Dart is a typed language
// Use explicit types definition

// Flutter is all about widgets
// Flutter is calling the main function
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override // marks that this funcyion is overrid, not mandatory, but useful to have clean code
  Widget build(BuildContext context) {
    // here the Widget is definition of a type that build should return
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      //home: AuthPage(),
      routes: {
        '/': (BuildContext context) => ProductsPage(_products, _addProduct, _deleteProduct), // '/' is reserved for home page, if set in routes, home: can't be used
        '/admin': (BuildContext context) => ProductsAdminPage(),
      },
      // With on generate routes, pages that are not in routes can be handeled
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        //Return null if list is empty
        if (pathElements[0] != '') {
          return null;
        }
        //Check if lists starts with 'product'
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]); //Convert string to integer
          return MaterialPageRoute<bool>( // Here we are "telling" the route how to build a new page
                builder: (BuildContext context) => ProductPage(_products[index]['title'], _products[index]['image']),
              );
        }
        return null;
      },
      //onUnknownRoute runs if OnGenerateRoute returns null
      onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) => ProductsPage(_products, _addProduct, _deleteProduct),
          );
      }
    ); // used in every app, wrapper for entire app
  }
}

import 'package:flutter/material.dart';

import '../product_manager.dart'; // two dots are to go level up in folder structure

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  //Constructor
  ProductsPage(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Easy List'),
      ),
      //<Widget> is not mandatory
      body: ProductManager(products),
    );
  }
}

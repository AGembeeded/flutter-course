import 'package:flutter/material.dart';

import '../product_manager.dart'; // two dots are to go level up in folder structure
import './product_admin.dart';

class ProductsPage extends StatelessWidget {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductAdmin()),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList Test'),
      ),
      //<Widget> is not mandatory
      body: ProductManager(),
    );
  }
}

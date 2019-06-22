import 'package:flutter/material.dart';

import '../product_manager.dart'; // two dots are to go level up in folder structure

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('EasyList Test'),
        ),
        //<Widget> is not mandatory
        body: ProductManager(),
      );
  }
}
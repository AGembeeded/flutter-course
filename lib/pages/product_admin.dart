import 'package:flutter/material.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ADMIN'),
      ),
      //<Widget> is not mandatory
      body: Center(
        child: Text('Product Admin Page'),
      ),
    );
  }
}


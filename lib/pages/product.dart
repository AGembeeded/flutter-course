import "package:flutter/material.dart";
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imgUrl;

  ProductPage(this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        onWillPop: () {
          print('Back Button Pressed');
          // These handle the back button, both, software and hardware
          Navigator.pop(context, false);
          // WillPopScope needs to return a future value, Future is located in dart:async
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imgUrl),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(title),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text('DELETE'),
                  onPressed: () => Navigator.pop(context, true),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

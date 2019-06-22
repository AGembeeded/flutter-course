import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products; //final tells that products will not be changed
    
  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text(products[index])
                ],
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    // Define a variable that is going to be our widget
    Widget productCard = Center(child: Text('No products found, please add some'));

    // If there are some products, redefine the productCard
    if (products.length > 0) {
      productCard = ListView.builder( // this is an inline if statement, this is called ternary expression
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
    }
    return productCard; 
  }
}
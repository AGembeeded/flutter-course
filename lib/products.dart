import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products; //final tells that products will not be changed

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator
                    .pushNamed<bool>(context, '/product/' + index.toString()),
              )
            ],
          )
        ],
      ),
    );
  }

  // method
  Widget _buildProductList() {
    Widget productCards;
    // If there are some products, redefine the productCard
    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCards = Center(child: Text('No products found, please add some'));
      //If there are no products and we don't want to render anything, we still need to return a widget
      // it can be an empty Container, it will not ocupy any space on the screen
      // productCards = Container();
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}

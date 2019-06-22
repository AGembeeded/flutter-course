import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<String> products; //final tells that products will not be changed

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute( // Here we are "telling" the route how to build a new page
                        builder: (BuildContext context) => ProductPage(),
                      ),
                    ),
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

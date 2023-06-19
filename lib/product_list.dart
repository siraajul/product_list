import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'product.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product('iPhone', 999.99, 0),
    Product('MacBook', 1999.99, 0),
    Product('AirPods', 199.99, 0),
    Product('Apple Watch', 399.99, 0),
    Product('iPad', 499.99, 0),
    Product('iPhone', 999.99, 0),
    Product('MacBook', 1999.99, 0),
    Product('AirPods', 199.99, 0),
    Product('Apple Watch', 399.99, 0),
    Product('iPad', 499.99, 0),
    Product('iPhone', 999.99, 0),
    Product('MacBook', 1999.99, 0),
    Product('AirPods', 199.99, 0),
    Product('Apple Watch', 399.99, 0),
    Product('iPad', 499.99, 0),
    Product('iPhone', 999.99, 0),
    Product('MacBook', 1999.99, 0),
    Product('AirPods', 199.99, 0),
    Product('Apple Watch', 399.99, 0),
    Product('iPad', 499.99, 0),
  ];

  int total = 0;

  void buyProduct(Product product) {
    setState(() {
      product.count++;
      total++;
      if (product.count == 5) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Congratulations!'),
            content: Text('You\'ve bought 5 ${product.name}!'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    });
  }

  void goToCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartPage(total),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(products[index].name),
              subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
              trailing: Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(products[index].count.toString()),
                      ElevatedButton(
                        onPressed: () => buyProduct(products[index]),
                        child: Text('Buy Now'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      // Add this line in the Scaffold widget
      floatingActionButton: FloatingActionButton(
        onPressed: goToCart,
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

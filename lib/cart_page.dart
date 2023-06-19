import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final int total;

  CartPage(this.total);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('You have bought $total products.'),
      ),
    );
  }
}

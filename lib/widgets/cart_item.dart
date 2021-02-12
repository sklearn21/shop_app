import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CartItem extends StatelessWidget {
  final String id;
  final double price;
  final int quantity;
  final String title;

  CartItem(this.id, this.price, this.quantity, this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('₹ $price'),
              ),
            ),
          ),
          title: Text(title),
          subtitle: Text('Total: ${price * quantity}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}

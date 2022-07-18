import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart' show Cart;
// to avoid name clash - there're 2 classes called CartItem.
// we need the CartItem as a widget
import '../widgets/cart_item.dart'; //as ci;
import '../providers/orders.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart';

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      '\$${cart.totalAmount.toStringAsFixed(2)}',
                      style: TextStyle(
                        color:
                            Theme.of(context).primaryTextTheme.headline6.color,
                      ),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  OrderButton(cart),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cart.itemCount,
              itemBuilder: (ctx, i) => CartItem(
                cart.items.values.toList()[i].id,
                // cart.items[i] gives null, because cart.items is a map, not a list. [i] does not work,
                cart.items.keys.toList()[i],
                cart.items.values.toList()[i].price,
                cart.items.values.toList()[i].quantity,
                cart.items.values.toList()[i].title,
              ),
            ),
          )
          //Expanded - its child takes as much space as there's left in this column, instead of as much space as you can get
        ],
      ),
    );
  }
}

class OrderButton extends StatefulWidget {
  final Cart cart;
  OrderButton(@required this.cart);

  @override
  State<OrderButton> createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  var _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: _isLoading
          ? CircularProgressIndicator()
          : Text(
              'Order Now',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
      onPressed: (widget.cart.totalAmount <= 0 || _isLoading)
          ? null // so that button is automatically disabled
          : () async {
              setState(() {
                _isLoading = true;
              });
              // try {
              await Provider.of<Orders>(context, listen: false).addOrder(
                  widget.cart.items.values.toList(), widget.cart.totalAmount);
              // } catch (error) {
              //   Scaffold.of(context).showSnackBar(
              //     SnackBar(
              //       content: Text('Could not place order'),
              //     ),
              //   );
              // } finally {
              setState(() {
                _isLoading = false;
              });
              widget.cart.clear();
              // }
            },
    );
  }
}

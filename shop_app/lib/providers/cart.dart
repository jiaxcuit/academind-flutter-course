import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    @required this.id, //id of cart item, not id of product
    @required this.title,
    @required this.quantity,
    @required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};
  // will become something like {'key1': values, 'key2': values}

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length; // sum of product types, not sum of quantities here.
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, cartItem) {
      //forEach goes over items in the map one by one
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(
    String productId,
    double price,
    String title,
  ) {
    if (_items.containsKey(productId)) {
      // key is the first thing in a map {'key': other_things}
      _items.update(
          productId,
          (existingCartItem) => CartItem(
              id: existingCartItem.id,
              title: existingCartItem.title,
              quantity: existingCartItem.quantity + 1,
              price: existingCartItem.price));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
                id: DateTime.now().toString(),
                // id of item in cart, not id of  product
                title: title,
                price: price,
                quantity: 1,
              ));
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId); // remove things in a map by the key
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}

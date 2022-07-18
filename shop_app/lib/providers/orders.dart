import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'cart.dart';

class OrderItem {
  final String id;
  final double amount; // amount of money
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({
    @required this.id,
    @required this.amount,
    @required this.products,
    @required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  Future<void> addOrder(List<CartItem> cartProducts, double total) async {
    final url = Uri.https(
        'flutter-course-344ab-default-rtdb.europe-west1.firebasedatabase.app',
        '/orders.json');
    final timeStamp = DateTime.now();

    // try {
    final response = await http.post(
      url,
      body: json.encode({
        'products': cartProducts
            .map((cp) => {
                  'title': cp.title,
                  'quantity': cp.quantity,
                  'price': cp.price,
                  'id': cp.id,
                })
            .toList(),
        'amount': total,
        'dateTime': timeStamp.toIso8601String(),
      }),
    );
    _orders.insert(
        0,
        OrderItem(
          id: json.decode(response.body)['name'],
          amount: total,
          products: cartProducts,
          dateTime: timeStamp,
        ));
    notifyListeners();
    // } catch (error) {
    //   throw error;
    // }
  }

  Future<void> fetchAndSetOrders() async {
    final url = Uri.https(
        'flutter-course-344ab-default-rtdb.europe-west1.firebasedatabase.app',
        '/orders.json');
    final response = await http.get(url);
    final List<OrderItem> loadedOrders = [];
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    if (extractedData == null) {
      return;
    }

    extractedData.forEach((key, value) {
      loadedOrders.add(
        OrderItem(
          id: key,
          amount: value['amount'],
          products: (value['products'] as List<dynamic>).map((item) {
            return CartItem(
              title: item['title'],
              id: item['id'],
              price: item['price'],
              quantity: item['quantity'],
            );
          }).toList(),
          dateTime: DateTime.parse(value['dateTime']),
        ),
      );
    });
    _orders = loadedOrders.reversed.toList();
    notifyListeners();
  }
}

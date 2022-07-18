import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import './product.dart';
import '../models/http_exception.dart';

class Products with ChangeNotifier {
  // merge methods/properties with existing class
  List<Product> _items = [
    // Product(
    //   id: 'p1',
    //   title: 'Red Shirt',
    //   description: 'A red shirt - it is pretty red!',
    //   price: 29.99,
    //   imageUrl:
    //       'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    // ),
    // Product(
    //   id: 'p2',
    //   title: 'Trousers',
    //   description: 'A nice pair of trousers.',
    //   price: 59.99,
    //   imageUrl:
    //       'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    // ),
    // Product(
    //   id: 'p3',
    //   title: 'Yellow Scarf',
    //   description: 'Warm and cozy - exactly what you need for the winter.',
    //   price: 19.99,
    //   imageUrl:
    //       'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    // ),
    // Product(
    //   id: 'p4',
    //   title: 'A Pan',
    //   description: 'Prepare any meal you want.',
    //   price: 49.99,
    //   imageUrl:
    //       'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    // ),
  ];

  var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prod) => prod.isFavorite).toList();
    // } else {
    return [..._items];
    // }
    //to avoid changing _items from anywhere else, so that we make sure all widgets know that _items has been changed through addProduct()
  }

  List<Product> get favoriteItems {
    return _items.where((prod) => prod.isFavorite == true).toList();
  }

  Future<void> addProduct(Product product) async {
    // async wraps everything in {} into a future. so no need to return future later explicitly
    final url = Uri.https(
        'flutter-course-344ab-default-rtdb.europe-west1.firebasedatabase.app',
        '/products.json');
    // later code blocks are wrapped in a 'then' clause
    try {
      final response = await http.post(url,
          body: json.encode({
            'title': product.title,
            'description': product.description,
            'imageUrl': product.imageUrl,
            'price': product.price,
            'isFavorite': product.isFavorite
          }));
      final newProduct = Product(
          id: json.decode(response.body)['name'],
          // a map with a name key, e.g {name: -N7Bz-OfOJm9CUJyLim-}
          title: product.title,
          description: product.description,
          price: product.price,
          imageUrl: product.imageUrl);
      _items.add(newProduct);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    } // to pass the error onto the edit products screen widget
  }

  Future<void> updateProduct(String id, Product newProduct) async {
    final prodIndex = _items.indexWhere((element) => element.id == id);
    if (prodIndex >= 0) {
      final url = Uri.https(
          'flutter-course-344ab-default-rtdb.europe-west1.firebasedatabase.app',
          'products/$id.json');
      await http.patch(
        url,
        body: json.encode({
          'title': newProduct.title,
          'description': newProduct.description,
          'imageUrl': newProduct.imageUrl,
          'price': newProduct.price,
        }), // to merge new data (newProduct) with existing data in database
      );
      _items[prodIndex] = newProduct;
      notifyListeners();
    } else {
      print('...');
    }
  }

  Future<void> deleteProduct(String id) async {
    final url = Uri.https(
        'flutter-course-344ab-default-rtdb.europe-west1.firebasedatabase.app',
        'products/$id.json');
    final existingProductIndex =
        _items.indexWhere((element) => element.id == id);
    var existingProduct = _items[existingProductIndex];
    // to store product in memory
    _items.removeAt(existingProductIndex);
    // although product is removed from list
    notifyListeners();

    final response = await http.delete(url);
    if (response.statusCode >= 400) {
      _items.insert(existingProductIndex, existingProduct);
      notifyListeners();
      throw HttpException('Could not delete product.');
    }
    existingProduct = null;

    // in the 'flutter: http package', http.delete does not throw error automatically.
    // optimistic updating
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  Future<void> fetchAndSetProducts() async {
    final url = Uri.https(
        'flutter-course-344ab-default-rtdb.europe-west1.firebasedatabase.app',
        'products.json'); //Uri.parse('my.complete.url')
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;

      if (extractedData == null) {
        return;
      }
      final List<Product> loadedProducts = [];
      extractedData.forEach((key, value) {
        loadedProducts.add(
          Product(
              id: key,
              title: value['title'],
              description: value['description'],
              price: value['price'],
              imageUrl: value['imageUrl'],
              isFavorite: value['isFavorite']),
        );
      });
      _items = loadedProducts;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}

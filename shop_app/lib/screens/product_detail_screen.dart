import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // ProductDetailScreen(this.title);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; // this is the id
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    // returns an item (of class Product). only returns one because id is unique here
    // if listen: false, then the build method does not re-run when the Products change
    // this means this provider is only for getting data

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}

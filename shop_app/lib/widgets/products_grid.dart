import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../providers/product.dart';
import 'product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavs;
  ProductsGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = showFavs ? productsData.favoriteItems : productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      //add const to make sure this padding is not rebuild when build is called
      // to save some performance
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider<Product>.value(
        value: products[i], // instance of Product class
        child: ProductItem(
            // products[i].id,
            // products[i].title,
            // products[i].imageUrl,
            ),
      ), // defines how every grid cell is build
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //number of cells in a row
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10, //separation betw columns
        mainAxisSpacing: 10,
      ),
    );
  }
}

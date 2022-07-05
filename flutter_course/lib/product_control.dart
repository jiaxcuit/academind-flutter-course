import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        // style: ElevatedButton.styleFrom(
        //     primary: Theme.of(context).primaryColor),
        onPressed: () {
          addProduct('Sweets'); // to tell flutter to re-render/draw to screen
        },
        child: Text('Add Product'));
  }
}

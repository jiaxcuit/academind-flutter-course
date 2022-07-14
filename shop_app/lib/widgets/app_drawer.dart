import 'package:flutter/material.dart';

import '../screens/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        AppBar(
          title: Text('Hello Friend!'),
          automaticallyImplyLeading:
              false, // for not showing back arrow / back button at top left
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.shop),
          title: Text('Shop'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
            // automatically goes back to root route
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.shop),
          title: Text('Orders'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(OrderScreen.routeName);
            // automatically goes back to root route
          },
        ),
      ],
    ));
  }
}

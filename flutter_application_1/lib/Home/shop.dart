import 'package:flutter/material.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Shop Items
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Item 1'),
              subtitle: Text('Description of Item 1'),
              trailing: Text('\$100'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Item 2'),
              subtitle: Text('Description of Item 2'),
              trailing: Text('\$200'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Item 3'),
              subtitle: Text('Description of Item 3'),
              trailing: Text('\$300'),
            ),
          ],
        ),
      ),
    );
  }
}
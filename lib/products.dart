import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children: products
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/gradiant_1 copy.jpg'),
                      Text(
                        element,
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ))
            .toList());
  }
}

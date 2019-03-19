import 'package:flutter/material.dart';

import './products.dart';

class PeoductManager extends StatefulWidget {
  final String stringProduct;

  PeoductManager(this.stringProduct);

  @override
  State<StatefulWidget> createState() => _PeoductManagerState();
}

class _PeoductManagerState extends State<PeoductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.stringProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(1),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text(
              'Thesemcx nklbcj nvlm',
              style: TextStyle(letterSpacing: 1),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
            onPressed: () {
              setState(() {
                _products.add('c');
              });
            },
          ),
        ),
        Products(_products),
      ],
    );
  }
}

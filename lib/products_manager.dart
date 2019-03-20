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
  void didUpdateWidget(PeoductManager oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
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
            elevation: 100,
            child: Text(
              'Thesemcx nklbcj nvlm',
              style: TextStyle(letterSpacing: 1, shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 1.0,
                  color: Colors.red,
                )
              ]),
              maxLines: 1,
              overflow: TextOverflow.clip,
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

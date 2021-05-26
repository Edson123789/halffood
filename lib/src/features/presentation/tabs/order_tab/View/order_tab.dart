import 'package:flutter/material.dart';

class MyOrderTab extends StatefulWidget {
  MyOrderTab({Key key}) : super(key: key);

  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Orden'),
    );
  }
}
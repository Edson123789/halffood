import 'package:flutter/material.dart';

class FavouriteTab extends StatefulWidget {
  FavouriteTab({Key key}) : super(key: key);

  @override
  _FavouriteTabState createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Favourite'),
    );
  }
}
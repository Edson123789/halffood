import 'dart:io';

import 'package:flutter/material.dart';
import 'package:halfood/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:halfood/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:halfood/src/features/presentation/tabs/favourite_tab/View/favourite_tab.dart';
import 'package:halfood/src/features/presentation/tabs/order_tab/View/order_tab.dart';
import 'package:halfood/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirLocation(context);
    });
  }

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab(),
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar:
          _bottomNavigationBar(context), //va ir cambiando dinamicamente
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget, //cuando se hace click
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explorar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Mi Orden'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Mi Perfil'),
        ]);
  }

  Future _pedirLocation(BuildContext context) async {
    showAlertDialog(
        context,
        AssetImage('assets/location.png'),
        'Activa tu ubicación',
        'Permite usar tu ubicación para mostrarte restaurantes cercanos a ti.',
        _doneButton(context, 'Activa tu ubicación'));
  }

  Widget _doneButton(BuildContext context, String labelButton) {
    return Container(
      width: 350.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton(
        onPressed: () {
          // Navigator.pushNamed(context, 'login');
          print("Habilitar localización");
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Theme.of(context).accentColor,
        child: Text(
          labelButton,
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ),
    );
  }
}

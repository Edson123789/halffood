import 'package:flutter/material.dart';

//routes
import 'package:halfood/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
        accentColor: Color.fromRGBO(255, 140, 0, 1.0),
        primaryColor: Color.fromRGBO(10, 31, 68, 1.0),
        buttonColor: Color.fromRGBO(0, 122, 255, 1.0),
        disabledColor: Color.fromRGBO(142, 142, 147, 1.2),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
            )
        )
      ),
    );
  } 
}
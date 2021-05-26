import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:halfood/src/colors/colors.dart';
import 'package:halfood/src/features/presentation/commons_widgets/headers_text.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );
    
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://images.unsplash.com/photo-1502301103665-0b95cc738daf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80')
              )
            ),
            //efecto de borroso imagen, sigma filtro arriba y abajo
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0), //padding texto
                child: headerText('HALFOOD, COMIDA A TU MESA', Colors.white,  FontWeight.bold, 45.0),

              ),
              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0), //padding texto
                child: Text('Siempre cerca de ti #ConsumeLocal',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0
                )
                ),
              ),
              Container(
                width: 300.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 15.0),
                child: RaisedButton(
                 onPressed: (){
                   Navigator.pushNamed(context, 'signup');
                 },
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20.0)),
                  color: amarillo,
                  child: Text('Crear una cuenta',style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0
                    ),),
                ),
              ),
              Container(
                width: 300.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 15.0),
                child: RaisedButton(
                 onPressed: (){
                   Navigator.pushNamed(context, 'login');
                 },
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20.0)),
                  color: Theme.of(context).accentColor,
                  child: Text('Iniciar Sesión',style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                    ),),
                ),
              ),
              Container(
                width: 300.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 15.0),
                child: RaisedButton(
                 onPressed: (){

                 },
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20.0)
                   ),
                 color: Theme.of(context).buttonColor,
                 child: Text('Ingresar con Facebook',style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                    ),),
                )
              )
              
            ],
          )
        ],
      ),
    );
  }
}
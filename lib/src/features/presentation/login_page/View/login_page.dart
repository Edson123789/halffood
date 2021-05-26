import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//colores, ya no llama a theme
import 'package:halfood/src/colors/colors.dart';


//widgets
import 'package:halfood/src/features/presentation/commons_widgets/back_button.dart';

class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );

    return Scaffold(
      
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity, //todo tamaño posible a lo ancho
                height: 300.0, //disminuye, alto de imagen
                fit: BoxFit.cover, //abarca lo alto
                image: NetworkImage('https://i.pinimg.com/originals/2b/fe/38/2bfe38374a7b68269589e6dded7eb469.jpg')
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0, left: 10.0),
                child: backButton(context, Colors.white), //mando colores de flecha
              )
            ],
          ),

          Transform.translate(
            offset: Offset(0.0,-10.0),
            child:Container(
              width: double.infinity,
              height: 450, //fondo blanco alto AAAAAAAAAAAAAAAAAA IMPORTANTEEEE CAMBIAR A 200
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text('Bienvenido de nuevo!', style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0
                    )),

                    Text('Inicia sesión', style: TextStyle(
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0
                    )),

                    _emailInput(),
                    _passwordInput(),
                    _buttonLogin(context),

                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'forgotpass');
                        },
                        child: Text('¿Olvidaste tu contraseña?', style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0,
                        ),),
                      ),
                    ),

                     Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('¿Aún no tienes cuenta?', style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0,
                          ),),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, 'signup');
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text('Regístrate', style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 17.0,
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),
          ),
        ],
      )
    );

  }
}

Widget _emailInput(){
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    ),
  );
}

Widget _passwordInput(){
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 10.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none 
        )
      ),
    ),
  );
}

Widget _buttonLogin(BuildContext context){
   return  Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                 onPressed: (){
                   Navigator.pushNamed(context, 'tabs');
                 },
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20.0)),
                  color: Theme.of(context).accentColor,
                  child: Text('Iniciar Sesión',style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0
                    ),),
                ),
              );
}
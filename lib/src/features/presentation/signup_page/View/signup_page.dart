import 'package:flutter/material.dart';
import 'package:halfood/src/colors/colors.dart';
import 'package:halfood/src/features/presentation/commons_widgets/back_button.dart';
import 'package:halfood/src/features/presentation/commons_widgets/headers_text.dart';

class SignupPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context){
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left:30, right: 30, top: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: headerText('Crea una cuenta', Theme.of(context).primaryColor, FontWeight.bold, 30.0),
              ),
             Image(
                image: AssetImage('assets/user.png'),
                width: 100,
                height: 100,
                
              ),

              _usernameInput(context),
              _emailInput(context),
              _phoneInput(context),
              _dateBirthInput(context),
              _passwordInput(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Text(
                  'Al crear la cuenta se aceptan Términos y Condiciones.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0
                ),),
              ),
              
              _signupButton(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _usernameInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Nombre de usuario',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

Widget _emailInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

Widget _phoneInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Teléfono',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

Widget _dateBirthInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        hintText: 'Fecha de Nacimiento',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

Widget _passwordInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

Widget _signupButton(BuildContext context){
   return  Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                 onPressed: (){
                   //Navigator.pushNamed(context, 'login');
                 },
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20.0)),
                  color: Theme.of(context).accentColor,
                  child: Text('Crear cuenta',style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0
                    ),),
                ),
              );
}
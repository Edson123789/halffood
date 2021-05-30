import 'package:flutter/material.dart';
import 'package:halfood/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:halfood/src/features/presentation/commons_widgets/back_button.dart';
import 'package:halfood/src/features/presentation/commons_widgets/done_button.dart';
import 'package:halfood/src/features/presentation/commons_widgets/headers_text.dart';

class ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0.0,
       leading: Builder(
         builder: (BuildContext context){
           return backButton(context, Colors.black);
         }
         ),
     ),

     body: Center(
       child: Container(
         padding: EdgeInsets.all(30.0),
         child: Column(
           children: [
             headerText('Recupera tu contraseña', Theme.of(context).primaryColor, FontWeight.bold, 30.0),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Ingresa tu correo electrónico y recibirás un link para recuperarla.', 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0
                  )
                ),
              ),

              _emailInput(),
              _sendButton(context),

           ],
         ),
       ),
     ),
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

Widget _sendButton(BuildContext context){
   return  Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 40.0),
                child: RaisedButton(
                    onPressed: (){
                      _showAlert(context);
                    },
                    color:Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Text('Enviar',style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0
                        ),),
                ),
              );
}

void _showAlert(BuildContext context){
  showAlertDialog(
    context, 
    AssetImage('assets/block.png'), 
    '¡Genial! Tu contraseña ha sido restaurada', 
    'Recibirás un email con un código para crear una nueva contraseña.', 
    'Listo!', 
    doneButton(context, 'Listo!'));
}


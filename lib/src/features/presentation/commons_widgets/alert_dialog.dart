import 'package:flutter/material.dart';

import 'headers_text.dart';

void showAlertDialog(
  BuildContext context, 
  ImageProvider <Object> imagePath, 
  String headerTitle, 
  String headerSubTitle, 
  String labelButton, 
  Widget doneButton
  ) async {
  await showDialog(
      context: context,
      barrierDismissible: true, //si se clickea fuera se cierra la alerta
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 400,
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: headerText(headerTitle,
                      Theme.of(context).primaryColor, FontWeight.bold, 20.0),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      headerSubTitle,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                      )),
                ),
                doneButton,
              ],
            ),
          ),
        );
      });
}



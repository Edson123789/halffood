import 'package:flutter/cupertino.dart';



//Pages
import 'package:halfood/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:halfood/src/features/presentation/login_page/View/login_page.dart';
import 'package:halfood/src/features/presentation/forgotpass_page/View/forgotpass_page.dart';
import 'package:halfood/src/features/presentation/signup_page/View/signup_page.dart';
import 'package:halfood/src/features/presentation/tabs/tabs_page.dart';


final routes = <String, WidgetBuilder>{
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgotpass' : (BuildContext context) => ForgotPassword(),
  'signup' : (BuildContext context) => SignupPage(),
  'tabs' : (BuildContext context) => TabsPage(),
  
};
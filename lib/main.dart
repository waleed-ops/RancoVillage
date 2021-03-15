import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/Screens/SignUp_Screen.dart';
import 'Screens/LoginPage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      // routes: {
      //   MainScreen.id:(context) => MainScreen()
      // },
      routes: {
        LoginScreen.id: (context) => LoginScreen (),
        SignupScreen.id: (context) => SignupScreen(),

      },
    );
  }
}

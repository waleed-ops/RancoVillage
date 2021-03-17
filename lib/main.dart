import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/Screens/SignUp_Screen.dart';
import 'Screens/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

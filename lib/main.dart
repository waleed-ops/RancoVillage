import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/Screens/security/accepted.dart';
import 'Screens/security/SecurityPage.dart';
import 'Screens/security/pending request.dart';
import 'Screens/user/GuestInv.dart';
import 'Screens/user/ResidentsPage.dart';
import 'Screens/user/guist_SignUp_Screen.dart';
import 'Screens/user/maintainceReq.dart';
import 'package:flutter_ecommerce123/Screens/HomePage.dart';
import 'Screens/user/guist_LoginPage.dart';
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
      initialRoute: HomePage.id,
      // routes: {
      //   MainScreen.id:(context) => MainScreen()
      // },
      routes: {
        Accepted.id:(context)=> Accepted (),
        PendingRequests.id:(context)=> SecurityPage (),
        SecurityPage.id:(context)=> SecurityPage (),
        ResidentsPage.id:(context)=> ResidentsPage (),
        GuestInavation.id:(context)=> GuestInavation (),
        HomePage.id:(context)=> HomePage (),
        LoginScreen.id: (context) => LoginScreen (),
        SignupScreen.id: (context) => SignupScreen(),
        MaintainceRequest.id:(context)=>MaintainceRequest(),
      },
    );
  }
}

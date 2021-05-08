import 'package:flutter/material.dart';
import 'Screens/user/guist_SignUp_Screen.dart';
import 'Screens/user/maintainceReq.dart';
import 'file:///C:/Users/wkald/AndroidStudioProjects/flutter_ecommerce123/lib/Screens/user/GuestInv.dart';
import 'package:flutter_ecommerce123/Screens/HomePage.dart';
import 'file:///C:/Users/wkald/AndroidStudioProjects/flutter_ecommerce123/lib/Screens/user/ResidentsPage.dart';
import 'file:///C:/Users/wkald/AndroidStudioProjects/flutter_ecommerce123/lib/Screens/security/SecurityPage.dart';
import 'Screens/user/guist_LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'file:///C:/Users/wkald/AndroidStudioProjects/flutter_ecommerce123/lib/Screens/security/pending%20request.dart';
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

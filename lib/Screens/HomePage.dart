import 'package:flutter/material.dart';
import 'file:///C:/Users/wkald/AndroidStudioProjects/flutter_ecommerce123/lib/Screens/security/SecurityPage.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
import '../commoncode/Widgets.dart';
import 'user/guist_LoginPage.dart';
class HomePage extends StatelessWidget {
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KmainColor,
      body: Container(
        child: ListView(
          children: [
            ReImage(hight: hight),
            SizedBox(
              height: hight * .05,
            ),
            ReButton(hight: hight,text: 'Resident ',navigator: LoginScreen.id,colour: Colors.white,),
            SizedBox(
              height: hight * .01,
            ),
            ReButton(hight: hight,text: 'Security ',navigator: SecurityPage.id,colour: Colors.white,),
            SizedBox(
              height: hight * .01,
            ),
            ReButton(hight: hight,text: 'maintenance',colour: Colors.white,),
          ],
        ),
      ),
    );
  }
}

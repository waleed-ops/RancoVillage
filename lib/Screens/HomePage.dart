import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';

import 'SignUp_Screen.dart';
class HomePage extends StatelessWidget {
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KmainColor,
      body: Container(
        child: ListView(
          children: [
            // ignore: deprecated_member_use
            FlatButton(
              height: hight * .08,
              onPressed: (){
                Navigator.pushNamed(context, SignupScreen.id);
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'GuestScreen',
                style: TextStyle(
                    color: KmainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';

import 'Widgets.dart';

class SignupScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  static String id = 'SignUpScreen';
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KmainColor,
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
           ReImage(hight: hight),
            // Padding(
            //   padding: EdgeInsets.only(top: hight * .29),
            // ),
            Ktextfielad(
              hint: 'الاسم الكريم',
              icon: Icons.person,
            ),
            Ktextfielad(
              hint: 'ايميلك يا الطيب ',
              icon: Icons.email_sharp,
            ),
            // SizedBox(
            //   height: hight * .0,
            // ),
            Ktextfielad(
              hint: 'الباسورد لو سمحت',
              icon: Icons.lock_sharp,
            ),
            SizedBox(
              height: hight * .06,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 90,
              ),

              // ignore: deprecated_member_use
              child: FlatButton(
                height: hight * .08,
                onPressed: () {
                  _globalKey.currentState.validate();
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'تسجيل',
                  style: TextStyle(
                      color: KmainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: hight * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, SignupScreen.id);
                  },
                  child: Text(
                    'دخول',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(width: width*.02,),
                Text(
                  'يوجد حساب لديك ؟ ',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

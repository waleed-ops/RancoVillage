import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce123/Screens/LoginPage.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
import 'package:flutter_ecommerce123/services/Auth.dart';
import 'Widgets.dart';

class SignupScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  static String id = 'SignUpScreen';
  final _auth = Auth();
  String _email, _password;

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
              onclick: (value) {
                _email = value;
              },
              hint: 'ايميلك يا الطيب ',
              icon: Icons.email_sharp,
            ),
            // SizedBox(
            //   height: hight * .0,
            // ),
            Ktextfielad(
              onclick: (value) {
                _password = value;
              },
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
              child: Builder(
                 // ignore: deprecated_member_use
                builder:(context) => FlatButton(
                  height: hight * .08,
                  onPressed: () async {
                    if (_globalKey.currentState.validate()) {
                      _globalKey.currentState.save();
                      print(_email);
                      print(_password);
                      try {
                        final authResult = await _auth.SignUP(_email, _password);
                        Navigator.pushNamed(context, LoginScreen.id);
                      }catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 5),
                          content: Text(e.message),
                        ));
                      }
                    }
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
            ),
            SizedBox(
              height: hight * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Text(
                    'دخول',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: width * .02,
                ),
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

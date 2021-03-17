import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/Screens/SignUp_Screen.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
import 'package:flutter/widgets.dart';
import 'SignUp_Screen.dart';
import 'Widgets.dart';
import 'package:flutter_ecommerce123/services/Auth.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'MainScreen';
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  final _auth=Auth();
  String _email,_password;
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
            Ktextfielad(
              onclick: (value){
                _email=value;
              },
              hint: 'ايميلك يا الطيب ',
              icon: Icons.email_sharp,
            ),
            // SizedBox(
            //   height: hight * .0,
            // ),
            Ktextfielad(
              onclick: (value){
                _password=value;
              },
              hint: 'الباسورد لو سمحت',
              icon: Icons.lock_sharp,
            ),
            SizedBox(
              height: hight * .09,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 90,
              ),

              // ignore: deprecated_member_use
              child: FlatButton(
                height: hight * .08,
                onPressed: () async{

                  if(_globalKey.currentState.validate()){
                    _globalKey.currentState.save();
                    print(_email+'success');
                    print(_password+'success');
                    final authResult =await _auth.SignIn(_email,_password);

                  }
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'دخول',
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
                  onTap: (){
                    Navigator.pushNamed(context, SignupScreen.id);
                  },
                  child: Text(
                    'تسجيل',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Text(
                  'لا يوجد حساب لديك ؟',
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

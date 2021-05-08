import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/Screens/user/ResidentsPage.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
import 'package:flutter/widgets.dart';
import 'guist_SignUp_Screen.dart';
import '../../commoncode/Widgets.dart';
import 'package:flutter_ecommerce123/services/Auth.dart';
class LoginScreen extends StatelessWidget {
  static String id = 'MainScreen';
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  final _auth=Auth();
  String _email,_password;
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
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
              hint: 'Email ',
              icon: Icons.email_sharp,
            ),
            // SizedBox(
            //   height: hight * .0,
            // ),
            Ktextfielad(
              onclick: (value){
                _password=value;
              },
              hint: 'Password',
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

                    try {
                      final authResult = await _auth.SignIn(_email, _password);
                      Navigator.pushNamed(context, ResidentsPage.id);
                    }catch(e){
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
                  'Log in',
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
                    'You don\'t have ?',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                  ),
                ),
                Text(
                  'Account ',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

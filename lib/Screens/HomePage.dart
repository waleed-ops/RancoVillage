import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
import 'Widgets.dart';
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
            ReImage(hight: hight),
            SizedBox(
              height: hight * .01,
            ),
            ReButton(hight: hight,text: 'Resident ',),
            SizedBox(
              height: hight * .01,
            ),
            ReButton(hight: hight,text: 'Security ',),
            SizedBox(
              height: hight * .01,
            ),
            ReButton(hight: hight,text: 'maintenance department'),
          ],
        ),
      ),
    );
  }
}
// Ktextfielad({@required this.onclick,@required this.hint,@required this.icon});

class ReButton extends StatelessWidget {
  final String text;
  final double hight;
ReButton ({@required this.hight,@required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // ignore: deprecated_member_use
      child: FlatButton(
        height: hight * .08,
        onPressed: (){
          Navigator.pushNamed(context, SignupScreen.id);
        },
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: TextStyle(
              color: KmainColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ),
    );
  }
}
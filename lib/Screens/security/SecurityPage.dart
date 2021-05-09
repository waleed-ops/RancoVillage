import 'package:flutter/material.dart';
import 'package:flutter_ecommerce123/Screens/security/accepted.dart';
import 'package:flutter_ecommerce123/commoncode/const.dart';
import 'package:flutter_ecommerce123/commoncode/Widgets.dart';
class SecurityPage extends StatelessWidget {
  static String id ='security';
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
            ReButton(hight: hight,text:'pending',colour: Colors.amber),
            SizedBox(
              height: hight * .01,
            ),
            ReButton(hight: hight,text: 'accepted',colour: Colors.green,navigator: Accepted.id,),
            SizedBox(
              height: hight * .01,
            ),
            ReButton(hight: hight,text: 'rejected',colour: Colors.red),
          ],
        ),
      ),
    );
  }
}
